using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Recipe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    protected void BindGrid()
    {
        //Create SqlConnection
        SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["RecipesConnectionString"].ConnectionString);

        //Create a SqlDataAdapter
        SqlDataAdapter adapter;

        //Create a dataset to hold the data
        DataSet RecipeDataSet = new DataSet();


        if (ViewState["RecipeDataSet"] == null)
        {
            adapter = new SqlDataAdapter("Select * from Recipe", connection);
            adapter.Fill(RecipeDataSet, "Recipe");
            ViewState["RecipeDataSet"] = RecipeDataSet;

        }
        else
        {
            RecipeDataSet = (DataSet)ViewState["RecipeDataSet"];
        }

        //GridView1.DataSource = RecipeDataSet.Tables["Recipe"]; < Disconnected architecture; coding in the background rather than in design
        GridView1.DataBind();

    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();
    }



    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["RecipesConnectionString"].ConnectionString);

        //Create a SqlDataAdapter
        SqlDataAdapter adapter;

        //Create a dataset to hold the data
        DataSet RecipeDataSet = new DataSet();

        adapter = new SqlDataAdapter("Select Recipe_Id,RecipeName,Contributer from Recipe", connection);
        adapter.Fill(RecipeDataSet, "Recipe");

        DataRow datarow = (DataRow)RecipeDataSet.Tables["Recipe"].Rows[e.RowIndex];
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

        datarow["RecipeName"] = ((TextBox)row.Cells[0].Controls[0]).Text;
        datarow["Contributer"] = ((TextBox)row.Cells[1].Controls[0]).Text;

        SqlCommandBuilder commandBuilder = new SqlCommandBuilder(adapter);
        adapter.Update(RecipeDataSet.Tables["Recipe"]);
        ViewState["RecipeDataSet"] = RecipeDataSet;

        GridView1.EditIndex = -1;
        GridView1.DataSource = RecipeDataSet;
        GridView1.DataBind();

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGrid();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
