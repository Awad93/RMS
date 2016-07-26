using Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace RMS.Profile.Forms
{
    public partial class Update_ISI_Publications : System.Web.UI.Page
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
                    Session["_FacultyID"] = 6891544;

                    if (Session["_FacultyID"].ToString() != null)
                    {
                        int id = int.Parse(Session["_FacultyID"].ToString());

                        DataTable AuthorRecords = Publication_ISI_AuthorController.GetISIPublicationAuthorsUnverifiedForSingleFaculty(int.Parse(Session["_FacultyID"].ToString()));

                        // Display text if no information needs updating
                        if (AuthorRecords.Rows.Count == 0)
                        {
                            //ltrlSuggestionsSubtitle.Text = "No information needs updating.";
                            //btnAddAuthor.Visible = false;
                        }
                        else
                        {
                            rptPublications.DataSource = AuthorRecords;
                            rptPublications.DataBind();
                        }
                    }

                    #endregion
                }
                if(IsPostBack)
                    lblError.Text = "POST BACK";
                
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        #region Button events

        protected void btnUpdatePublication_Click(object sender, EventArgs e)
        {
            try
            {
                string error = "";

                Button btn = (Button)sender;
                RepeaterItem item = (RepeaterItem)btn.NamingContainer;

                int id = int.Parse(((HiddenField)item.FindControl("hfvAuthorID")).Value);

                string strIsCorrespondingAuthor = "";
                if (((RadioButtonList)item.FindControl("rblIsCorrespondingAuthor")).SelectedIndex != -1)
                    strIsCorrespondingAuthor = ((RadioButtonList)item.FindControl("rblIsCorrespondingAuthor")).SelectedItem.Value;
                else if(((HtmlGenericControl)item.FindControl("divIsCorrespondingAuthor")).Visible)
                {
                    error = "Please select whether you are the corresponding author\n";
                    ((Label)item.FindControl("lblErrIsCorrespondingAuthor")).Text = error;
                }  
                             
                int authorshipOrder = -1;
                if (((DropDownList)item.FindControl("ddlAuthorRank")).SelectedIndex != -1)
                    authorshipOrder = int.Parse(((DropDownList)item.FindControl("ddlAuthorRank")).SelectedItem.Value);
                else if(((HtmlGenericControl)item.FindControl("divAuthorRank")).Visible)
                {
                    error = "Please select your authorship order\n";
                    ((Label)item.FindControl("lblErrAuthorRank")).Text = error; ;
                }

                string projectCode = "";
                if (((HtmlInputText)item.FindControl("txtProjectCode")) != null)   
                    projectCode = ((HtmlInputText)item.FindControl("txtProjectCode")).Value;

                bool isCorrespondingAuthor = false;

                if (strIsCorrespondingAuthor.Equals("1"))
                    isCorrespondingAuthor = true;

                if (error != "")
                    return;

                // Add authors selected as students to the Student Involvement table                
                foreach (ListItem author in ((CheckBoxList)item.FindControl("cblAuthors")).Items)
                    if (author.Selected && author.Enabled)
                        Student_InvolvementController.AddStudentInvolvement(author.Text, ((HiddenField)item.FindControl("hfvWOS")).Value);

                // Update Publication ISI Author record associated with current publication
                Publication_ISI_AuthorController.UpdateISIPublicationAuthor(id, isCorrespondingAuthor, authorshipOrder, projectCode);
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;                
            }
        }


        #endregion

        #region Publication repeater databind event

        protected void rptPublications_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {            
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                ((Literal)e.Item.FindControl("ltrlItemCount")).Text = (e.Item.ItemIndex + 1) + "";

                ((HiddenField)e.Item.FindControl("hfvAuthorID")).Value = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI_Author.Publication_ISI_Author_ID)).ToString();
                ((HiddenField)e.Item.FindControl("hfvWOS")).Value = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI_Author.WOS_Number)).ToString();

                ((Literal)e.Item.FindControl("ltrlPaperTitle")).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Paper_Title)).ToString();

                // Display Author Rank DDL only if it's not stored in the database                
                if (!string.IsNullOrEmpty((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI_Author.Authorship_Order)).ToString()))
                    ((HtmlGenericControl)e.Item.FindControl("divAuthorRank")).Visible = false;
                else
                    for (int i = 0; i < int.Parse((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI_Author.Number_Of_Authors)).ToString()) ; i++)
                        ((DropDownList)e.Item.FindControl("ddlAuthorRank")).Items.Add(new ListItem(i + "", i + ""));

                // Display Corresponding Author RBL only if it's not stored in the database
                if (!string.IsNullOrEmpty((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI_Author.isCorresponding_Author)).ToString()))
                    ((HtmlGenericControl)e.Item.FindControl("divIsCorrespondingAuthor")).Visible = false;

                // Display Project Code text box only if it's not stored in the database
                if (!string.IsNullOrEmpty((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI_Author.Project_Code)).ToString()))
                    ((HtmlGenericControl)e.Item.FindControl("divProjectCode")).Visible = false;

                if(!string.IsNullOrEmpty((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Authors)).ToString()))
                {
                    string authors = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Authors)).ToString();
                    string[] authorArray = authors.Split(';');
                    List<string> students = Student_InvolvementController.GetStudentNamesForISIPublication((DataBinder.Eval(e.Item.DataItem, clsPublication_ISI_Author.WOS_Number)).ToString());
                    foreach(string author in authorArray)
                    {
                        string authorTrimmed = author.TrimStart(' ');              
                        ((CheckBoxList)e.Item.FindControl("cblAuthors")).Items.Add(new ListItem(authorTrimmed));
                        foreach (string student in students)
                            if (student.Equals(authorTrimmed))
                            {
                                ((CheckBoxList)e.Item.FindControl("cblAuthors")).Items.FindByText(authorTrimmed).Selected = true;
                                ((CheckBoxList)e.Item.FindControl("cblAuthors")).Items.FindByText(authorTrimmed).Enabled = false;
                                break;
                            }                                                
                    }
                }

            }
        }

        #endregion

        #region Departments

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

    }
}