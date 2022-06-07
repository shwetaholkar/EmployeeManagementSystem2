using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeManagementSystem.Service.Models
{
    public class Jobs
    {
        public int JobId { get; set; }
        public string JobTitle { get; set; }
        public int NumberOfPositions { get; set; }
        public string JobLocation { get; set; }
        public string SalaryRange { get; set; }
    }
}
