using System;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    string recipe_name;
    string submitted_by;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Results.DataBind();
        }
    }

    protected void rSearchSubmit_Click(object sender, EventArgs e)
    {
        recipe_name = "'" + searchRecipes.Text + "'";
        submitted_by = "'1hs83kdtt'";
        searched.Text = recipe_name;

        BindGrid();
    }

    protected void cSearchSubmit_Click(object sender, EventArgs e)
    {
        submitted_by = "'" + searchContributers.Text + "'";
        recipe_name = "'1hs83kdtt'";
        searched.Text = submitted_by;

        BindGrid();
    }

    protected void BindGrid()
    {
        //Create SqlConnection
        SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["RecipesConnectionString"].ConnectionString);

        //Create a SqlDataAdapter
        SqlDataAdapter adapter;

        //Create a dataset to hold the data
        DataSet RecipeDataSet = new DataSet();

        adapter = new SqlDataAdapter("SELECT * FROM Recipe WHERE (RecipeName LIKE ('%' + " + recipe_name + " + '%') OR RecipeName LIKE ('%' + " + submitted_by + " + '%'))", connection);
        adapter.Fill(RecipeDataSet, "Recipe");
        ViewState["RecipeDataSet"] = RecipeDataSet;

        Results.DataSource = RecipeDataSet.Tables["Recipe"];
        Results.DataBind();

    }
}