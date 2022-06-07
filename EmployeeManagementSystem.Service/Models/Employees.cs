using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeManagementSystem.Service.Models
{
    public class Employees
    {
		public int EmployeeId { get; set; }
		public int EmployeeUniqueNumber { get; set; }
		public string EmployeeName { get; set; }
		public string Email { get; set; }
		public string Gender { get; set; }
		public int Age { get; set; }
		public string Address { get; set; }
		public string Position { get; set; }
		public DateTime DateOfJoining { get; set; }
		public int DepartmentId { get; set; }
	}
}
