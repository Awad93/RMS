using Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Text;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RMS.Repository.Admin.Reports
{
    public partial class Citations : System.Web.UI.Page
    {
        public string chartData_Cat { get; set; } //Defines the chart categories
        public string chartData_Val { get; set; } //Defines the chart values

        #region Page Load events

        #region Page load + DDL Bind

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    BindDDLs();
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        /// <summary>
        /// Binds all data needed for page load including:
        /// "from year" drop down list with years, 
        /// "to year" drop down list with years and 
        /// "colleges" drop down list with KFUPM's colleges
        /// </summary>
        protected void BindDDLs()
        {
            try
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
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }

        }

        #endregion

        #region DDL -> Selected Index Changed

        /// <summary>
        /// Handles the SelectedIndexChanged event of "colleges" drop down list
        /// which binds "departments" drop down list with college's departments if college is selected from "colleges" drop down list
        /// otherwise "departments" drop down list is cleared and disabled
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlCollege_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
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
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        /// <summary>
        ///  Handles the SelectedIndexChanged event of "time span" drop down list
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlTimeSpan_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ///<summary>
                ///changes selected year to (current year - 5) of "from year" drop down list and
                ///changes selected year to (current year) of "to year" drop down list
                ///if "Last 5 Years" item is selected of "time span" drop down list
                /// </summary>
                if (ddlTimeSpan.SelectedItem.Value.Equals("Last5Years"))
                {
                    rbPeriod.Checked = false;
                    rbPeriodRange.Checked = true;

                    ddlFromYear.SelectedValue = ((DateTime.Now.Year - 5).ToString());
                    ddlToYear.SelectedValue = (DateTime.Now.Year.ToString());
                }

                ///<summary>
                ///changes selected year to last year of "from year" drop down list and
                ///changes selected year to current year of "to year" drop down list
                ///if "Last Year" item is selected of "time span" drop down list
                /// </summary>
                else if (ddlTimeSpan.SelectedItem.Value.Equals("LastYear"))
                {
                    rbPeriod.Checked = false;
                    rbPeriodRange.Checked = true;

                    ddlFromYear.SelectedValue = ((DateTime.Now.Year - 1).ToString());
                    ddlToYear.SelectedValue = (DateTime.Now.Year.ToString());
                }
                ///<summary>
                ///if "All Years" item is selected of "time span" drop down list
                ///then, set radio button to checked for "time span" drop down list
                /// </summary>
                else if (ddlTimeSpan.SelectedItem.Value.Equals("All"))
                {
                    rbPeriod.Checked = true;
                    rbPeriodRange.Checked = false;
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }

        }

        #endregion

        #endregion

        #region Button Click

        /// <summary>
        /// Handles click event for "Generate" button
        /// which generate a chart of Citation times according to some parameters
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                string timePeriod;      //specifies the time period in chart's title
                string series;          //specifies the series of the chart


                #region First Option - All Years

                ///<Summary>
                ///If all years radio button is checked, then retrieve Citattion times for single college, single department or KFUPM of all years
                /// </Summary>
                if (rbPeriod.Checked)
                {
                    timePeriod = "All Years";
                    if (ddlCollege.SelectedItem.Value.Equals("All"))
                    {
                        dt = Publication_ISIController.getCitedTimesForAllColleges();
                        series = "All Colleges";
                    }
                    else if (ddlDepartment.SelectedItem.Value.Equals("All"))
                    {
                        dt = Publication_ISIController.getCitedTimesForSingleCollege(ddlCollege.SelectedItem.Value);
                        series = ddlCollege.SelectedItem.Text;
                    }
                    else {
                        dt = Publication_ISIController.getCitedTimesForSingleDepartment(ddlDepartment.SelectedItem.Value);
                        series = ddlDepartment.SelectedItem.Text;
                    }
                }
                #endregion
                #region Second Option - Time Period

                ///<Summary>
                ///If specified period of years radio button is checked,
                ///then retrieve Citattion times for single college, single department or KFUPM of 
                ///the specified years in "FromYear" and "ToYear" drop down list
                /// </Summary>
                else
                {
                    timePeriod = ddlFromYear.SelectedItem.Text + " - " + ddlToYear.SelectedItem.Text;
                    if (ddlCollege.SelectedItem.Value.Equals("All"))
                    {
                        dt = Publication_ISIController.getCitedTimesForAllColleges(int.Parse(ddlFromYear.SelectedItem.Value), int.Parse(ddlToYear.SelectedItem.Value));
                        series = "All Colleges";
                    }
                    else if (ddlDepartment.SelectedItem.Value.Equals("All"))
                    {
                        dt = Publication_ISIController.getCitedTimesForSingleCollege(ddlCollege.SelectedItem.Value, int.Parse(ddlFromYear.SelectedItem.Value), int.Parse(ddlToYear.SelectedItem.Value));
                        series = ddlCollege.SelectedItem.Text;
                    }
                    else {
                        dt = Publication_ISIController.getCitedTimesForSingleDepartment(ddlDepartment.SelectedItem.Value, int.Parse(ddlFromYear.SelectedItem.Value), int.Parse(ddlToYear.SelectedItem.Value));
                        series = ddlDepartment.SelectedItem.Text;
                    }

                }
                #endregion

                #region Get x/y coordinate values of the chart from Database
                List<int> _dataCat = new List<int>();
                List<int> _data1Val = new List<int>();
                foreach (DataRow dr1 in dt.Rows)
                {
                    _dataCat.Add((int)dr1["publication_year"]);
                    _data1Val.Add((int)dr1["Time_Cited"]);

                }
                JavaScriptSerializer jss = new JavaScriptSerializer();
                chartData_Cat = jss.Serialize(_dataCat); //this make your list in jSON format like [88,99,10]
                chartData_Val = jss.Serialize(_data1Val);
                #endregion

                string strChart = CreateChart("All Number of Citations (" + timePeriod + ")", "Years", "Number of Citation", series);

                ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "myFunction", strChart, true);

                divResults.Style.Add("display", "block");
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        /// <summary>
        /// Creates javascript script that is registered by ScriptManager
        /// which will create the chart
        /// </summary>
        /// <param name="strChartTitle">Specifies chart title</param>
        /// <param name="strXAxisTitle">Specifies x-axis title of the chart</param>
        /// <param name="strYAxisTitle">Specifies y-axis title of the chart</param>
        /// <param name="strSeriesName">Specifies series name of the chart</param>
        /// <returns></returns>
        protected string CreateChart(string strChartTitle, string strXAxisTitle, string strYAxisTitle, string strSeriesName)
        {
            try
            {
                StringBuilder sb = new StringBuilder();

                sb.AppendLine("         <!-- HIGHCHART SCRIPT STARTS HERE --> ");
                sb.AppendLine("                 var chart = new Highcharts.Chart({");
                sb.AppendLine("                                                 chart: {  ");
                sb.AppendLine("                                                         type: 'column' ,");
                sb.AppendLine("                                                         renderTo: '"+ divResults.ClientID + "'");
                sb.AppendLine("                                                     },  ");
                sb.AppendLine("                                                 title: {  ");
                sb.AppendLine("                                                         text: '" + strChartTitle + "'  ");
                sb.AppendLine("                                                     },  ");
                sb.AppendLine("                                                 xAxis: {  ");
                sb.AppendLine("                                                         title: {  ");
                sb.AppendLine("                                                                 text: '" + strXAxisTitle + "'");
                sb.AppendLine("                                                             }, ");
                sb.AppendLine("                                                         labels:{");
                sb.AppendLine("                                                                 rotation: 0,");
                sb.AppendLine("                                                                 y:15");
                sb.AppendLine("                                                             },");
                sb.AppendLine("                                                         categories: " + chartData_Cat);
                sb.AppendLine("                                                     },  ");
                sb.AppendLine("                                                 yAxis: {  ");
                sb.AppendLine("                                                         linewidth : 1,");
                sb.AppendLine("                                                         gridLineWidth: 1,");
                sb.AppendLine("                                                         min: 0,  ");
                sb.AppendLine("                                                         title: {  ");
                sb.AppendLine("                                                                 text: '" + strYAxisTitle + "'  ");
                sb.AppendLine("                                                             }");
                sb.AppendLine("                                                     },  ");
                sb.AppendLine("                                                 tooltip: {  ");
                sb.AppendLine("                                                         headerFormat: '<span style=\"font-size:10px;\">{point.key}</span><table>',  ");
                sb.AppendLine("                                                         pointFormat: '<tr><td style=\"color:{series.color};padding:0\">{series.name}: </td>' + '<td style=\"padding:0\"><b>{point.y} </b></td></tr>',  ");
                sb.AppendLine("                                                         footerFormat: '</table>',  ");
                sb.AppendLine("                                                         shared: true,  ");
                sb.AppendLine("                                                         useHTML: true  ");
                sb.AppendLine("                                                     },  ");
                sb.AppendLine("                                                 plotOptions: {  ");
                sb.AppendLine("                                                         column: {  ");
                sb.AppendLine("                                                                 pointPadding: 0,  ");
                sb.AppendLine("                                                                 borderWidth: 0  ");
                sb.AppendLine("                                                             }");
                sb.AppendLine("                                                     },");
                sb.AppendLine("                                                 series: [{");
                sb.AppendLine("                                                         name: '" + strSeriesName + "',");
                sb.AppendLine("                                                         data: " + chartData_Val + ",");
                sb.AppendLine("                                                         dataLabels: {");
                sb.AppendLine("                                                                     enabled: true,");
                sb.AppendLine("                                                                     rotation: 0,");
                sb.AppendLine("                                                                     color: '#000000',");
                sb.AppendLine("                                                                     align: 'top',");
                sb.AppendLine("                                                                     x: 1,");
                sb.AppendLine("                                                                     y: 5");
                sb.AppendLine("                                                                 }");
                sb.AppendLine("                                                         }]    ");
                sb.AppendLine("                                     });  ");
                sb.AppendLine("             <!-- HIGHCHART SCRIPT ENDS HERE -->");

                return sb.ToString();
            }
            catch (Exception ex)
            {
                return lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        #endregion
    }
}