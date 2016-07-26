//using DotNet.Highcharts;
//using DotNet.Highcharts.Helpers;
//using DotNet.Highcharts.Options;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Models;

namespace RMS.Repository
{
    public partial class Faculty_Ranking : System.Web.UI.Page
    {
        public string chartData_Cat { get; set; }
        public string chartData_Val { get; set; }

        #region Page Load events

        #region Page load + DDL Bind

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDDLs();
            }
        }

        /// <summary>
        /// Binds year and college values to their appropriate dropdown lists
        /// </summary>
        protected void BindDDLs()
        {
            #region Time span - From / To DDL
            for (int i = DateTime.Now.Year - 11; i < DateTime.Now.Year; i++)
                ddlFromYear.Items.Add(new ListItem(i.ToString(), i.ToString()));

            for (int i = DateTime.Now.Year; i >= DateTime.Now.Year - 10; i--)
                ddlToYear.Items.Add(new ListItem(i.ToString(), i.ToString()));

            #endregion

            #region College
            ddlCollege.DataSource = DepartmentController.getAllColleges();
            ddlCollege.DataTextField = clsDepartment.Department_Name;
            ddlCollege.DataValueField = clsDepartment.Department_Code;
            ddlCollege.DataBind();
            ddlCollege.Items.Insert(0, new ListItem("--All--", "All"));
            #endregion

            ddlDepartment.Items.Insert(0, new ListItem("Please select a College...", "0"));

        }

        #endregion

        #region DDL -> Selected Index Changed


        /// <summary>
        /// Retrieves the department names under the college selected and binds them to the department dropdown list
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlCollege_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCollege.SelectedItem.Value != "0")
            {
                ddlDepartment.Enabled = true;
                ddlDepartment.DataSource = DepartmentController.getDepartmentsByCollege(ddlCollege.SelectedItem.Value);
                ddlDepartment.DataTextField = clsDepartment.Department_Name;
                ddlDepartment.DataValueField = clsDepartment.Department_Code;
                ddlDepartment.DataBind();
                ddlDepartment.Items.Insert(0, new ListItem("--All--", "All"));
            }
            else
            {
                ddlDepartment.Items.Clear();
                ddlDepartment.Enabled = false;
            }
        }

        /// <summary>
        /// Changes the values of the dropdown lists corresponding to year range based on the value selected in the Period dropdown list
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlTimeSpan_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (ddlTimeSpan.SelectedItem.Value.Equals("Last5Years"))
                {
                    rbPeriod.Checked = false;
                    rbPeriodRange.Checked = true;

                    ddlFromYear.SelectedValue = ((DateTime.Now.Year - 5).ToString());
                    ddlToYear.SelectedValue = (DateTime.Now.Year.ToString());
                }
                else if (ddlTimeSpan.SelectedItem.Value.Equals("LastYear"))
                {
                    rbPeriod.Checked = false;
                    rbPeriodRange.Checked = true;

                    ddlFromYear.SelectedValue = ((DateTime.Now.Year - 1).ToString());
                    ddlToYear.SelectedValue = (DateTime.Now.Year.ToString());
                }
                else if (ddlTimeSpan.SelectedItem.Value.Equals("All"))
                {
                    rbPeriod.Checked = true;
                    rbPeriodRange.Checked = false;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion

        #endregion

        #region Button Click

        /// <summary>
        /// Retrieves and displays a table of faculty publication or citation count, divided by year, based on the report configuration
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            #region First Option - All Years
            if (rbPeriod.Checked)
            {
                if (ddlCollege.SelectedItem.Value.Equals("All"))
                {
                    if (rbPublication.Checked)
                    {
                        dt = Publication_ISIController.GetFacultyStatsForPublicationCountByYearForAllColleges();
                    }
                    else
                    {
                        dt = Publication_ISIController.GetFacultyStatsForCitationCountByYearForAllColleges();
                    }
                }
                else if (ddlDepartment.SelectedValue.Equals("All"))
                {
                    if (rbPublication.Checked)
                    {
                        dt = Publication_ISIController.GetFacultyStatsForPublicationCountByYearForSingleCollege(ddlCollege.SelectedItem.Value);
                    }
                    else
                    {
                        dt = Publication_ISIController.GetFacultyStatsForCitationCountByYearForSingleCollege(ddlCollege.SelectedItem.Value);
                    }
                }
                else
                {
                    if (rbPublication.Checked)
                    {
                        dt = Publication_ISIController.GetFacultyStatsForPublicationCountByYearForSingleDepartment(ddlDepartment.SelectedItem.Value);
                    }
                    else
                    {
                        dt = Publication_ISIController.GetFacultyStatsForCitationCountByYearForSingleDepartment(ddlDepartment.SelectedItem.Value);
                    }
                }
            }
            #endregion

            #region Second Option - Time Period
            else
            {
                int fromYear = int.Parse(ddlFromYear.SelectedItem.Value);
                int toYear = int.Parse(ddlToYear.SelectedItem.Value);
                if (ddlCollege.SelectedItem.Value.Equals("All"))
                {
                    if (rbPublication.Checked)
                    {
                        dt = Publication_ISIController.GetFacultyStatsForPublicationCountByYearForAllColleges(fromYear, toYear);
                    }
                    else
                    {
                        dt = Publication_ISIController.GetFacultyStatsForCitationCountByYearForAllColleges(fromYear, toYear);
                    }
                }
                else if (ddlDepartment.SelectedValue.Equals("All"))
                {
                    if (rbPublication.Checked)
                    {
                        dt = Publication_ISIController.GetFacultyStatsForPublicationCountByYearForSingleCollege(ddlCollege.SelectedItem.Value, fromYear, toYear);
                    }
                    else
                    {
                        dt = Publication_ISIController.GetFacultyStatsForCitationCountByYearForSingleCollege(ddlCollege.SelectedItem.Value, fromYear, toYear);
                    }
                }
                else
                {
                    if (rbPublication.Checked)
                    {
                        dt = Publication_ISIController.GetFacultyStatsForPublicationCountByYearForSingleDepartment(ddlDepartment.SelectedItem.Value, fromYear, toYear);
                    }
                    else
                    {
                        dt = Publication_ISIController.GetFacultyStatsForCitationCountByYearForSingleDepartment(ddlDepartment.SelectedItem.Value, fromYear, toYear);
                    }
                }
            }
            #endregion           

            rptFacultyRanking.DataSource = dt;
            rptFacultyRanking.DataBind();
        }

        #endregion

        /// <summary>
        /// Fills the faculty ranking table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void rptFacultyRanking_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {           
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView drv = e.Item.DataItem as DataRowView;
                
                if (e.Item.ItemIndex == 0)
                {
                    StringBuilder strBldrHeader = new StringBuilder();
                    strBldrHeader.AppendLine("<thead>");
                    strBldrHeader.AppendLine("    <th>ID</th>");
                    strBldrHeader.AppendLine("    <th>Name</th>");                   
                    for (int i = 2; i < drv.Row.Table.Columns.Count; i++)
                    {
                        if (drv.Row.Table.Columns[i].ColumnName.Substring(1).All(Char.IsDigit))
                            strBldrHeader.AppendLine("    <th>" + drv.Row.Table.Columns[i].ColumnName.Substring(1) + "</th>");
                        else
                        {
                            strBldrHeader.AppendLine("    <th>Department</th>");
                        }
                    }
                    strBldrHeader.AppendLine("</thead>");
                    ltrlTableHeader.Text = strBldrHeader.ToString();
                }
                ((Literal)e.Item.FindControl("ltrlKFUPMID")).Text = (DataBinder.Eval(e.Item.DataItem, "KFUPMID")).ToString();
                ((Literal)e.Item.FindControl("ltrlFacultyName")).Text = (DataBinder.Eval(e.Item.DataItem, "Full_Name")).ToString();

                StringBuilder strBldr = new StringBuilder();

                for (int i = 2; i < drv.Row.Table.Columns.Count; i++)
                {
                    strBldr.Append("<td>" + drv[i] + "</td>");
                }
                ((Literal)e.Item.FindControl("ltrlYearCols")).Text = strBldr.ToString();
            }
        }
    }
}
