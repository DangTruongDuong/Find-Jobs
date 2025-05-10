using Microsoft.AspNetCore.Mvc;
using FindJob.Model.Entities;
using FindJob.IRepository;
using System;
using System.Linq;
using System.Threading.Tasks;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WebTimViec.Areas.Admin.Controllers
{
    [Area("Administrator")]
    public class HomeAdminController : Controller
    {
        private readonly IGenericRepository<Jobs> job;

        public HomeAdminController(IGenericRepository<Jobs> job)
        {
            this.job = job;
        }

        public IActionResult Index()
        {
            var jobs = job.GetAll().ToList();
            return View(jobs);
        }
        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Jobs jobs)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    job.Insert(jobs);
                    return Redirect("/Administrator/HomeAdmin/Index");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", ex.Message);
            }
            return View(jobs);
        }

        [HttpPost]
        public IActionResult Delete(int? id)
        {
            try
            {
                if (id == null)
                {
                    return NotFound();
                }

                var jobToDelete = job.GetById(id.Value);

                if (jobToDelete == null)
                {
                    return NotFound();
                }

                job.Delete(id.Value);

                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", $"Lỗi: {ex.Message}");
                return RedirectToAction("Index");
            }
        }

        [HttpGet]
        public IActionResult Edit(int id)
        {
            var jobToEdit = job.GetById(id);
            if (jobToEdit == null)
            {
                return NotFound();
            }
            return View(jobToEdit);
        }

        [HttpPost]
        public IActionResult Edit(Jobs updatedJob)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    job.Update(updatedJob);
                    return RedirectToAction("Index");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", ex.Message);
            }
            return View(updatedJob);
        }
    }
}