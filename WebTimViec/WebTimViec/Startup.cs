using FindJob.IRepository;
using FindJob.Model.Entities;
using FindJob.Repository;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System.Management.Automation;

namespace WebTimViec
{
	public class Startup
	{
		public Startup(IConfiguration configuration)
		{
			Configuration = configuration;
		}

		public IConfiguration Configuration { get; }

		// This method gets called by the runtime. Use this method to add services to the container.
		public void ConfigureServices(IServiceCollection services)
		{
			services.AddControllersWithViews();
			services.AddDbContext<JobContext>(options =>
				options.UseSqlServer(Configuration.GetConnectionString("QLTVConnect"),
				b => b.MigrationsAssembly("WebTimViec")));

			services.AddSession();

			services.AddScoped(typeof(IGenericRepository<>), typeof(GenericRepository<>));
			services.AddScoped<IGenericRepository<Jobs>, GenericRepository<Jobs>>();
			services.AddControllersWithViews();
			services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme)
			 .AddCookie(options =>
	   {
		   options.LoginPath = "/Account/Login";
		   options.AccessDeniedPath = "/Account/AccessDenied";
	   });
		}

		// This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
		public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
		{
			if (env.IsDevelopment())
			{
				app.UseDeveloperExceptionPage();
			}
			else
			{
				app.UseExceptionHandler("/Home/Error");
			}
			app.UseAuthentication();
			app.UseAuthorization();
			app.UseStaticFiles();
			app.UseSession();
			app.UseRouting();

			app.UseAuthorization();

			app.UseEndpoints(endpoints =>
			{
				endpoints.MapControllerRoute(
					name: "default",
					pattern: "{controller=Home}/{action=Index}/{id?}");

				endpoints.MapControllerRoute(
				  name: "areas",
				  pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}");
			});

		}
	}
}
