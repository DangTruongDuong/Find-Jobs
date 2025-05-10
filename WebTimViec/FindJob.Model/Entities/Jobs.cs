using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FindJob.Model.Entities
{
    public class Jobs
    {
        public int Id { get; set; }
        public string ImageUrl { get; set; }
        public string Name { get; set; }
        public string JobCode { get; set; }
        public string Industry { get; set; }
        public decimal Salary { get; set; }
        public string Position { get; set; }
        public string Description { get; set; }
        public string Experience { get; set; }
        public string Require { get; set; }
        public ICollection<User> Users { get; set; } = new List<User>();
        public int CategoryId { get; set; }
        public Category Category { get; set; }

	}
}
