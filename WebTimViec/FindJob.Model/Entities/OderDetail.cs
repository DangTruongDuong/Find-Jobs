using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FindJob.Model.Entities
{
    public class Orderdetail
    {
        public int Id { get; set; }
        public double? Price { get; set; }
        public int? Quantity { get; set; }
        public double? Total { get; set; }
        public int? JobId { get; set; }
        public int? OrderId { get; set; }
        public int? Status { get; set; }
        public Order Order { get; set; }
        public Jobs Job { get; set; }
    }
}
