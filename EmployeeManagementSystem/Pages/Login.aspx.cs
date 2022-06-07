using EmployeeManagementSystem.Service.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementSystem.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonSubmit_OnClick(object sender,EventArgs e)
        {
            //CheckUser();
        }
        private void CheckUser()
        {
            var userService = new UserServices();
        }
    }
}