using FindJob.Model.Entities;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebTimViec.Controllers
{
    public class ActionController : Controller
    {
        private readonly JobContext context;

        public ActionController(JobContext context)
        {
            this.context = context;
        }

        public IActionResult Home()
        {
            return View();
        }

        public IActionResult Index()
        {
            var jobs = context.Jobs.ToList();
            return View(jobs);
        }

        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Jobs J)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    context.Jobs.Add(J);
                    context.SaveChanges();
                    return Redirect("/Administrator/HomeAdmin/Index");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", ex.Message);
            }
            return View(J);
        }

        public IActionResult Delete(int id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var jobs = context.Jobs.Find(id);

            if (jobs != null)
            {
                context.Jobs.Remove(jobs);
                context.SaveChanges();
            }

            return Redirect("/Administrator/HomeAdmin/Index");
        }

        [HttpGet]
        public IActionResult Edit(int id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var jobs = context.Jobs.Find(id);

            if (jobs == null)
            {
                return NotFound();
            }

            return View(jobs);
        }

        [HttpPost]
        public IActionResult Edit(Jobs J)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    context.Update(J);
                    context.SaveChanges();
                    return Redirect("/Administrator/HomeAdmin/Index");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", ex.Message);
            }
            return View(J);
        }

        // Thêm phương thức Search
        [HttpGet]
        public IActionResult Search()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Search(string searchTerm)
        {
            var results = context.Jobs
                .Where(j => string.IsNullOrEmpty(searchTerm) ||
                            j.Name.Contains(searchTerm) ||
                            j.Industry.Contains(searchTerm))
                .ToList();
            return View("SearchResults", results);
        }
    }
}
