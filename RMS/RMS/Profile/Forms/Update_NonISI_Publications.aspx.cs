using Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RMS
{
    public partial class Update_NonISI_Publications : System.Web.UI.Page
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

                    // Test values given to Session variables
                    Session["_FacultyID"] = 7040588;
                    Session["_LastName"] = "azzedin";
                    // End: Test

                    #region Get Records

                    if (Session["_FacultyID"].ToString() != null)
                    {
                        int id = int.Parse(Session["_FacultyID"].ToString());
                        string last_name = Session["_LastName"].ToString();

                        List<Publication_NonISIController> Publications = Publication_NonISIController.searchNonISIPublicationsByNameAndMissingID(last_name, id);

                        // Display text if no publications found
                        if (Publications.Count == 0)
                        {
                            ltrlSuggestionsSubtitle.Text = "No suggestions were found.";
                            btnAddAuthor.Visible = false;
                        }
                        else
                        {
                            repeaterNonISIPublications.DataSource = Publications;
                            repeaterNonISIPublications.DataBind();
                        }
                    }

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
        /// Adds a new Non-ISI publication entry to the database with Approved = 0 (not approved)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAddPublication_Click(object sender, EventArgs e)
        {
            try
            {
                Publication_NonISIController.AddNonISIPublication(int.Parse(Session["_FacultyID"].ToString()), txtTitle.Value, txtJournal.Value,
                    txtareaAuthors.Value, int.Parse(txtYearPublished.Value), txtUrl.Value);
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }


        /// <summary>
        /// Adds the current user as an author to each of the publications checked (in its corresponding checkbox)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAddAuthor_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (RepeaterItem pItem in repeaterNonISIPublications.Items)
                {
                    CheckBox cbAdd = (CheckBox)pItem.FindControl("cbAdd");
                    if (cbAdd.Checked)
                    {
                        Publication_NonISI_AuthorController.AddNonISIPublicationAuthor(int.Parse(Session["_FacultyID"].ToString()),
                            int.Parse((((HiddenField)pItem.FindControl("hfvPublicationID")).Value)));
                    }
                }

            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        #endregion

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

        protected void repeaterNonISIPublications_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Paper_Title) != null))
                    ((Literal)e.Item.FindControl("ltrlPaperTitle")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Paper_Title)).ToString(); ;
                if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Authors) != null))
                    ((Literal)e.Item.FindControl("ltrlAuthors")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Authors)).ToString();
                //if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Publication_Year) != null))
                //    ((Literal)e.Item.FindControl("ltrlPublicationYear")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Publication_Year)).ToString();
                if ((DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Source) != null))
                    ((Literal)e.Item.FindControl("ltrlSource")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Source)).ToString();
                ((HiddenField)e.Item.FindControl("hfvPublicationID")).Value = (DataBinder.Eval(e.Item.DataItem, clsPublication_NonISI.Publication_NonISI_ID)).ToString();
            }
        }
    }
}