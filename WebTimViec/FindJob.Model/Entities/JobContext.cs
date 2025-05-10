using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FindJob.Model.Entities
{
    public class JobContext : DbContext
    {
		public JobContext()
		{
		}

		public JobContext(DbContextOptions<JobContext> options) : base(options)
        {
        }

        public DbSet<User> Users { get; set; }
        public DbSet<Profile> Profiles { get; set; }
        public DbSet<Jobs> Jobs { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Orderdetail> OrderDetails { get; set; }
        public DbSet<Category> Categories { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>()
                .HasOne(u => u.Profile)
                .WithOne(p => p.User)
                .HasForeignKey<Profile>(p => p.UserId);

            modelBuilder.Entity<Orderdetail>()
                .HasOne(od => od.Order)
                .WithMany(o => o.Orderdetails)
                .HasForeignKey(od => od.OrderId);

            modelBuilder.Entity<Orderdetail>()
                .HasOne(od => od.Job)
                .WithMany()
                .HasForeignKey(od => od.JobId);

            modelBuilder.Entity<Jobs>()
                .HasOne(j => j.Category)
                .WithMany(c => c.Jobs)
                .HasForeignKey(j => j.CategoryId);
        }
    }
}
