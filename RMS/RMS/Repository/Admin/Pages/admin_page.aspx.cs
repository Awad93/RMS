using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.Script.Serialization;
using Models;
using App_Code;
using System.Diagnostics;

namespace RMS
{
    public partial class admin_page_test : System.Web.UI.Page
    {
        #region Variables
        int numOfConferences;
        int numOfPatents;
        int numOfBooks;
        int numOfISIPublications;
        int numOfNonISIPublications;
        int publication_year = 0;
        StringBuilder str = new StringBuilder();
        string chartData_Cat;
        string chartData_Val;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    #region Get Colleges
                    List<DepartmentController> Colleges = DepartmentController.getAllColleges();
                    repeaterColleges.DataSource = Colleges;
                    repeaterColleges.DataBind();
                    #endregion

                    // Sets faculty filter's first character to 'A'
                    hfvFirstChar.Value = "A";

                    // Gets an array containing the alphabet and binds it to the filter repeater in the faculty pill
                    char[] unicodes = new char[26];
                    for (int i = 0; i < 26; i++)
                        unicodes[i] = (char)(i + 65);
                    repeaterFaculty_filter.DataSource = unicodes;
                    repeaterFaculty_filter.DataBind();                                       

                    #region Get Page Content for All Colleges
                    List<ConferenceController> Conferences = ConferenceController.getConferencesAll();
                    List<Book_AuthoredController> Books = Book_AuthoredController.getBooksAll();
                    List<Publication_NonISIController> NonISIPublications = Publication_NonISIController.getNonISIPublicationsAll();
                    List<Publication_ISIController> ISIPublications = Publication_ISIController.getISIPublicationsAll(null);
                    List<Patent_IssuedController> Patents = Patent_IssuedController.getPatentsAll();
                    List<ResearcherController> Researchers = ResearcherController.getFacultyAll();
                   
                    BindRepeaters(Books, ISIPublications, NonISIPublications, Conferences, Patents, Researchers);
                    UpdateContent();
                    #endregion            
                                     
                    #region Redirect from landing page
                    CheckSessionAndLoadValues();
                    #endregion
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        private void UpdateContent()
        {
            #region Display chart
            DisplayChart();
            #endregion

            #region Fill Statistics table
            getTableData();
            #endregion


        }

        #region Repeater Events

        #region Publications and Books

        /// <summary>
        /// Displays a collapsable detailed list of ISI publications by year in a tree form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterISIPublications_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            string not_first_loop = "</ul>";
            if (e.Item.ItemType == ListItemType.Header)
            {
                ((Label)e.Item.FindControl("lblTotalPublications")).Text = numOfISIPublications + "";
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


        /// <summary>
        /// Displays a collapsable detailed list of Non-ISI publications in a tree form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterNonISIPublications_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                ((Label)e.Item.FindControl("lblTotalPublications")).Text = numOfNonISIPublications + "";
            }
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Paper_Title) != null))
                    ((Literal)e.Item.FindControl("ltrlPaperTitle")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Paper_Title)).ToString(); ;
                if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Authors) != null))
                    ((Literal)e.Item.FindControl("ltrlAuthors")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Authors)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Publication_Year) != null))
                    ((Literal)e.Item.FindControl("ltrlPublicationYear")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Publication_Year)).ToString();
            }
        }


        /// <summary>
        /// Displays a collapsable detailed list of books in a tree form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterBooks_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                ((Label)e.Item.FindControl("lblTotalBooks")).Text = numOfBooks + "";
            }
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if ((DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Book_Title) != null))
                    ((Literal)e.Item.FindControl("ltrlBookTitle")).Text = (DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Book_Title)).ToString(); ;
                if ((DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Authors) != null))
                    ((Literal)e.Item.FindControl("ltrlAuthors")).Text = (DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Authors)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Publication_Year) != null))
                    ((Literal)e.Item.FindControl("ltrlPublicationYear")).Text = (DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Publication_Year)).ToString();
            }
        }
        #endregion

        #region Conferences

        /// <summary>
        /// Displays a collapsable detailed list of conferences by year in a tree form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterConferences_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            string not_first_loop = "</ul>";
            if (e.Item.ItemType == ListItemType.Header)
            {
                ((Label)e.Item.FindControl("lblTotalConferences")).Text = numOfConferences + "";
            }
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if (publication_year == 0)
                {
                    not_first_loop = "";
                }
                int current_publication_year = (int)(double)(DataBinder.Eval(e.Item.DataItem, clsConference.Year));
                if (current_publication_year != publication_year)
                {
                    ((Literal)e.Item.FindControl("ltrlYear")).Text = not_first_loop + "<li><a data-toggle='collapse' href='#YearlyList"
                        + current_publication_year
                        + "'>" + current_publication_year + "</a></li>"
                        + "<ul id='YearlyList" + current_publication_year + "' class='result collapse'>";
                    publication_year = (int)current_publication_year;
                }

                if ((DataBinder.Eval(e.Item.DataItem, clsConference.Conference_Name) != null))
                    ((Literal)e.Item.FindControl("ltrlConferenceTitle")).Text = (DataBinder.Eval(e.Item.DataItem, clsConference.Conference_Name)).ToString();
                else
                    ((Literal)e.Item.FindControl("ltrlConferenceTitle")).Text = "<i>No title</i>";
                if ((DataBinder.Eval(e.Item.DataItem, clsConference.Conference_Location) != null))
                    ((Literal)e.Item.FindControl("ltrlLocation")).Text = (DataBinder.Eval(e.Item.DataItem, clsConference.Conference_Location)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsConference.Paper_Title) != null))
                    ((Literal)e.Item.FindControl("ltrlPaperTitle")).Text = "<b>Paper title: </b>" + (DataBinder.Eval(e.Item.DataItem, clsConference.Paper_Title)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsConference.Authors) != null))
                    ((Literal)e.Item.FindControl("ltrlAuthors")).Text = "<b>Paper author: </b>" + (DataBinder.Eval(e.Item.DataItem, clsConference.Authors)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsConference.Year) != null))
                    ((Literal)e.Item.FindControl("ltrlYearOfConference")).Text = (DataBinder.Eval(e.Item.DataItem, clsConference.Year)).ToString();
            }
            if (e.Item.ItemType == ListItemType.Footer)
            {
                if (publication_year == 0)
                    not_first_loop = "";
                ((Literal)e.Item.FindControl("ltrlDone")).Text = not_first_loop;
                publication_year = 0;
            }
        }

        #endregion

        #region Patents

        /// <summary>
        /// Displays a collapsable detailed list of patents by year in a tree form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterPatents_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                ((Label)e.Item.FindControl("lblTotalPatents")).Text = numOfPatents + "";
            }
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if ((DataBinder.Eval(e.Item.DataItem, clsPatent_Issued.Patent_Title) != null))
                    ((Literal)e.Item.FindControl("ltrlPatentTitle")).Text = (DataBinder.Eval(e.Item.DataItem, clsPatent_Issued.Patent_Title)).ToString(); ;
                if ((DataBinder.Eval(e.Item.DataItem, clsPatent_Issued.Country) != null))
                    ((Literal)e.Item.FindControl("ltrlCountry")).Text = (DataBinder.Eval(e.Item.DataItem, clsPatent_Issued.Country)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsPatent_Issued.Patent_No) != null))
                    ((Literal)e.Item.FindControl("ltrlPatentNumber")).Text = (DataBinder.Eval(e.Item.DataItem, clsPatent_Issued.Patent_No)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsPatent_Issued.Ownership_Of_Patent) != null))
                    ((Literal)e.Item.FindControl("ltrlOwner")).Text = "<b>Owner: </b>" + (DataBinder.Eval(e.Item.DataItem, clsPatent_Issued.Ownership_Of_Patent)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsPatent_Issued.Year_Of_Issue) != null))
                    ((Literal)e.Item.FindControl("ltrlYearOfIssue")).Text = (DataBinder.Eval(e.Item.DataItem, clsPatent_Issued.Year_Of_Issue)).ToString();
            }
        }

        #endregion

        #region Departments

        /// <summary>
        /// Displays a collapsable tree of colleges and departments
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterColleges_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if ((DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Name) != null))
                    ((Literal)e.Item.FindControl("ltrlCollege")).Text = (DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Name)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Code) != null))
                {
                    string Department_Code = (DataBinder.Eval(e.Item.DataItem, "Department_Code")).ToString();
                    List<DepartmentController> Departments = DepartmentController.getDepartmentsByCollege(Department_Code);
                    Repeater repeaterDepartments = (Repeater)e.Item.FindControl("repeaterDepartments");
                    repeaterDepartments.DataSource = Departments;
                    repeaterDepartments.DataBind();
                }
            }
        }


        /// <summary>
        /// Displays a list of department names under a specific college
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterDepartments_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if ((DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Name) != null))
                    ((Literal)e.Item.FindControl("ltrlDepartment")).Text = (DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Name)).ToString();
            }
        }

        #endregion

        #region Faculty

        /// <summary>
        /// Displays a list of faculty names
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterFaculty_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if ((DataBinder.Eval(e.Item.DataItem, clsResearcher.Full_Name) != null))
                {
                    ((HtmlAnchor)e.Item.FindControl("btnFaculty")).InnerHtml = (DataBinder.Eval(e.Item.DataItem, clsResearcher.Full_Name)).ToString().Replace("&nbsp; ","");
                }
                if ((DataBinder.Eval(e.Item.DataItem, clsResearcher.KFUPMID)) != null)
                    ((HiddenField)e.Item.FindControl("hfvKFUPMID")).Value = (DataBinder.Eval(e.Item.DataItem, clsResearcher.KFUPMID)).ToString();
            }
        }


        /// <summary>
        /// Displays a list of faculty names with a specified first character
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterFaculty_filter_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
               ((Literal)e.Item.FindControl("ltrlCharacter")).Text = "<a onclick='document.getElementById(\"" + hfvFirstChar.ClientID + "\").setAttribute(\"Value\",\""
                    + e.Item.DataItem.ToString() + "\");"
                    + "document.getElementById(\"" + btnFacultyFilter.ClientID + "\").click();'>" + e.Item.DataItem.ToString() + "</a>";                
            }
        }

        #endregion

        #endregion

        #region Check Session values

        /// <summary>
        /// Checks Session values and generates content accordingly
        /// </summary>
        protected void CheckSessionAndLoadValues()
        {
            try
            {
                if (Session["__Type"] != null && !string.IsNullOrEmpty(Session["__Type"].ToString()))
                {
                    hfvDepartmentType.Value = Session["__Type"].ToString();
                    hfvDepartmentCode.Value = Session["__Val"].ToString();

                    btnDepartment_OnClick(null, null);
                }
                if (Session["__FacultyID"] != null && !string.IsNullOrEmpty(Session["__FacultyID"].ToString()))
                {
                    hfvFacultyID.Value = Session["__FacultyID"].ToString();

                    btnFaculty_OnClick(null, null);
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        #endregion

        #region Main Content Events

        /// <summary>
        /// Retrieves the repository data for the college or department clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnDepartment_OnClick(object sender, EventArgs e)
        {
            try
            {
                string code = hfvDepartmentCode.Value;
                if (hfvDepartmentType.Value == "COLLEGE")
                {
                    StringBuilder strBldr = new StringBuilder();
                    strBldr.Append("<li><a onclick=*clickDepartment('COLLEGE','");
                    strBldr.Append(code + "')*>" + code + "</a></li>");
                    ltrlCollege.Text = strBldr.Replace('*', '"').ToString();
                    ltrlDepartment.Text = "";
                    ltrlFaculty.Text = "";
                    hfvFacultyID.Value = "";

                    List<Book_AuthoredController> Books = Book_AuthoredController.getBooksByCollege(code);
                    List<Publication_ISIController> ISIPublications = Publication_ISIController.getISIPublicationsSingleCollegeByDocType(code);
                    List<Publication_NonISIController> NonISIPublications = Publication_NonISIController.getNonISIPublicationsByCollege(code);
                    List<ConferenceController> Conferences = ConferenceController.getConferencesByCollege(code);
                    List<Patent_IssuedController> Patents = Patent_IssuedController.getPatentsByCollege(code);
                    List<ResearcherController> Faculty = ResearcherController.getFacultyByCollegeAndFirstCharacter(code, 'A');

                    BindRepeaters(Books, ISIPublications, NonISIPublications, Conferences, Patents, Faculty);
                    UpdateContent();
                }
                else if (hfvDepartmentType.Value == "DEPARTMENT")
                {
                    StringBuilder strBldr = new StringBuilder();
                    strBldr.Append("<li><a onclick=*clickDepartment('DEPARTMENT','");
                    strBldr.Append(code + "')*>" + code + "</a></li>");
                    ltrlDepartment.Text = strBldr.Replace('*', '"').ToString();
                    ltrlFaculty.Text = "";
                    hfvFacultyID.Value = "";

                    List<Book_AuthoredController> Books = Book_AuthoredController.getBooksByDepartment(code);
                    List<Publication_ISIController> ISIPublications = Publication_ISIController.getISIPublicationsSingleDepartmentByDocType(code);
                    List<Publication_NonISIController> NonISIPublications = Publication_NonISIController.getNonISIPublicationsByDepartment(code);
                    List<ConferenceController> Conferences = ConferenceController.getConferencesByDepartment(code);
                    List<Patent_IssuedController> Patents = Patent_IssuedController.getPatentsByDepartment(code);
                    List<ResearcherController> Faculty = ResearcherController.getFacultyByDepartmentAndFirstCharacter(code, 'A');

                    BindRepeaters(Books, ISIPublications, NonISIPublications, Conferences, Patents, Faculty);
                    UpdateContent();
                }
                UpdatePanel.Update();
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }


        /// <summary>
        /// Retrieves the repository data for the researcher clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnFaculty_OnClick(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(((HiddenField)((HtmlAnchor)sender).FindControl("hfvKFUPMID")).Value);

                hfvFacultyID.Value = id.ToString();

                ltrlFaculty.Text = "<li><a>" + ((HtmlAnchor)sender).InnerText + "</a></li>";

                List<Book_AuthoredController> Books = Book_AuthoredController.getBooksByFaculty(id);
                List<Publication_ISIController> ISIPublications = Publication_ISIController.getISIPublicationsByFaculty(id);
                List<Publication_NonISIController> NonISIPublications = Publication_NonISIController.getNonISIPublicationsByFaculty(id);
                List<ConferenceController> Conferences = ConferenceController.getConferencesByFaculty(id);
                List<Patent_IssuedController> Patents = Patent_IssuedController.getPatentsByFaculty(id);

                BindRepeaters(Books, ISIPublications, NonISIPublications, Conferences, Patents);
                UpdateContent();
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }


        /// <summary>
        /// Retrieves repository data and binds it to the corresponding repeaters
        /// </summary>
        /// <param name="Books">List of Book objects</param>
        /// <param name="ISIPublications">List of ISI Publication objects</param>
        /// <param name="NonISIPublications">List of Non-ISI Publication objects</param>
        /// <param name="Conferences">List of Conference objects</param>
        /// <param name="Patents">List of Patent objects</param>
        /// <param name="Faculty">List of Researcher objects</param>
        private void BindRepeaters(List<Book_AuthoredController> Books,
            List<Publication_ISIController> ISIPublications,
            List<Publication_NonISIController> NonISIPublications,
            List<ConferenceController> Conferences,
            List<Patent_IssuedController> Patents,
            List<ResearcherController> Faculty)
        {
            try
            {
                // Call BindRepeaters() without Faculty bind
                BindRepeaters(Books, ISIPublications, NonISIPublications, Conferences, Patents);

                // Databind faculty repeater               
                repeaterFaculty.DataSource = Faculty;
                repeaterFaculty.DataBind();
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }


        /// <summary>
        /// Retrieves repository data and binds it to the corresponding repeaters
        /// </summary>
        /// <param name="Books">List of Book objects</param>
        /// <param name="ISIPublications">List of ISI Publication objects</param>
        /// <param name="NonISIPublications">List of Non-ISI Publication objects</param>
        /// <param name="Conferences">List of Conference objects</param>
        /// <param name="Patents">List of Patent objects</param>
        private void BindRepeaters(List<Book_AuthoredController> Books,
            List<Publication_ISIController> ISIPublications,
            List<Publication_NonISIController> NonISIPublications,
            List<ConferenceController> Conferences,
            List<Patent_IssuedController> Patents)
        {
            try
            {
                // Get the total number of books and papers
                numOfBooks = Books.Count;
                numOfISIPublications = ISIPublications.Count;
                numOfNonISIPublications = NonISIPublications.Count;
                numOfConferences = Conferences.Count;
                numOfPatents = Patents.Count;

                // Databind repeaters
                repeaterBooks.DataSource = Books;
                repeaterBooks.DataBind();

                repeaterISIPublications.DataSource = ISIPublications;
                repeaterISIPublications.DataBind();

                repeaterNonISIPublications.DataSource = NonISIPublications;
                repeaterNonISIPublications.DataBind();

                repeaterPatents.DataSource = Patents;
                repeaterPatents.DataBind();

                repeaterConferences.DataSource = Conferences;
                repeaterConferences.DataBind();
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }
        #endregion

        #region Faculty Events

        /// <summary>
        /// Retrieves a list of faculty names based on the string in the search bar
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSearchFaculty_Click(object sender, EventArgs e)
        {
            try
            {
                List<ResearcherController> Researchers;
                string search_value = ((HtmlInputControl)((HtmlButton)sender).FindControl("txtSearchBar")).Value;
                if (hfvDepartmentType.Value == "COLLEGE")
                {
                    string code = hfvDepartmentCode.Value;
                    Researchers = ResearcherController.SearchFacultyByNameAndCollege(search_value, code);
                }
                else if (hfvDepartmentType.Value == "DEPARTMENT")
                {
                    string code = hfvDepartmentCode.Value;
                    Researchers = ResearcherController.SearchFacultyByNameAndDepartment(search_value, code);
                }
                else
                {
                    Researchers = ResearcherController.SearchFacultyByName(search_value);
                }

                repeaterFaculty.DataSource = Researchers;
                repeaterFaculty.DataBind();
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }

        }


        /// <summary>
        /// Retrieves a list of faculty names that start with the character clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnFacultyFilter_Click(object sender, EventArgs e)
        {
            try
            {
                List<ResearcherController> Researchers;
                char c = hfvFirstChar.Value[0];
                if (hfvDepartmentType.Value == "COLLEGE")
                {
                    string code = hfvDepartmentCode.Value;
                    Researchers = ResearcherController.getFacultyByCollegeAndFirstCharacter(code, c);
                }
                else if (hfvDepartmentType.Value == "DEPARTMENT")
                {
                    string code = hfvDepartmentCode.Value;
                    Researchers = ResearcherController.getFacultyByDepartmentAndFirstCharacter(code, c);
                }
                else
                {
                    Researchers = ResearcherController.getFacultyByFirstCharacter(c);
                }

                repeaterFaculty.DataSource = Researchers;
                repeaterFaculty.DataBind();

                UpdateFacultyPanel.Update();
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        #endregion

        #region Chart
        /// <summary>
        /// Displays a chart when the dropdown list of chart data is changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlChart_onChange(object sender, EventArgs e)
        {
            try
            {
                DisplayChart();
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }


        /// <summary>
        /// Creates and displays the appropriate chart 
        /// </summary>
        protected void DisplayChart()
        {
            try
            {
                DataTable dt = new DataTable();
                string value = ddlChart.SelectedValue;
                string code = hfvDepartmentCode.Value;
                int kfupmid = 0;
                if(!string.IsNullOrEmpty(hfvFacultyID.Value))
                    kfupmid = Convert.ToInt32(hfvFacultyID.Value);
                string yaxis = "";
                string title = "";
                string subtitle = "";

                #region Check chart type
                title = hfvDepartmentCode.Value;
                subtitle = hfvDepartmentType.Value;


                if (value.Equals("pp"))
                {
                    yaxis = "Publication Points";
                    if (string.IsNullOrEmpty(hfvDepartmentType.Value))
                    {
                        title = "KFUPM";
                        subtitle = "ALL COLLEGES";
                        dt = Publication_ISI_AuthorController.GetStatsForPublicationPoints();
                    }
                    else if (!string.IsNullOrEmpty(hfvFacultyID.Value))
                    {
                        title = ltrlFaculty.Text;
                        subtitle = "RESEARCHER";
                        dt = Publication_ISI_AuthorController.GetStatsForPublicationPointsByFaculty(kfupmid);
                    }
                    else if ((hfvDepartmentType.Value == "COLLEGE"))
                    {
                        dt = Publication_ISI_AuthorController.GetStatsForPublicationPointsByCollege(code);
                    }
                    else if ((hfvDepartmentType.Value == "DEPARTMENT"))
                        dt = Publication_ISI_AuthorController.GetStatsForPublicationPointsByDepartment(code);
                                       
                }

                else if (value.Equals("isi"))
                {
                    yaxis = "ISI Publications";
                    if (string.IsNullOrEmpty(hfvDepartmentType.Value))
                    {
                        title = "KFUPM";
                        subtitle = "ALL COLLEGES";
                        dt = Publication_ISIController.GetPubStatsForISIPublicationsAllCollegesAllYears("0");
                    }
                    else if (!string.IsNullOrEmpty(hfvFacultyID.Value))
                    {
                        title = ltrlFaculty.Text;
                        subtitle = "RESEARCHER";
                        dt = Publication_ISIController.getStatsForISIPublicationsByFaculty(kfupmid);
                    }
                    else if ((hfvDepartmentType.Value == "COLLEGE"))
                        dt = Publication_ISIController.GetPubStatsForISIPublicationsForSingleCollege(code, null);
                    else if ((hfvDepartmentType.Value == "DEPARTMENT"))
                        dt = Publication_ISIController.GetPubStatsForISIPublicationsForSingleDepartment(code, null);
                }

                else if (value.Equals("nonisi"))
                {
                    yaxis = "Non-ISI Publications";
                    if (!string.IsNullOrEmpty(hfvFacultyID.Value))
                    {
                        title = ltrlFaculty.Text;
                        subtitle = "RESEARCHER";
                        dt = Publication_NonISIController.GetPubStatsForNonISIPublicationsByFaculty(kfupmid);
                    }
                    else if ((hfvDepartmentType.Value == "COLLEGE"))
                        dt = Publication_NonISIController.GetPubStatsForNonISIPublicationsForSingleCollege(code, null);
                    else if ((hfvDepartmentType.Value == "DEPARTMENT"))
                        dt = Publication_NonISIController.GetPubStatsForNonISIPublicationsForSingleDepartment(code, null);
                }
                //else if (value.Equals("conferences"))
                //{
                //  yaxis = "Conferences";
                //    if (!string.IsNullOrEmpty(hfvFacultyID.Value))
                //    {
                //        title = ltrlFaculty.Text;
                //        subtitle = "RESEARCHER";
                //        dt = Publication_NonISIController.GetPubStatsForNonISIPublicationsByFaculty(kfupmid);
                //    }
                //    else if ((hfvDepartmentType.Value == "COLLEGE"))
                //        dt = Publication_NonISIController.GetPubStatsForNonISIPublicationsForSingleCollege(code, null);
                //    else if ((hfvDepartmentType.Value == "DEPARTMENT"))
                //        dt = Publication_NonISIController.GetPubStatsForNonISIPublicationsForSingleDepartment(code, null);
                //}
                #endregion                

                #region Get x/y coordinate values from Database
                List<int> _dataCat = new List<int>();
                List<double> _data1Val = new List<double>();
                foreach (DataRow dr1 in dt.Rows)
                {
                    _dataCat.Add((int)dr1[0]);
                    if (yaxis == "Publication Points")
                        _data1Val.Add((double)dr1[1]);
                    else
                        _data1Val.Add((int)dr1[1]);

                }
                JavaScriptSerializer jss = new JavaScriptSerializer();
                chartData_Cat = jss.Serialize(_dataCat); //this make your list in jSON format like [88,99,10]
                chartData_Val = jss.Serialize(_data1Val);
                #endregion

                string strChart = CreateChart(title, subtitle, "Years", yaxis, "All Colleges");

                ScriptManager.RegisterStartupScript(UpdatePanel, this.GetType(), "myFunction", strChart, true);
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }

        }


        /// <summary>
        /// Returns the JavaScript code as a string that creates a Highcharts chart 
        /// </summary>
        /// <param name="strChartTitle">Chart title</param>
        /// <param name="strChartSubTitle">Chart subtitle</param>
        /// <param name="strXAxisTitle">X-axis title</param>
        /// <param name="strYAxisTitle">Y-axis title</param>
        /// <param name="strSeriesName">Series name</param>
        /// <returns></returns>
        protected string CreateChart(string strChartTitle, string strChartSubTitle, string strXAxisTitle, string strYAxisTitle, string strSeriesName)
        {
            try
            {
                StringBuilder sb = new StringBuilder();

                sb.AppendLine("         <!-- HIGHCHART SCRIPT STARTS HERE --> ");
                sb.AppendLine("                 var chart = new Highcharts.Chart({");
                sb.AppendLine("                                                 chart: {  ");
                sb.AppendLine("                                                         type: 'column' ,");
                sb.AppendLine("                                                         renderTo: 'mychart'");
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

                return sb.ToString();
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
                return "Error";
            }
        }

        #endregion

        #region Summary table

        /// <summary>
        /// Retrieves the data for the summary table and data binds it to a repeater
        /// </summary>
        private void getTableData()
        {
            try
            {
                string type = hfvDepartmentType.Value;
                string code = hfvDepartmentCode.Value;
                DataTable table;

                if (type == "COLLEGE")
                {
                    table = Summary.StatsByCollege(code);
                }

                else if (type == "DEPARTMENT")
                {
                    table = Summary.StatsByDepartment(code);
                }

                else if (type == "FACULTY")
                {
                    table = Summary.StatsByFaculty(int.Parse(code));
                }

                else
                {
                    table = Summary.SummaryAll();
                }

                repeaterStatistics.DataSource = table;
                repeaterStatistics.DataBind();
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }


        /// <summary>
        /// Fills the Summary table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterStatistics_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                ((Literal)e.Item.FindControl("ltrlYear")).Text = (DataBinder.Eval(e.Item.DataItem, "Year")).ToString();
                ((Literal)e.Item.FindControl("ltrlISI")).Text = (DataBinder.Eval(e.Item.DataItem, "ISI_Publications")).ToString();
                ((Literal)e.Item.FindControl("ltrlNonISI")).Text = (DataBinder.Eval(e.Item.DataItem, "NonISI_Publications")).ToString();
                ((Literal)e.Item.FindControl("ltrlPublicationPoint")).Text = (DataBinder.Eval(e.Item.DataItem, "Publication_Points")).ToString();
                ((Literal)e.Item.FindControl("ltrlConference")).Text = (DataBinder.Eval(e.Item.DataItem, "Conferences")).ToString();
                ((Literal)e.Item.FindControl("ltrlPatent")).Text = (DataBinder.Eval(e.Item.DataItem, "Patents")).ToString();
                ((Literal)e.Item.FindControl("ltrlBook")).Text = (DataBinder.Eval(e.Item.DataItem, "Books")).ToString();
                ((Literal)e.Item.FindControl("ltrlInternalProject")).Text = (DataBinder.Eval(e.Item.DataItem, "Projects")).ToString();
                ((Literal)e.Item.FindControl("ltrlNSTPProject")).Text = (DataBinder.Eval(e.Item.DataItem, "Projects")).ToString();
                ((Literal)e.Item.FindControl("ltrlInternalFund")).Text = (DataBinder.Eval(e.Item.DataItem, "Project_Funds")).ToString();
                ((Literal)e.Item.FindControl("ltrlNSTPFund")).Text = (DataBinder.Eval(e.Item.DataItem, "Project_Funds")).ToString();
                ((Literal)e.Item.FindControl("ltrlGraduateStudents")).Text = (DataBinder.Eval(e.Item.DataItem, "Graduate_Students")).ToString();
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        #endregion
    }
}