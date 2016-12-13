using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.ApplicationServices;


public partial class Users : System.Web.UI.Page
{
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    if (!Page.IsPostBack)
    //        DisplayRolesInGrid();
    //}

    //protected void createRole_Click(object sender, EventArgs e)
    //{
    //    string newRoleName = Role.Text.Trim();

    //    if (!Role.RoleExists(newRoleName))
    //        // Create the role
    //        Roles.CreateRole(newRoleName);

    //    Role.Text = string.Empty;
    //}

    //private void DisplayRolesInGrid()
    //{
    //    RoleList.DataSource = Roles.GetAllRoles();
    //    RoleList.DataBind();
    //}
}