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
    public partial class UpdateEmp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            ShowDataToUpdate();
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            UpdateData();
        }

        private void UpdateData()
        {
            var employeeService = new EmployeeServices();

            try
            {
                var idText = Request.QueryString["id"];

                var employee = new Employees
                {
                    EmployeeId=int.Parse(idText),
                    //EmployeeUniqueNumber = int.Parse(TextBoxEmpNo.Text),
                    EmployeeName = TextBoxEmpName.Text,
                    Email = TextBoxEmail.Text,
                    //Gender = RadioButtonListGender.SelectedValue,
                    Age = int.Parse(TextBoxAge.Text),
                    Address = TextBoxAddress.Text,
                    Position = TextBoxPosition.Text,
                    DateOfJoining = DateTime.Parse(TextBoxDOJ.Text),
                    DepartmentId = int.Parse(TextBoxDeptId.Text)
                };

                employeeService.Update(employee);

                LabelStatus.ShowStatusMessage("Employee Updated Successfully...!");
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to update Employee");
            }
        }

        private void ShowDataToUpdate()
        {
            var idText = Request.QueryString["id"];
            try
            {
                var id = int.Parse(idText);

                var employeeService = new EmployeeServices();

                var employee = employeeService.GetById(id);

                if (employee == null)
                {
                    LabelStatus.ShowStatusMessage("Specified Id not found in database!");
                    return;
                }


                TextBoxEmpNo.Text = employee.EmployeeUniqueNumber.ToString();
                TextBoxEmpName.Text = employee.EmployeeName;
                TextBoxEmail.Text = employee.Email;
                RadioButtonListGender.Text = employee.Gender;
                TextBoxAge.Text = employee.Age.ToString();
                TextBoxAddress.Text = employee.Address;
                TextBoxPosition.Text = employee.Position;
                TextBoxDOJ.Text = employee.DateOfJoining.ToString();
                TextBoxDeptId.Text = employee.DepartmentId.ToString();


            }
            catch (Exception e)
            {
                LabelStatus.ShowStatusMessage("Id parameter not found!");
            }
        }

    }
}