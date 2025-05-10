using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FindJob.Model.Entities
{
    public class Profile
    {
        public int Id { get; set; }
        public string Address { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Phone { get; set; }
        public int UserId { get; set; }
        public User User { get; set; }
    }
}
