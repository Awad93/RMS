using Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RMS
{
    public partial class Update_Books : System.Web.UI.Page
    {
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

                    #region Get Records

                    // Test values given to Session variables
                    Session["_FacultyID"] = 6900783;
                    Session["_LastName"] = "laradji";

                    if (Session["_FacultyID"].ToString() != null)
                    {
                        int id = int.Parse(Session["_FacultyID"].ToString());
                        string last_name = Session["_LastName"].ToString();

                        List<Book_AuthoredController> Books = Book_AuthoredController.searchBooksByNameAndMissingID(last_name, id);

                        // Display text if no books found
                        if (Books.Count == 0)
                        {
                            ltrlSuggestionsSubtitle.Text = "No suggestions were found.";
                            btnAddAuthor.Visible = false;
                        }
                        else
                        {
                            repeaterBooks.DataSource = Books;
                            repeaterBooks.DataBind();
                        }
                    }

                    #endregion

                    #region Get last 8 years
                    List<int> years = new List<int>();
                    for(int i = DateTime.Now.Year; i < DateTime.Now.Year-8; i++)
                    {
                        years.Add(i);
                    }

                    //repeaterYearsOfPublication.DataSource = years;
                    //repeaterYearsOfPublication.DataBind();
                    #endregion

                    #region Fill Country DDL
                    List<string> countries = GetCountryList();
                    foreach(string country in GetCountryList())
                        ddlCountry.Items.Add(country);

                    // Set default value to 'Saudi Arabia'
                    ddlCountry.SelectedValue = "Saudi Arabia";
                    #endregion

                }
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        #region Button events

        /// <summary>
        /// Inserts the data entered by the user to the Books table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            try
            {
                Book_AuthoredController.AddBook(int.Parse(Session["_FacultyID"].ToString()), txtTitle.Value, txtProjectCode.Value, txtareaAuthors.Value,
                int.Parse(txtYearPublished.Value),
                /*int.Parse(rblYearPublished.SelectedItem.Text),*/txtPublisher.Value, ddlCountry.SelectedItem.Value, int.Parse(txtYearFunded.Value), ddlLanguage.SelectedItem.Value, cbIsCompleted.Enabled);
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        /// <summary>
        /// Adds the current user as an author to each of the books checked (in its corresponding checkbox)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAddAuthor_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (RepeaterItem pItem in repeaterBooks.Items)
                {
                    CheckBox cbAdd = (CheckBox)pItem.FindControl("cbAdd");
                    if (cbAdd.Checked)
                    {
                        Book_Authored_AuthorController.AddBookAuthor(int.Parse(Session["_FacultyID"].ToString()),
                            int.Parse((((HiddenField)pItem.FindControl("hfvBookID")).Value)));
                    }
                }

            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }


        /// <summary>
        /// Fills the repeater with retrieved books' information
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterBooks_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if ((DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Book_Title) != null))
                    ((Literal)e.Item.FindControl("ltrlBookTitle")).Text = (DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Book_Title)).ToString(); ;
                if ((DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Authors) != null))
                    ((Literal)e.Item.FindControl("ltrlAuthors")).Text = (DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Authors)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Publication_Year) != null))
                    ((Literal)e.Item.FindControl("ltrlPublicationYear")).Text = (DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Publication_Year)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Publisher) != null))
                    ((Literal)e.Item.FindControl("ltrlPublisher")).Text = (DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Publisher)).ToString();
                ((HiddenField)e.Item.FindControl("hfvBookID")).Value = (DataBinder.Eval(e.Item.DataItem, clsBook_Authored.Book_Authored_ID)).ToString();
            }
        }


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
                Session["__Type"] = hfvDepartmentType.Value;
                Session["__Val"] = hfvDepartmentCode.Value;

                Response.Redirect("~/Admin/Pages/admin_page.aspx");
                
                
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
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

        #region Retrieve countries

        public static List<string> GetCountryList()
        {
            //create a new Generic list to hold the country names returned
            List<string> cultureList = new List<string>();

            //create an array of CultureInfo to hold all the cultures found, these include the users local cluture, and all the
            //cultures installed with the .Net Framework
            CultureInfo[] cultures = CultureInfo.GetCultures(CultureTypes.AllCultures & ~CultureTypes.NeutralCultures);

            //loop through all the cultures found
            foreach (CultureInfo culture in cultures)
            {
                //pass the current culture's Locale ID (http://msdn.microsoft.com/en-us/library/0h88fahh.aspx)
                //to the RegionInfo contructor to gain access to the information for that culture
                if (culture.LCID != 127 && !culture.IsNeutralCulture)
                {
                    RegionInfo region = new RegionInfo(culture.LCID);

                    //make sure out generic list doesnt already
                    //contain this country
                    if (!(cultureList.Contains(region.EnglishName)))
                        //not there so add the EnglishName (http://msdn.microsoft.com/en-us/library/system.globalization.regioninfo.englishname.aspx)
                        //value to our generic list
                        cultureList.Add(region.EnglishName);
                }
            }
            return cultureList;
        }

        #endregion
    }
}