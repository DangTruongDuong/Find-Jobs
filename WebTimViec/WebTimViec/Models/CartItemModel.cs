using FindJob.Model.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebTimViec.Models
{
    public class CartItemModel
    {
        public long JobId { get; set; }
        public string JobImage { get; set; }
        public string JobName { get; set; }
        public int Quanlity { get; set; }
        public string JobPosition { get; set; }
        public string JobSalary { get; set; }
        public string CvPath { get; set; }

        public CartItemModel()
        {

        }

        public CartItemModel(Jobs jobs)
        {
            JobId = jobs.Id;
            JobName = jobs.Name;
            Quanlity = 1;
            JobImage = jobs.ImageUrl;
            JobPosition = jobs.Position;
        }
    }
}
