using Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RMS.Profile.Pages
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(IsPostBack))
            {
                DataRow row = getFacultyData();
                ISIPublication.Text = row["Publication_ISI_Count"].ToString();
                NonISIPublication.Text = row["Publication_NonISI_Count"].ToString();
                book.Text = row["Book_Count"].ToString();
                patent.Text = row["Patent_Count"].ToString();
                conference.Text = row["Conference_Count"].ToString();
                project.Text = row["Project_Count"].ToString();
            }
        }

        private DataRow getFacultyData()
        {
            int id = 6810990; //default value to test the code
            DataTable table = Summary.repositoryItemCountsByFaculty(id);
            return table.Rows[0];
        }
    }
}