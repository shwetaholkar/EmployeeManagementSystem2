using EmployeeManagementSystem.Service.Models;
using EmployeeManagementSystem.Service.Services;
using EmployeeManagementSystem.Service.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementSystem.Pages.Employee
{
    public partial class AddEmp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonCreate_OnClick(object sender, EventArgs e)
        {
            CreateData();
        }

        private void CreateData()
        {
            var employeeService = new EmployeeServices();

            try
            {
                var employee = new Employees
                {
                    EmployeeUniqueNumber=int.Parse(TextBoxEmpNo.Text),
                    EmployeeName=TextBoxEmpName.Text,
                    Email = TextBoxEmail.Text,
                    Gender = RadioButtonListGender.SelectedValue,
                    Age = int.Parse(TextBoxAge.Text),
                    Address = TextBoxAddress.Text,
                    Position=TextBoxPosition.Text,
                    DateOfJoining = DateTime.Parse(TextBoxDOJ.Text),
                    DepartmentId =int.Parse(TextBoxDeptId.Text)
                   
                };

                employeeService.Add(employee);

                LabelStatus.ShowStatusMessage("Employee added successfully...!");
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to add Employee.");
            }
        }

    }
}