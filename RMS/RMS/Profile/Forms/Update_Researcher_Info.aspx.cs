using Models;
using RMS.Models;
using System;
using System.Diagnostics;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;

namespace RMS.Profile
{
    public partial class Update_Researcher_Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    #region Get researcher profile information

                    // Test values inserted into Session variables
                    Session["_FacultyID"] = 7133599;
                    Session["_DeptCode"] = "CCSE";


                    if (Session["_FacultyID"] != null)
                    {
                        BindDDls();

                        int kfupmid = int.Parse(Session["_FacultyID"].ToString());
                        DisplayResearcherInfo(kfupmid);
                    }

                    #endregion
                }
            }
            catch (Exception ex)
            {
                AppClass.BootstrapAlert(lblMessage, "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message, AppClass.BootstrapAlertType.Danger, false);
            }
        }

        /// <summary>
        /// Binds the DDLs on the current page - Academic Rank, Administrative Rank and Department DDLs
        /// </summary>
        protected void BindDDls()
        {
            try
            {
                #region Rank
                ddlRank.DataSource = RankController.GetRanksByType();
                ddlRank.DataTextField = clsRank.Rank_Title;
                ddlRank.DataValueField = clsRank.Rank_ID;
                ddlRank.DataBind();
                ddlRank.Items.Insert(0, new ListItem("--Select--", "0"));
                #endregion
                #region Administrative Rank
                ddlAdministrativeRank.DataSource = RankController.GetAllRanks();
                ddlAdministrativeRank.DataTextField = clsRank.Rank_Title;
                ddlAdministrativeRank.DataValueField = clsRank.Rank_ID;
                ddlAdministrativeRank.DataBind();
                ddlAdministrativeRank.Items.Insert(0, new ListItem("--Select--", "0"));
                #endregion

                #region Department
                ddlDepartment.DataSource = DepartmentController.getDepartmentsByCollege(Session["_DeptCode"].ToString());
                ddlDepartment.DataTextField = clsDepartment.Department_Name;
                ddlDepartment.DataValueField = clsDepartment.Department_Code;
                ddlDepartment.DataBind();
                ddlDepartment.Items.Insert(0, new ListItem("--Select--", "0"));
                #endregion
            }
            catch (Exception ex)
            {
                AppClass.BootstrapAlert(lblMessage, "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message, AppClass.BootstrapAlertType.Danger, false);
            }
        }



        /// <summary>
        /// Retrieves researcher data from the database and fills the input fields
        /// </summary>
        /// <param name="id">Currently logged in researcher ID</param>
        protected void DisplayResearcherInfo(int id)
        {
            try
            {
                ResearcherController researcher = ResearcherController.getFacultyByID(id);
                txtEmail.Value = researcher.Email;
                txtFirstName.Value = researcher.First_Name;
                txtFullName.Value = researcher.Full_Name;
                txtJoiningDate.Value = Convert.ToDateTime(researcher.Joining_Date).ToString("yyyy-MM-dd");
                txtLastName.Value = researcher.Last_Name;
                txtMiddleName.Value = researcher.Middle_Name;
                txtResearcherID.Value = researcher.WOS_ResearcherID;
                txtYearJoined.Value = researcher.Joining_Year;
                txtPhone.Value = researcher.Phone;

                if (ddlAdministrativeRank.Items.FindByText(researcher.Actual_Job) != null)
                    ddlAdministrativeRank.Items.FindByText(researcher.Actual_Job).Selected = true;

                if (ddlDepartment.Items.FindByValue(researcher.Department_Code) != null)
                    ddlDepartment.Items.FindByValue(researcher.Department_Code).Selected = true;

                if (ddlRank.Items.FindByText(researcher.Academic_Rank) != null)
                    ddlRank.Items.FindByText(researcher.Academic_Rank).Selected = true;
            }
            catch (Exception ex)
            {
                AppClass.BootstrapAlert(lblMessage, "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message, AppClass.BootstrapAlertType.Danger, false);
            }
        }


        /// <summary>
        /// Save the User entered Info in the database
        /// </summary>
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsValid)
                {
                    lblMessage.Text = "Please make sure all fields are filled/selected.";
                    return;
                }

                #region update
                ResearcherController researcher = new ResearcherController();
                researcher.KFUPMID = (int)Session["_FacultyID"];
                researcher.Email = txtEmail.Value;
                researcher.First_Name = txtFirstName.Value;
                researcher.Full_Name = txtFullName.Value;
                researcher.Joining_Date = Convert.ToDateTime(txtJoiningDate.Value);
                researcher.Last_Name = txtLastName.Value;
                researcher.Middle_Name = txtMiddleName.Value;
                researcher.WOS_ResearcherID = txtResearcherID.Value;
                researcher.Joining_Year = txtYearJoined.Value;

                researcher.Actual_Job = ddlAdministrativeRank.SelectedItem.Text;
                researcher.Department_Code = ddlDepartment.SelectedItem.Value;
                researcher.Academic_Rank = ddlRank.SelectedItem.Text;
                researcher.Phone = txtPhone.Value;

                researcher.UpdatedOn = DateTime.Now;
                researcher.UpdatedBy = "";// email - username of current logged in user here

                ResearcherController.UpdateResearcherInfo(researcher);
                #endregion

                AppClass.BootstrapAlert(lblMessage, "Information updated successfully.", AppClass.BootstrapAlertType.Success, false);
            }
            catch (Exception ex)
            {
                AppClass.BootstrapAlert(lblMessage, "ERROR - " + (new StackTrace()).GetFrame(1).GetMethod().Name + "() : " + ex.Message, AppClass.BootstrapAlertType.Danger, false);
            }
        }

    }
}