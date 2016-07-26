using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Models;
using System.Diagnostics;

namespace RMS.Repository
{
    public partial class Publications : System.Web.UI.Page
    {
        public string chartData_Cat { get; set; }
        public string chartData_Val { get; set; }
        int publication_year = 0;
        int numOfPublications;

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

        protected void ClearResultsSection_Repeater()
        {
            try
            {
                rptISIArticles.DataSource = null;
                rptISIArticles.DataBind();

                rptNonISI.DataSource = null;
                rptNonISI.DataBind();
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        protected void rblClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ClearResultsSection_Repeater();

                if (rblClass.SelectedItem.Value.Equals("ISI"))
                {
                    divType_ISI.Attributes.Add("class", divType_ISI.Attributes["class"].Replace("hide", "show"));

                    divType_NonISI.Attributes.Add("class", divType_NonISI.Attributes["class"].Replace("show", "hide"));
                }
                else
                {
                    divType_NonISI.Attributes.Add("class", divType_NonISI.Attributes["class"].Replace("hide", "show"));

                    divType_ISI.Attributes.Add("class", divType_ISI.Attributes["class"].Replace("show", "hide"));
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        protected void ddlCollege_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ClearResultsSection_Repeater();

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

        protected void ddlTimeSpan_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ClearResultsSection_Repeater();

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
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        #endregion

        #endregion

        #region Button Click

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                h3Results1.InnerText = "Journal = '" + rblClass.SelectedItem.Text + "'";
                divResults.Style.Add("display", "block");

                #region ISI
                if (rblClass.SelectedItem.Value.Equals("ISI"))
                {
                    List<Publication_ISIController> listPubISI = new List<Publication_ISIController>();

                    if (rbPeriod.Checked)
                    {
                        dt = Publication_ISIController.GetPubStatsForISIPublicationsAllCollegesAllYears(rblType_ISI.SelectedItem.Value);
                        listPubISI = Publication_ISIController.getISIPublicationsAll(rblType_ISI.SelectedItem.Value);

                        h4Results2.InnerText = "ALL Colleges : All Years : Doc. Type = '" + rblType_ISI.SelectedItem.Text + "'";
                    }
                    else if (rbPeriodRange.Checked)
                    {
                        dt = Publication_ISIController.GetPubStatsForISIPublicationsAllCollegesAllYears(rblType_ISI.SelectedItem.Value,
                            ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);

                        listPubISI = Publication_ISIController.getISIPublicationsAllCollegesByDocType(rblType_ISI.SelectedItem.Value,
                            ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);

                        h4Results2.InnerText = "ALL Colleges : Period = '" + ddlFromYear.SelectedItem.Value + " - " + ddlToYear.SelectedItem.Value + "' : Doc. Type = '" + rblType_ISI.SelectedItem.Text + "'";
                    }
                    if (ddlCollege.SelectedItem.Value != ("All") && ddlDepartment.SelectedItem.Value.Equals("All"))
                    {
                        dt = Publication_ISIController.GetPubStatsForISIPublicationsForSingleCollege(ddlCollege.SelectedItem.Value, rblType_ISI.SelectedItem.Value,
                            ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);

                        listPubISI = Publication_ISIController.getISIPublicationsSingleCollegeByDocType(ddlCollege.SelectedItem.Value, rblType_ISI.SelectedItem.Value,
                            ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);

                        h4Results2.InnerText = "College = '" + ddlCollege.SelectedItem.Value + "' : Period = '" + ddlFromYear.SelectedItem.Value + "' - " + ddlToYear.SelectedItem.Value + " : Doc. Type = '" + rblType_ISI.SelectedItem.Text + "'";
                    }
                    else if (ddlCollege.SelectedItem.Value != ("All") && ddlDepartment.SelectedItem.Value != "All")
                    {
                        dt = Publication_ISIController.GetPubStatsForISIPublicationsForSingleDepartment(ddlDepartment.SelectedItem.Value, rblType_ISI.SelectedItem.Value,
                            ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);

                        listPubISI = Publication_ISIController.getISIPublicationsSingleCollegeByDocType(ddlDepartment.SelectedItem.Value, rblType_ISI.SelectedItem.Value,
                            ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);

                        h4Results2.InnerText = "Department = '" + ddlDepartment.SelectedItem.Value + "' : Period = '" + ddlFromYear.SelectedItem.Value + "' - " + ddlToYear.SelectedItem.Value + " : Doc. Type = '" + rblType_ISI.SelectedItem.Text + "'";
                    }

                    numOfPublications = (int)listPubISI.Count;
                    rptISIArticles.DataSource = listPubISI;
                    rptISIArticles.DataBind();
                }
                #endregion
                #region Non-ISI
                else if (rblClass.SelectedItem.Value.Equals("NonISI"))
                {
                    List<Publication_NonISIController> listPubNonISI = new List<Publication_NonISIController>();

                    if (rbPeriod.Checked)
                    {
                        dt = Publication_NonISIController.GetPubStatsForNonISIPublicationsAllCollegesAllYears(rblType_NonISI.SelectedItem.Value);
                        listPubNonISI = Publication_NonISIController.getNonISIPublicationsAll(rblType_NonISI.SelectedItem.Value);

                        h4Results2.InnerText = "ALL Colleges : All Years : Doc. Type = '" + rblType_NonISI.SelectedItem.Text + "'";
                    }
                    else if (rbPeriodRange.Checked)
                    {
                        dt = Publication_NonISIController.GetPubStatsForNonISIPublicationsAllCollegesAllYears(rblType_NonISI.SelectedItem.Value,
                            ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);

                        listPubNonISI = Publication_NonISIController.getNonISIPublicationsByCollege(rblType_NonISI.SelectedItem.Value,
                            ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);

                        h4Results2.InnerText = "ALL Colleges : Period = '" + ddlFromYear.SelectedItem.Value + " - " + ddlToYear.SelectedItem.Value + "' : Doc. Type = '" + rblType_NonISI.SelectedItem.Text + "'";

                    }
                    if (ddlCollege.SelectedItem.Value != ("All") && ddlDepartment.SelectedItem.Value.Equals("All"))
                    {
                        dt = Publication_NonISIController.GetPubStatsForNonISIPublicationsForSingleCollege(ddlCollege.SelectedItem.Value, rblType_NonISI.SelectedItem.Value,
                        ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);

                        listPubNonISI = Publication_NonISIController.getNonISIPublicationsByCollege(ddlCollege.SelectedItem.Value, rblType_NonISI.SelectedItem.Value,
                        ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);

                        h4Results2.InnerText = "College = '" + ddlCollege.SelectedItem.Value + "' : Period = '" + ddlFromYear.SelectedItem.Value + "' - " + ddlToYear.SelectedItem.Value + " : Doc. Type = '" + rblType_NonISI.SelectedItem.Text + "'";
                    }
                    else if (ddlCollege.SelectedItem.Value != ("All") && ddlDepartment.SelectedItem.Value != "All")
                    {
                        dt = Publication_NonISIController.GetPubStatsForNonISIPublicationsForSingleDepartment(ddlDepartment.SelectedItem.Value, rblType_NonISI.SelectedItem.Value,
                        ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);

                        listPubNonISI = Publication_NonISIController.getNonISIPublicationsByDepartment(ddlDepartment.SelectedItem.Value, rblType_NonISI.SelectedItem.Value,
                        ddlFromYear.SelectedItem.Value, ddlToYear.SelectedItem.Value);


                        h4Results2.InnerText = "College = '" + ddlCollege.SelectedItem.Value + "' : Period = '" + ddlFromYear.SelectedItem.Value + "' - " + ddlToYear.SelectedItem.Value + " : Doc. Type = '" + rblType_NonISI.SelectedItem.Text + "'";

                    }

                    numOfPublications = (int)listPubNonISI.Count;
                    rptNonISI.DataSource = listPubNonISI;
                    rptNonISI.DataBind();
                }
                #endregion

                #region Create Chart

                List<int> _dataCat = new List<int>();
                List<int> _data1Val = new List<int>();
                foreach (DataRow dr1 in dt.Rows)
                {
                    _dataCat.Add(Convert.ToInt32(dr1["publication_year"]));
                    _data1Val.Add(Convert.ToInt32(dr1["Publication_Count"]));
                }
                JavaScriptSerializer jss = new JavaScriptSerializer();
                chartData_Cat = jss.Serialize(_dataCat); //this make your list in jSON format like [88,99,10]
                chartData_Val = jss.Serialize(_data1Val);

                string strChart = CreateChart("All College Publications - All Years ", "123", "Years", "Publication Count", "All Colleges");

                ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "myFunction", strChart, true);

                #endregion

            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        #endregion

        #region Create Chart

        protected string CreateChart(string strChartTitle, string strChartSubTitle, string strXAxisTitle, string strYAxisTitle, string strSeriesName)
        {
            StringBuilder sb = new StringBuilder();
            try
            {

                sb.AppendLine("         <!-- HIGHCHART SCRIPT STARTS HERE --> ");
                sb.AppendLine("                 var chart = new Highcharts.Chart({");
                sb.AppendLine("                                                 chart: {  ");
                sb.AppendLine("                                                         type: 'column' ,");
                sb.AppendLine("                                                         renderTo: 'container_highchart'");
                sb.AppendLine("                                                     },  ");
                sb.AppendLine("                                                 title: {  ");
                sb.AppendLine("                                                         text: '" + strChartTitle + "'  ");
                sb.AppendLine("                                                     },  ");
                sb.AppendLine("                                                 subtitle: {  ");
                sb.AppendLine("                                                         text: '" + strChartSubTitle + "'  ");
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
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
            return sb.ToString();
        }

        #endregion

        #region Repeater Data Bound

        protected void rptISIArticles_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {

                string not_first_loop = "</ul>";
                if (e.Item.ItemType == ListItemType.Header)
                {
                    ((Label)e.Item.FindControl("lblTotalPublications")).Text = numOfPublications + "";
                }
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {
                    if (publication_year == 0)
                    {
                        not_first_loop = "";
                    }
                    int current_publication_year = (int)(DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Publication_Year));
                    if (current_publication_year != publication_year)
                    {
                        ((Literal)e.Item.FindControl("ltrlYear")).Text = not_first_loop + "<li><a data-toggle='collapse' href='#YearlyList"
                            //+ ((HtmlGenericControl)e.Item.FindControl("YearlyList")).ClientID
                            + current_publication_year
                            + "'>" + current_publication_year + "</a></li>"
                            + "<ul id='YearlyList" + current_publication_year + "' class='result collapse'>";
                        publication_year = current_publication_year;
                    }

                    HtmlGenericControl ISIEntry = (HtmlGenericControl)e.Item.FindControl("ISIEntry");
                    ISIEntry.Attributes.Add("href", "#" + ((HtmlGenericControl)e.Item.FindControl("ISIEntry_Showmore")).ClientID);

                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Paper_Title) != null))
                        ((Literal)e.Item.FindControl("ltrlPaperTitle")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Paper_Title)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Authors) != null))
                        ((Literal)e.Item.FindControl("ltrlAuthors")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Authors)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Wide_Category) != null))
                        ((Literal)e.Item.FindControl("ltrlWideCategory")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Wide_Category)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.WOS_Number) != null))
                        ((Literal)e.Item.FindControl("ltrlWOS")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.WOS_Number)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Publication_Date) != null))
                        ((Literal)e.Item.FindControl("ltrlDate")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Publication_Date)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Source) != null))
                        ((Literal)e.Item.FindControl("ltrlJournal")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Source)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Subject_Category) != null))
                        ((Literal)e.Item.FindControl("ltrlArea")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Subject_Category)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Keywords) != null))
                        ((Literal)e.Item.FindControl("ltrlKeywords")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Keywords)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Abstract) != null))
                        ((Literal)e.Item.FindControl("ltrlAbstract")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Abstract)).ToString();
                }
                if (e.Item.ItemType == ListItemType.Footer)
                {
                    if (publication_year == 0)
                        not_first_loop = "";
                    ((Literal)e.Item.FindControl("ltrlDone")).Text = not_first_loop;
                    publication_year = 0;
                }

            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        protected void rptNonISI_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Header)
                {
                    ((Label)e.Item.FindControl("lblTotalPublications")).Text = numOfPublications.ToString();
                }
                string not_first_loop = "</ul>";
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {
                    if (publication_year == 0)
                        not_first_loop = "";

                    int current_publication_year = (int)(DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Publication_Year));
                    if (current_publication_year != publication_year)
                    {
                        ((Literal)e.Item.FindControl("ltrlYear")).Text = not_first_loop + "<li><a data-toggle='collapse'" + "href='#YearlyList" + current_publication_year
                            + "'>" + current_publication_year + "</a></li>"
                            + "<ul id='YearlyList" + current_publication_year + "' class='result collapse'>";
                        publication_year = current_publication_year;
                    }

                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Paper_Title) != null))
                        ((Literal)e.Item.FindControl("ltrlPaperTitle")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Paper_Title)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Authors) != null))
                        ((Literal)e.Item.FindControl("ltrlAuthors")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Authors)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Source) != null))
                        ((Literal)e.Item.FindControl("ltrlSource")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Source)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Approved) != null))
                        ((Literal)e.Item.FindControl("ltrlApproved")).Text = Convert.ToBoolean((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Approved))).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.DOI) != null))
                        ((Literal)e.Item.FindControl("ltrlDOI")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.DOI)).ToString();
                }
                if (e.Item.ItemType == ListItemType.Footer)
                {
                    if (publication_year == 0)
                        not_first_loop = "";
                    ((Literal)e.Item.FindControl("ltrlDone")).Text = not_first_loop;
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        #endregion
    }
}