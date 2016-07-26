﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Models
{
    using App_Code;
    using System;
    using System.Collections.Generic;
    using System.Collections.ObjectModel;
    using System.Data;
    using System.Data.SqlClient;
    using System.Linq;

    public partial class clsResearcher
    {
        #region Fields
        public static string Researcher_ID = "Researcher_ID";
        public static string KFUPMID = "KFUPMID";
        public static string Status = "Status";
        public static string Full_Name = "Full_Name";
        public static string First_Name = "First_Name";
        public static string Middle_Name = "Middle_Name";
        public static string Last_Name = "Last_Name";
        public static string Department_Code = "Department_Code";
        public static string Academic_Rank = "Academic_Rank";
        public static string Actual_Job = "Actual_Job";
        public static string Email = "Email";
        public static string UserID = "UserID";
        public static string WOS_ResearcherID = "WOS_ResearcherID";
        public static string Joining_Year = "Joining_Year";
        public static string Joining_Date = "Joining_Date";
        public static string Phone = "Phone";
        public static string Nationality = "Nationality";
        public static string CreatedOn = "CreatedOn";
        public static string CreatedBy = "CreatedBy";
        public static string UpdatedOn = "UpdatedOn";
        public static string UpdatedBy = "UpdatedBy";
        public static string Active_flag = "Active_flag";
        public static string Deleted_flag = "Deleted_flag";
        #endregion
    }

    public partial class ResearcherController
    {
        #region Fields
        public int Researcher_ID { get; set; }
        public double? KFUPMID { get; set; }
        public string Status { get; set; }
        public string Full_Name { get; set; }
        public string First_Name { get; set; }
        public string Middle_Name { get; set; }
        public string Last_Name { get; set; }
        public string Department_Code { get; set; }
        public string Academic_Rank { get; set; }
        public string Actual_Job { get; set; }
        public string Email { get; set; }
        public string UserID { get; set; }
        public string WOS_ResearcherID { get; set; }
        public string Joining_Year { get; set; }
        public DateTime? Joining_Date { get; set; }
        public string Phone { get; set; }
        public string Nationality { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }
        public string UpdatedBy { get; set; }
        public bool? Active_flag { get; set; }
        public bool? Deleted_flag { get; set; }
        #endregion

        #region Methods

        #region Get record

        public static ResearcherController getFacultyByID(int id)
        {
            string strStoredProcedure = "sp_rep_GetFacultyByID";

            SqlParameter param = new SqlParameter("@id", id);

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedure, CommandType.StoredProcedure, param);
            return ConvertDataTableToObject(dt).ElementAt(0);
        }

        #endregion

        #region Set/Save Methods

        public static void UpdateResearcherInfo(ResearcherController researcher)
        {
            string strStoredProcedure = "sp_prof_UpdateResearcherInfo";

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@Kfupmid", researcher.KFUPMID));
            param.Add(new SqlParameter("@Status", researcher.Status));
            param.Add(new SqlParameter("@Full_Name", researcher.Full_Name));
            param.Add(new SqlParameter("@First_Name", researcher.First_Name));
            param.Add(new SqlParameter("@Middle_Name", researcher.Middle_Name));
            param.Add(new SqlParameter("@Last_Name", researcher.Last_Name));
            param.Add(new SqlParameter("@Department_Code", researcher.Department_Code));
            param.Add(new SqlParameter("@Academic_Rank", researcher.Academic_Rank));
            param.Add(new SqlParameter("@Actual_Job", researcher.Actual_Job));
            param.Add(new SqlParameter("@Email", researcher.Email));
            param.Add(new SqlParameter("@UserID", researcher.UserID));
            param.Add(new SqlParameter("@WOS_ResearcherID", researcher.WOS_ResearcherID));
            param.Add(new SqlParameter("@Joining_Year", researcher.Joining_Year));
            param.Add(new SqlParameter("@Joining_Date", researcher.Joining_Date));
            param.Add(new SqlParameter("@Phone", researcher.Phone));
            param.Add(new SqlParameter("@UpdatedBy", researcher.UpdatedBy));

            DbAccess.ExecuteQuery(strStoredProcedure, CommandType.StoredProcedure, param);
        }

        #endregion

        #region List

        /// <summary>
        /// Retrieves a list of all KFUPM faculty
        /// </summary>
        /// <returns>List of researchers</returns>
        public static List<ResearcherController> getFacultyAll()
        {
            string strStoredProcedureName = "sp_rep_getFacultyAll";

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Retrieves a list of all KFUPM faculty whose first name starts with a given character
        /// </summary>
        /// <param name="first_char">First character of first name</param>
        /// <returns>List of researchers</returns>
        public static List<ResearcherController> getFacultyByFirstCharacter(char first_char)
        {
            string strStoredProcedureName = "sp_rep_getFacultyAll";

            SqlParameter param = (new SqlParameter("@first_char", first_char));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Retrieves a list of faculty for a college
        /// </summary>
        /// <param name="college_code">College department code</param>
        /// <returns>List of researchers</returns>
        public static List<ResearcherController> getFacultyByCollege(string college_code)
        {
            string strStoredProcedureName = "sp_rep_getFacultyByCollege";

            SqlParameter param = (new SqlParameter("@college_code", college_code));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Retrieves a list of faculty for a college whose first name starts with a given character
        /// </summary>
        /// <param name="college_code">College department code</param>
        /// <param name="first_char">First character of first name</param>
        /// <returns>List of researchers</returns>
        public static List<ResearcherController> getFacultyByCollegeAndFirstCharacter(string college_code, char first_char)
        {
            string strStoredProcedureName = "sp_rep_getFacultyByCollege";

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@college_code", college_code));
            param.Add(new SqlParameter("@first_char", first_char));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Retrieves a list of faculty for a department
        /// </summary>
        /// <param name="dept_code">Department code</param>
        /// <returns>List of researchers</returns>
        public static List<ResearcherController> getFacultyByDepartment(string dept_code)
        {
            string strStoredProcedureName = "sp_rep_getFacultyByDepartment";

            SqlParameter param = (new SqlParameter("@dept_code", dept_code));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Retrieves a list of faculty for a department whose first name starts with a given character
        /// </summary>
        /// <param name="dept_code">Department code</param>
        /// <param name="first_char">First character of first name</param>
        /// <returns>List of researchers</returns>
        public static List<ResearcherController> getFacultyByDepartmentAndFirstCharacter(string dept_code, char first_char)
        {
            string strStoredProcedureName = "sp_rep_getFacultyByDepartment";

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@dept_code", dept_code));
            param.Add(new SqlParameter("@first_char", first_char));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Retrieves a list of all KFUPM faculty whose full name consists of a given substring
        /// </summary>
        /// <param name="search_string">Search substring</param>
        /// <returns>List of researchers</returns>
        public static List<ResearcherController> SearchFacultyByName(string search_string)
        {
            string strStoredProcedureName = "sp_rep_SearchFacultyByName";

            SqlParameter param = (new SqlParameter("@search_string", search_string));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Retrieves a list of faculty for a college whose full name consists of a given substring
        /// </summary>
        /// <param name="college_code">College department code</param>
        /// <param name="search_string">Search substring</param>
        /// <returns>List of researchers</returns>
        public static List<ResearcherController> SearchFacultyByNameAndCollege(string search_string, string college_code)
        {
            string strStoredProcedureName = "sp_rep_SearchFacultyByNameAndCollege";

            #region Add parameters

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@search_string", search_string));
            param.Add(new SqlParameter("@college_code", college_code));

            #endregion

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Retrieves a list of faculty for a department whose full name consists of a given substring
        /// </summary>
        /// <param name="dept_code">Department code</param>
        /// <param name="search_string">Search substring</param>
        /// <returns>List of researchers</returns>
        public static List<ResearcherController> SearchFacultyByNameAndDepartment(string search_string, string dept_code)
        {
            string strStoredProcedureName = "sp_rep_SearchFacultyByNameAndDepartment";

            #region Add parameters

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@search_string", search_string));
            param.Add(new SqlParameter("@dept_code", dept_code));

            #endregion

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }

        #endregion

        #region Department name

        private static string getDepartmentName(string dept_code)
        {
            string strCommandText = "SELECT Department_Name FROM Departments WHERE Department_Code = @dept_code";

            SqlParameter param = (new SqlParameter("@dept_code", dept_code));

            DataTable dt = DbAccess.ExecuteQuery(strCommandText, CommandType.Text, param);

            if (dt != null && dt.Rows.Count > 0 && dt.Rows[0][0] != DBNull.Value)
                return dt.Rows[0][0].ToString();

            return string.Empty;

            //string query = "SELECT DepartmentName FROM Departments WHERE DepartmentCode = \"" + dept_code + "\"";
            //DataTable dt = Connection.Query(query);
            //return dt.Rows[0][0].ToString();
        }

        #endregion

        #region Convert DataTable to Object

        private static List<ResearcherController> ConvertDataTableToObject(DataTable dt)
        {
            List<ResearcherController> list = dt.AsEnumerable()
            .Select(dr =>
            new ResearcherController
            {
                Researcher_ID = dr.Field<int>("Researcher_ID"),
                KFUPMID = dr.Field<double?>("KFUPMID"),
                Status = dr.Field<string>("Status"),
                Full_Name = dr.Field<string>("Full_Name"),
                First_Name = dr.Field<string>("First_Name"),
                Middle_Name = dr.Field<string>("Middle_Name"),
                Last_Name = dr.Field<string>("Last_Name"),
                Department_Code = dr.Field<string>("Department_Code"),
                Academic_Rank = dr.Field<string>("Academic_Rank"),
                Actual_Job = dr.Field<string>("Actual_Job"),
                Email = dr.Field<string>("Email"),
                UserID = dr.Field<string>("UserID"),
                WOS_ResearcherID = dr.Field<string>("WOS_ResearcherID"),
                Joining_Year = dr.Field<string>("Joining_Year"),
                Joining_Date = dr.Field<System.DateTime?>("Joining_Date"),
                Phone = dr.Field<string>("Phone"),
                Nationality = dr.Field<string>("Nationality"),
                CreatedOn = dr.Field<System.DateTime>("CreatedOn"),
                CreatedBy = dr.Field<string>("CreatedBy"),
                UpdatedOn = dr.Field<System.DateTime?>("UpdatedOn"),
                UpdatedBy = dr.Field<string>("UpdatedBy"),
                Active_flag = dr.Field<bool?>("Active_flag"),
                Deleted_flag = dr.Field<bool?>("Deleted_flag")
            }
            ).ToList();

            return list;
        }

        #endregion

        #endregion
    }
}
