using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FindJob.Model.Entities
{
    public class Order
    {
        public int Id { get; set; }
        public string Fullname { get; set; }
        public string Email { get; set; }
        public string Phonenumber { get; set; }
        public string Address { get; set; }
        public string Note { get; set; }
        public DateTime? Orderdate { get; set; }
        public int? Status { get; set; }
        public double? Total { get; set; }
        public int? UserId { get; set; }
        public User User { get; set; }
        public ICollection<Orderdetail> Orderdetails { get; set; } = new HashSet<Orderdetail>();
    }
}
