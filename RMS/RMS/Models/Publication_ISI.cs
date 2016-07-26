
using App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace Models
{
    public partial class clsPublication_ISI
    {
        #region Fields
        public static string Paper_Title = "Paper_Title";
        public static string Authors = "Authors";
        public static string Source = "Source";
        public static string Language = "Language";
        public static string WOS_Number = "WOS_Number";
        public static string Abstract = "Abstract";
        public static string Document_Type = "Document_Type";
        public static string Conference_Title = "Conference_Title";
        public static string Conference_Dates = "Conference_Dates";
        public static string Conference_Location = "Conference_Location";
        public static string Keywords = "Keywords";
        public static string Authors_Address = "Authors_Address";
        public static string Reprint_Address = "Reprint_Address";
        public static string Funding_Agency = "Funding_Agency";
        public static string Funding_Text = "Funding_Text";
        public static string Time_Cited = "Time_Cited";
        public static string Publisher = "Publisher";
        public static string ISSN = "ISSN";
        public static string Publication_Date = "Publication_Date";
        public static string Publication_Month = "Publication_Month";
        public static string Publication_Year = "Publication_Year";
        public static string Volume = "Volume";
        public static string Issue = "Issue";
        public static string Wide_Category = "Wide_Category";
        public static string Subject_Category = "Subject_Category";
        public static string Impact_Factor_Last_Year = "Impact_Factor_Last_Year";
        public static string Impact_Factor_Publication_Year = "Impact_Factor_Publication_Year";
        public static string QClass = "QClass";
        public static string CreatedOn = "CreatedOn";
        public static string CreatedBy = "CreatedBy";
        public static string UpdatedOn = "UpdatedOn";
        public static string UpdatedBy = "UpdatedBy";
        public static string Active_flag = "Active_flag";
        public static string Deleted_flag = "Deleted_flag";

        #endregion
    }

    public partial class Publication_ISIController
    {
        #region Fields
        public int Publication_ISI_ID { get; set; }
        public string ISI_Category { get; set; }
        public string WOS_Number { get; set; }
        public string Authors { get; set; }
        public string Paper_Title { get; set; }
        public string Source { get; set; }
        public string Language { get; set; }
        public string Abstract { get; set; }
        public string Document_Type { get; set; }
        public string Conference_Title { get; set; }
        public string Conference_Dates { get; set; }
        public string Conference_Location { get; set; }
        public string Keywords { get; set; }
        public string Authors_Address { get; set; }
        public string Reprint_Address { get; set; }
        public string Funding_Agency { get; set; }
        public string Funding_Text { get; set; }
        public int? Time_Cited { get; set; }
        public string Publisher { get; set; }
        public string ISSN { get; set; }
        public DateTime? Publication_Date { get; set; }
        public string Publication_Month { get; set; }
        public int? Publication_Year { get; set; }
        public string Volume { get; set; }
        public string Issue { get; set; }
        public string Wide_Category { get; set; }
        public string Subject_Category { get; set; }
        public string Impact_Factor_Last_Year { get; set; }
        public string Impact_Factor_Publication_Year { get; set; }
        public string QClass { get; set; }
        public DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }
        public string UpdatedBy { get; set; }
        public bool? Active_flag { get; set; }
        public bool? Deleted_flag { get; set; }
        #endregion

        #region Methods

        #region List

        #region By document type

        /// <summary>
        /// Returns a list of all KFUPM ISI Publications for a document type
        /// </summary>
        /// <param name="strDocType">Document type</param>
        /// <param name="strFromYear">From year (if not specified; retrieves from 2006)</param>
        /// <param name="strToYear">To year (if not specified: retrieves to current year</param>
        /// <returns>List of ISI publications</returns>
        public static List<Publication_ISIController> getISIPublicationsAll(string strDocType, string strFromYear = null, string strToYear = null)
        {
            string strStoredProcedureName = "sp_rep_getISIPublicationsAll";

            #region Add parameters

            List<SqlParameter> parameters = new List<SqlParameter>();

            parameters.Add(new SqlParameter("@doctype", strDocType));

            if (strFromYear != null)
                parameters.Add(new SqlParameter("@fromYear", strFromYear));

            if (strToYear != null)
                parameters.Add(new SqlParameter("@toYear", strToYear));

            #endregion

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, parameters);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Returns a list of ISI Publications for all colleges for a document type
        /// </summary>
        /// <param name="strDocType">Document type</param>
        /// <param name="strFromYear">From year (if not specified; retrieves from 2006)</param>
        /// <param name="strToYear">To year (if not specified: retrieves to current year</param>
        /// <returns>List of ISI publications</returns>
        public static List<Publication_ISIController> getISIPublicationsAllCollegesByDocType(string strDocType, string strFromYear = null, string strToYear = null)
        {
            string strStoredProcedureName = "sp_rep_GetISIPublicationsAllCollegesByDocType";

            #region Add parameters

            List<SqlParameter> parameters = new List<SqlParameter>();

            parameters.Add(new SqlParameter("@doctype", strDocType));

            if (strFromYear != null)
                parameters.Add(new SqlParameter("@fromYear", strFromYear));

            if (strToYear != null)
                parameters.Add(new SqlParameter("@toYear", strToYear));

            #endregion

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, parameters);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Returns a list of ISI Publications for a single college for a document type
        /// </summary>
        /// <param name="strCollegeCode">College department code</param>
        /// <param name="strDocType">Document type</param>
        /// <param name="strFromYear">From year (if not specified; retrieves from 2006)</param>
        /// <param name="strToYear">To year (if not specified: retrieves to current year</param>
        /// <returns>List of ISI publications</returns>
        public static List<Publication_ISIController> getISIPublicationsSingleCollegeByDocType(string strCollegeCode, string strDocType = null, string strFromYear = null, string strToYear = null)
        {
            string strStoredProcedureName = "sp_rep_GetISIPublicationsForSingleCollegeByDocType";

            #region Add parameters

            List<SqlParameter> parameters = new List<SqlParameter>();

            parameters.Add(new SqlParameter("@college_code", strCollegeCode));

            parameters.Add(new SqlParameter("@doctype", strDocType));

            if (strFromYear != null)
                parameters.Add(new SqlParameter("@fromYear", strFromYear));

            if (strToYear != null)
                parameters.Add(new SqlParameter("@toYear", strToYear));

            #endregion

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, parameters);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Returns a list of ISI Publications for a single department for a document type
        /// </summary>
        /// <param name="strDeptCode">Department code</param>
        /// <param name="strDocType">Document type</param>
        /// <param name="strFromYear">From year (if not specified; retrieves from 2006)</param>
        /// <param name="strToYear">To year (if not specified: retrieves to current year</param>
        /// <returns>List of ISI publications</returns>
        public static List<Publication_ISIController> getISIPublicationsSingleDepartmentByDocType(string strDeptCode, string strDocType = null, string strFromYear = null, string strToYear = null)
        {
            string strStoredProcedureName = "sp_rep_GetISIPublicationsForSingleDepartmentByDocType";

            #region Add parameters

            List<SqlParameter> parameters = new List<SqlParameter>();

            parameters.Add(new SqlParameter("@dept_code", strDeptCode));

            parameters.Add(new SqlParameter("@doctype", strDocType));

            if (strFromYear != null)
                parameters.Add(new SqlParameter("@fromYear", strFromYear));

            if (strToYear != null)
                parameters.Add(new SqlParameter("@toYear", strToYear));

            #endregion

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, parameters);

            return ConvertDataTableToObject(dt);
        }

        #endregion

        #region All document types 
        
        /// <summary>
        /// Returns a list of all KFUPM ISI Publications
        /// </summary>
        /// <returns>List of ISI Publications ordered by year</returns>
        public static List<Publication_ISIController> GetAllISIPublicationsForAllDocTypes()
        {
            string strStoredProcedureName = "sp_rep_GetAllISIPublicationsForAllDocTypes";

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure);

            return ConvertDataTableToObject(dt);
        }


        /// <summary>
        /// Returns a list of ISI Publications for a faculty
        /// </summary>
        /// <param name="id">KFUPM ID of faculty</param>
        /// <returns>List of ISI Publications ordered by year</returns>
        public static List<Publication_ISIController> getISIPublicationsByFaculty(int id)
        {
            string strStoredProcedureName = "sp_rep_getISIPublicationsByFaculty";

            SqlParameter param = (new SqlParameter("@id", id));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }

        #endregion

        #endregion

        #region List document types

        /// <summary>
        /// Retrieves a list of document types
        /// </summary>
        /// <returns>List of distinct document types</returns>
        public static List<string> GetDistinctISIDocumentTypes()
        {
            string strStoredProcedureName = "sp_rep_GetDistinctISIDocumentTypes";

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure);

            List<string> list = dt.AsEnumerable()
                           .Select(r => r.Field<string>("Document_Type"))
                           .ToList();

            return list;
        }

        #endregion

        #region Stats

        #region Yearly Publication Count Methods

        /// <summary>
        /// Retrieves yearly ISI publication count in a table for a faculty
        /// </summary>
        /// <param name="id">KFUPM ID of faculty</param>
        /// <returns>Table - Col1: Year, Col2: Count</returns>
        public static DataTable getStatsForISIPublicationsByFaculty(int id)
        {
            string strStoredProcedureName = "sp_rep_getStatsForISIPublicationsByFaculty";

            SqlParameter param = (new SqlParameter("@id", id));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return dt;
        }

        #region ISI Publication Stats
        /// <summary>
        /// Retrieves yearly ISI publication count in a table for all colleges
        /// </summary>       
        /// <returns>Table - Col1: Publication_Year, Col2: Publicaiton_Count</returns>
        public static DataTable GetPubStatsForISIPublicationsAllCollegesAllYears(string strDocType, string strFromYear = null, string strToYear = null)
        {
            string strStoredProcedureName = "sp_rep_GetPubStatsForISIPublicationsAllCollegesAllYears";

            #region Add parameters

            List<SqlParameter> parameters = new List<SqlParameter>();

            parameters.Add(new SqlParameter("@doctype", strDocType));

            if (strFromYear != null)
                parameters.Add(new SqlParameter("@fromYear", strFromYear));

            if (strToYear != null)
                parameters.Add(new SqlParameter("@toYear", strToYear));

            #endregion

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, parameters);

            return dt;
        }

        /// <summary>
        /// Retrieves yearly ISI publication count in a table for single college
        /// </summary>       
        /// <returns>Table - Col1: Publication_Year, Col2: Publicaiton_Count</returns>
        public static DataTable GetPubStatsForISIPublicationsForSingleCollege(string strCollegeCode, string strDocType, string strFromYear = null, string strToYear = null)
        {
            string strStoredProcedureName = "sp_rep_GetPubStatsForISIPublicationsForSingleCollege";

            #region Add parameters

            List<SqlParameter> parameters = new List<SqlParameter>();

            parameters.Add(new SqlParameter("@college_code", strCollegeCode));
            parameters.Add(new SqlParameter("@doctype", strDocType));

            if (strFromYear != null)
                parameters.Add(new SqlParameter("@fromYear", strFromYear));

            if (strToYear != null)
                parameters.Add(new SqlParameter("@toYear", strToYear));

            #endregion

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, parameters);

            return dt;
        }

        /// <summary>
        /// Retrieves yearly ISI publication count in a table for single department
        /// </summary>       
        /// <returns>Table - Col1: Publication_Year, Col2: Publicaiton_Count</returns>
        public static DataTable GetPubStatsForISIPublicationsForSingleDepartment(string strDepartmentCode, string strDocType, string strFromYear = null, string strToYear = null)
        {
            string strStoredProcedureName = "sp_rep_GetPubStatsForISIPublicationsForSingleDepartment";

            #region Add parameters

            List<SqlParameter> parameters = new List<SqlParameter>();

            parameters.Add(new SqlParameter("@dept_code", strDepartmentCode));
            parameters.Add(new SqlParameter("@doctype", strDocType));

            if (strFromYear != null)
                parameters.Add(new SqlParameter("@fromYear", strFromYear));

            if (strToYear != null)
                parameters.Add(new SqlParameter("@toYear", strToYear));

            #endregion

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, parameters);

            return dt;
        }

        #endregion
        #endregion

        #region Citation Times Methods
        public static DataTable getCitedTimesForSingleCollege(string collegeCode, int fromYear = 0, int toYear = 0)
        {
            string strStoredProcedureName = "sp_rep_GetCitationStatsForISIPublicationsForSingleCollege";

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@college_code", collegeCode));

            if (fromYear != 0)
                param.Add(new SqlParameter("@fromYear", fromYear));

            if (toYear != 0)
                param.Add(new SqlParameter("@toYear", toYear));

            DataTable table = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return table;
        }

        public static DataTable getCitedTimesForSingleDepartment(string deptCode, int fromYear = 0, int toYear = 0)
        {
            string strStoredProcedureName = "sp_rep_GetCitationStatsForISIPublicationsForSingleDepartment";

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@dept_code", deptCode));

            if (fromYear != 0)
                param.Add(new SqlParameter("@fromYear", fromYear));

            if (toYear != 0)
                param.Add(new SqlParameter("@toYear", toYear));

            DataTable table = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return table;
        }

        public static DataTable getCitedTimesForAllColleges(int fromYear = 0, int toYear = 0)
        {
            string strStoredProcedureName = "sp_rep_GetCitationStatsForISIPublicationsForAllColleges";

            List<SqlParameter> param = new List<SqlParameter>();

            if (fromYear != 0)
                param.Add(new SqlParameter("@fromYear", fromYear));

            if (toYear != 0)
                param.Add(new SqlParameter("@toYear", toYear));

            DataTable table = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return table;
        }

        #endregion

        #region Student Publications Methods

        public static DataTable getStudentPublicationCountForAllDepartemnt(int fromYear = 0, int toYear = 0)
        {
            string strStoredProcedureName = "sp_rep_GetStatsForStudentISIPublicationsForAllDepartment";

            List<SqlParameter> param = new List<SqlParameter>();

            if (fromYear != 0)
                param.Add(new SqlParameter("@fromYear", fromYear));

            if (toYear != 0)
                param.Add(new SqlParameter("@toYear", toYear));

            DataTable table = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return table;
        }

        public static DataTable getStudentPublicationCountForSingleDepartment(string deptCode, int fromYear = 0, int toYear = 0)
        {
            string strStoredProcedureName = "sp_rep_GetStatsForStudentISIPublicationsForSingleDepartment";

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@deptCode", deptCode));

            if (fromYear != 0)
                param.Add(new SqlParameter("@fromYear", fromYear));

            if (toYear != 0)
                param.Add(new SqlParameter("@toYear", toYear));

            DataTable table = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return table;
        }
        #endregion

        #region Student Citation Times Methods

        public static DataTable getStudentCitationTimesForAllDepartment(int fromYear = 0, int toYear = 0)
        {
            string strStoredProcedureName = "sp_rep_GetStatsForStudentCitationTimesForAllDepartment";

            List<SqlParameter> param = new List<SqlParameter>();

            if (fromYear != 0)
                param.Add(new SqlParameter("@fromYear", fromYear));

            if (toYear != 0)
                param.Add(new SqlParameter("@toYear", toYear));

            DataTable table = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return table;
        }

        public static DataTable getStudentCitationTimesForSingleDepartment(string deptCode, int fromYear = 0, int toYear = 0)
        {
            string strStoredProcedureName = "sp_rep_GetStatsForStudentCitationTimesForSingleDepartment";

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@deptCode", deptCode));

            if (fromYear != 0)
                param.Add(new SqlParameter("@fromYear", fromYear));

            if (toYear != 0)
                param.Add(new SqlParameter("@toYear", toYear));

            DataTable table = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return table;
        }
        #endregion

        #region Search for ISI Publiction with author is not registered 

        public static DataTable searchISIPublicationsByAuthorsAndMissingKFUPMIDAndTitle(string title, string lastName, int id)
        {
            string strStoredProcedureName = "sp_rep_SearchISIPublicationsByAuthorsAndMissingKFUPMIDAndTitle";

            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@title", title));
            param.Add(new SqlParameter("@last_name", lastName));
            param.Add(new SqlParameter("@id", id));

            DataTable table = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return table;
        }

        public static DataTable searchISIPublicationsByAuthorsAndMissingKFUPMIDAndWOS(int WOS, string lastName, int id)
        {
            string strStoredProcedureName = "sp_rep_SearchISIPublicationsByAuthorsAndMissingKFUPMIDAndWOS";

            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@WOS", WOS.ToString()));
            param.Add(new SqlParameter("@last_name", lastName));
            param.Add(new SqlParameter("@id", id));

            DataTable table = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return table;
        }

        public static DataTable searchISIPublicationsByAuthorsAndMissingKFUPMIDAndYear(int year, string lastName, int id)
        {
            string strStoredProcedureName = "sp_rep_SearchISIPublicationsByAuthorsAndMissingKFUPMIDAndYear";

            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@year", year));
            param.Add(new SqlParameter("@last_name", lastName));    
            param.Add(new SqlParameter("@id", id));

            DataTable table = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return table;
        }
        #endregion

        #region Faculty

        /// <summary>
        /// Retrieves a table of the yealy publication count for each faculty for all colleges
        /// </summary>
        /// <param name="start_year">From year (if not specified; retrieves from 2006)</param>
        /// <param name="end_year">To year (if not specified; retrieves to current year)</param>
        /// <returns>DataTable of faculty/yearly publication count</returns>
        public static DataTable GetFacultyStatsForPublicationCountByYearForAllColleges(int start_year = 0, int end_year = 0)
        {
            string strStoredProcedureName = "sp_rep_GetPublicationStatsForFacultyAllCollegesByYear";

            List<SqlParameter> param = new List<SqlParameter>();
            if (start_year != 0)
                param.Add(new SqlParameter("@start_year", start_year));
            if (end_year != 0)
                param.Add(new SqlParameter("@end_year", end_year));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);
            return dt;
        }


        /// <summary>
        /// Retrieves a table of the yealy publication count for each faculty for a college
        /// </summary>
        /// <param name="college_code">College department code</param>
        /// <param name="start_year">From year (if not specified; retrieves from 2006)</param>
        /// <param name="end_year">To year (if not specified; retrieves to current year)</param>
        /// <returns>DataTable of faculty/yearly publication count</returns>
        public static DataTable GetFacultyStatsForPublicationCountByYearForSingleCollege(string college_code, int start_year = 0, int end_year = 0)
        {
            string strStoredProcedureName = "sp_rep_GetPublicationStatsForFacultySingleCollegeByYear";
            List<SqlParameter> param = new List<SqlParameter>();
            if (start_year != 0)
                param.Add(new SqlParameter("@start_year", start_year));
            if (end_year != 0)
                param.Add(new SqlParameter("@end_year", end_year));
            param.Add(new SqlParameter("@college_code", college_code));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);
            return dt;
        }


        /// <summary>
        /// Retrieves a table of the yealy publication count for each faculty for a department
        /// </summary>
        /// <param name="dept_code">Department code</param>
        /// <param name="start_year">From year (if not specified; retrieves from 2006)</param>
        /// <param name="end_year">To year (if not specified; retrieves to current year)</param>
        /// <returns>DataTable of faculty/yearly publication count</returns>
        public static DataTable GetFacultyStatsForPublicationCountByYearForSingleDepartment(string dept_code, int start_year = 0, int end_year = 0)
        {
            string strStoredProcedureName = "sp_rep_GetPublicationStatsForFacultySingleDepartmentByYear";
            List<SqlParameter> param = new List<SqlParameter>();
            if (start_year != 0)
                param.Add(new SqlParameter("@start_year", start_year));
            if (end_year != 0)
                param.Add(new SqlParameter("@end_year", end_year));
            param.Add(new SqlParameter("@dept_code", dept_code));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);
            return dt;
        }


        /// <summary>
        /// Retrieves a table of the yealy citation count for each faculty for all colleges
        /// </summary>        
        /// <param name="start_year">From year (if not specified; retrieves from 2006)</param>
        /// <param name="end_year">To year (if not specified; retrieves to current year)</param>
        /// <returns>DataTable of faculty/yearly citation count</returns>
        public static DataTable GetFacultyStatsForCitationCountByYearForAllColleges(int start_year = 0, int end_year = 0)
        {
            string strStoredProcedureName = "sp_rep_GetCitationStatsForFacultyAllCollegesByYear";
            List<SqlParameter> param = new List<SqlParameter>();
            if (start_year != 0)
                param.Add(new SqlParameter("@start_year", start_year));
            if (end_year != 0)
                param.Add(new SqlParameter("@end_year", end_year));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);
            return dt;
        }


        /// <summary>
        /// Retrieves a table of the yealy citation count for each faculty for a college
        /// </summary>        
        /// <param name="college_code">College department code</param>
        /// <param name="start_year">From year (if not specified; retrieves from 2006)</param>
        /// <param name="end_year">To year (if not specified; retrieves to current year)</param>
        /// <returns>DataTable of faculty/yearly citation count</returns>
        public static DataTable GetFacultyStatsForCitationCountByYearForSingleCollege(string college_code, int start_year = 0, int end_year = 0)
        {
            string strStoredProcedureName = "sp_rep_GetCitationStatsForFacultySingleCollegeByYear";
            List<SqlParameter> param = new List<SqlParameter>();
            if (start_year != 0)
                param.Add(new SqlParameter("@start_year", start_year));
            if (end_year != 0)
                param.Add(new SqlParameter("@end_year", end_year));
            param.Add(new SqlParameter("@college_code", college_code));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);
            return dt;
        }


        /// <summary>
        /// Retrieves a table of the yealy citation count for each faculty for a department
        /// </summary>
        /// <param name="dept_code">Department code</param>
        /// <param name="start_year">From year (if not specified; retrieves from 2006)</param>
        /// <param name="end_year">To year (if not specified; retrieves to current year)</param>
        /// <returns>DataTable of faculty/yearly citation count</returns>
        public static DataTable GetFacultyStatsForCitationCountByYearForSingleDepartment(string dept_code, int start_year = 0, int end_year = 0)
        {
            string strStoredProcedureName = "sp_rep_GetCitationStatsForFacultySingleDepartmentByYear";
            List<SqlParameter> param = new List<SqlParameter>();
            if (start_year != 0)
                param.Add(new SqlParameter("@start_year", start_year));
            if (end_year != 0)
                param.Add(new SqlParameter("@end_year", end_year));
            param.Add(new SqlParameter("@dept_code", dept_code));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);
            return dt;
        }

        #endregion

        #endregion

        #region ConvertDataTableToObject

        /// <summary>
        /// Returns a list of objects given a datatable
        /// </summary>
        /// <param name="dt">DataTable with same columns as attributes of class object</param>
        /// <returns></returns>
        private static List<Publication_ISIController> ConvertDataTableToObject(DataTable dt)
        {
            var list = dt.AsEnumerable()
                .Select(dr =>
                new Publication_ISIController
                {
                    Publication_ISI_ID = Convert.ToInt32(dr.Field<int>("Publication_ISI_ID")),
                    ISI_Category = dr.Field<string>("ISI_Category"),
                    WOS_Number = dr.Field<string>("WOS_Number"),
                    Authors = dr.Field<string>("Authors"),
                    Paper_Title = dr.Field<string>("Paper_Title"),
                    Source = dr.Field<string>("Source"),
                    Language = dr.Field<string>("Language"),
                    Abstract = dr.Field<string>("Abstract"),
                    Document_Type = dr.Field<string>("Document_Type"),
                    Conference_Title = dr.Field<string>("Conference_Title"),
                    Conference_Dates = dr.Field<string>("Conference_Dates"),
                    Conference_Location = dr.Field<string>("Conference_Location"),
                    Keywords = dr.Field<string>("Keywords"),
                    Authors_Address = dr.Field<string>("Authors_Address"),
                    Reprint_Address = dr.Field<string>("Reprint_Address"),
                    Funding_Agency = dr.Field<string>("Funding_Agency"),
                    Funding_Text = dr.Field<string>("Funding_Text"),
                    Time_Cited = Convert.ToInt32(dr.Field<int?>("Time_Cited")),
                    Publisher = dr.Field<string>("Publisher"),
                    ISSN = dr.Field<string>("ISSN"),
                    Publication_Date = dr.Field<System.DateTime?>("Publication_Date"),
                    Publication_Month = dr.Field<string>("Publication_Month"),
                    Publication_Year = Convert.ToInt32(dr.Field<int?>("Publication_Year")),
                    Wide_Category = dr.Field<string>("Wide_Category"),
                    Subject_Category = dr.Field<string>("Subject_Category"),
                    Impact_Factor_Last_Year = dr.Field<string>("Impact_Factor_Last_Year"),
                    Impact_Factor_Publication_Year = dr.Field<string>("Impact_Factor_Publication_Year"),
                    QClass = dr.Field<string>("QClass"),
                    Deleted_flag = dr.Field<bool?>("Deleted_flag"),
                    Active_flag = dr.Field<bool?>("Active_flag"),
                    CreatedBy = dr.Field<string>("CreatedBy"),
                    CreatedOn = dr.Field<System.DateTime>("CreatedOn")
                }
                ).ToList();

            return list;
        }

        #endregion

        #endregion

    }
}
