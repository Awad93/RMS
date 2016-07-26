using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Models;
using System.Diagnostics;

namespace RMS
{
    public partial class Admin_HomePage : System.Web.UI.Page
    {

        #region Repeater Events
        /// <summary>
        /// Handles OnItemBound event of "colleges" repeater
        /// which retrieves all colleges of KFUPM and
        /// binds "departments" repeater to the departments list of specific college 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterColleges_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {
                    if ((DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Name) != null))
                        ((Literal)e.Item.FindControl("ltrlCollege")).Text = (DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Name)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Code) != null))
                    {
                        string Department_Code = (DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Code)).ToString();
                        List<DepartmentController> Departments = DepartmentController.getDepartmentsByCollege(Department_Code);
                        Repeater repeaterDepartments = (Repeater)e.Item.FindControl("repeaterDepartments");
                        repeaterDepartments.DataSource = Departments;
                        repeaterDepartments.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        /// <summary>
        /// Handles OnItemBound event of "departments" repeater
        /// which retrieves all departments of specific college and
        /// binds "faculties" repeater to the faculties list of specific department 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterDepartments_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {
                    if ((DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Name) != null))
                        ((Literal)e.Item.FindControl("ltrlDepartment")).Text = (DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Name)).ToString();
                    if ((DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Code) != null))
                    {
                        string Department_Code = (DataBinder.Eval(e.Item.DataItem, clsDepartment.Department_Code)).ToString();
                        List<ResearcherController> Faculties = ResearcherController.getFacultyByDepartment(Department_Code);
                        Repeater repeaterFaculties = (Repeater)e.Item.FindControl("repeaterFaculties");
                        repeaterFaculties.DataSource = Faculties;
                        repeaterFaculties.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }
        /// <summary>
        /// Handles OnItemBound event of "faculties" repeater
        /// which retrieves all faculties of specific department
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterFaculties_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {
                    if ((DataBinder.Eval(e.Item.DataItem, clsResearcher.Full_Name) != null))
                    {
                        ((Literal)e.Item.FindControl("ltrlFaculty")).Text = (DataBinder.Eval(e.Item.DataItem, clsResearcher.Full_Name)).ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        /// <summary>
        /// Handles OnItemBound event of "statistics table" repeater
        /// which retrieves the proper data to fill the table at KFUPM level, College level, Department level or Faculty level
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void repeaterStatistics_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try {
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

        #region Counts Methods

        /// <summary>
        /// Retrieves datatable filled by counting number of items (ISI Publication, Books, ...)
        /// according tp specific type or level(KFUPM level, College level, Department level, Faculty level)
        /// </summary>
        /// <returns>DataRow of that table which the only row in that table</returns>
        private DataRow repositoryCounts()
        {
            try {
                string type = hfvDepartmentType.Value;
                string code = hfvDepartmentCode.Value;

                DataTable table;

                if (type == "COLLEGE")
                {
                    table = Summary.repositoryItemCountsByCollege(code);
                }

                else if (type == "DEPARTMENT")
                {
                    table = Summary.repositoryItemCountsByDepartment(code);
                }

                else if (type == "FACULTY")
                {
                    table = Summary.repositoryItemCountsByFaculty(int.Parse(code));
                }
                else
                {
                    table = Summary.repositoryItemCountsAll();
                }

                return table.Rows[0];
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
                return null;
            }
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                if (!IsPostBack)
                {
                    #region Get Colleges
                    List<DepartmentController> Colleges = DepartmentController.getAllColleges();
                    repeaterColleges.DataSource = Colleges;
                    repeaterColleges.DataBind();

                    ///counting number of items and
                    ///sets every literal text with the proper number of items at KFUPM level and
                    ///fills statstics table with proper data at KFUPM level
                    DataRow row = repositoryCounts();
                    ISIPublication.Text = row["Publication_ISI_Count"].ToString();
                    NonISIPublication.Text = row["Publication_NonISI_Count"].ToString();
                    book.Text = row["Book_Count"].ToString();
                    patent.Text = row["Patent_Count"].ToString();
                    conference.Text = row["Conference_Count"].ToString();
                    project.Text = row["Project_Count"].ToString();

                    getTableData();
                    #endregion

                }
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        #region UpdateMainPanel Events

        /// <summary>
        ///Handles Click event of the hidden button which
        ///sets every literal text with the proper number of items and
        ///fills statstics table with proper data at specific level,
        ///sets Session varaiables to be accessed "Admin Page" when it clicks on any item of this page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnDepartment_Click(object sender, EventArgs e)
        {
            try {
                DataRow row = repositoryCounts();
                ISIPublication.Text = row["Publication_ISI_Count"].ToString();
                NonISIPublication.Text = row["Publication_NonISI_Count"].ToString();
                book.Text = row["Book_Count"].ToString();
                patent.Text = row["Patent_Count"].ToString();
                conference.Text = row["Conference_Count"].ToString();
                project.Text = row["Project_Count"].ToString();

                getTableData();

                Session["__type"] = hfvDepartmentType.Value;
                Session["__code"] = hfvDepartmentCode.Value;
            }
            catch (Exception ex)
            {
                lblError.Text = "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message;
            }
        }

        /// <summary>
        /// Binds "statistics" repeater with table that is filled with statistics data at specific level
        /// </summary>
        private void getTableData()
        {
            try {
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
        #endregion
    }
}