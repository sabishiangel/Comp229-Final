using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddRecipe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void submitButton_Click(object sender, EventArgs e)
    {
        string recipe_name = "'" + recipeName.Text + "'";
        string submitted_by = "'" + contributer.Text + "'";
        string category_name = "'" + category.Text + "'";
        string cook_time = "'" + cookingTime.Text + "'";
        int portions = Convert.ToInt32(portionSize.Text);
        string cuisine_index = "'" + cuisine.Text + "'";
        string private_recipe = "'" + privateConfirmation.Checked.ToString() + "'";
        string recipe_text = "'" + recipeDescription.Text.Replace("'", "''") + "'";
        //Get Connection string stored in Web.Config and store in local variable
        string connectionstring = WebConfigurationManager.ConnectionStrings["RecipesConnectionString"].ConnectionString;

        //Create SqlConnection object
        SqlConnection connection = new SqlConnection(connectionstring);

        //Create query 
        string query = "insert into Recipe (RecipeName, Contributer, Category, CookingTime, Portions, Cuisine, PrivateC, Description) values(" + recipe_name + "," + submitted_by + "," + category_name + "," + cook_time + "," + portions + "," + cuisine_index + "," + private_recipe + "," + recipe_text + ")";

        //Create SqlCommand object
        SqlCommand command = new SqlCommand(query, connection);

        //Open Connection
        connection.Open();

        int rows = command.ExecuteNonQuery();

        if (rows == 1)
        {
            AddConfirm.Text = "Successfully added";

        }
    }
}