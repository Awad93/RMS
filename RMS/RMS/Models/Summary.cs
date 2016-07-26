using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using App_Code;

namespace Models
{
    public class Summary
    {
        #region Methods
        /// <summary>
        /// Retrieves statistics of KFUPM from the database in each year
        /// like number of ISI Publications of KFUPM in each year from start year to end year
        /// </summary>
        /// <param name="start_year">Defines the start year that the statistics start from it (by default = 0)</param>
        /// <param name="end_year">Defines the end year that the statistics end with it (by default = 0)</param>
        /// <returns>Datatable which contains all KFUPM statistics from the start year to the end year(if they are specified)</returns>
        public static DataTable SummaryAll(int start_year=0, int end_year=0)
        {
            string strStoredProcedureName = "sp_rep_StatsAll";

            List<SqlParameter> param = new List<SqlParameter>();
            if (start_year != 0)
                param.Add(new SqlParameter("@start_year", start_year));
            else
                param.Add(new SqlParameter("@start_year", DateTime.Now.Year - 8));
            if (end_year != 0)
                param.Add(new SqlParameter("@end_year", end_year));
            else
                param.Add(new SqlParameter("@end_year", DateTime.Now.Year));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return dt;
        }

        /// <summary>
        /// Retrieves statistics of specific college from the database in each year
        /// like number of ISI Publications of specific college in each year from start year to end year
        /// </summary>
        /// <param name="college_code">Defines the college code of a specific college that the statistics are related to it</param>
        /// <param name="start_year">Defines the start year that the statistics start from it (by default = 0)</param>
        /// <param name="end_year">Defines the end year that the statistics end with it (by default = 0)</param>
        /// <returns>Datatable which contains the specific college statistics from the start year to the end year(if they are specified)</returns>
        public static DataTable StatsByCollege(string college_code, int start_year=0, int end_year = 0)
        {
            string strStoredProcedureName = "sp_rep_StatsByCollege";

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@college_code", college_code));
            if(start_year != 0)
                param.Add(new SqlParameter("@start_year", start_year));
            else
                param.Add(new SqlParameter("@start_year", DateTime.Now.Year - 8));
            if (end_year != 0)
                param.Add(new SqlParameter("@end_year", end_year));
            else
                param.Add(new SqlParameter("@end_year", DateTime.Now.Year));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return dt;
        }

        /// <summary>
        /// Retrieves statistics of specific department from the database in each year
        /// like number of ISI Publications of specific department in each year from start year to end year
        /// </summary>
        /// <param name="dept_code">Defines the department code of a specific department that the statistics are related to it</param>
        /// <param name="start_year">Defines the start year that the statistics start from it (by default = 0)</param>
        /// <param name="end_year">Defines the end year that the statistics end with it (by default = 0)</param>
        /// <returns>Datatable which contains the specific department statistics from the start year to the end year(if they are specified)</returns>
        public static DataTable StatsByDepartment(string dept_code, int start_year = 0, int end_year = 0)
        {
            string strStoredProcedureName = "sp_rep_StatsByDepartment";

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@dept_code", dept_code));
            if (start_year != 0)
                param.Add(new SqlParameter("@start_year", start_year));
            else
                param.Add(new SqlParameter("@start_year", DateTime.Now.Year - 8));
            if (end_year != 0)
                param.Add(new SqlParameter("@end_year", end_year));
            else
                param.Add(new SqlParameter("@end_year", DateTime.Now.Year));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return dt;
        }

        /// <summary>
        /// Retrieves statistics of specific faculty from the database in each year
        /// like number of ISI Publications of specific faculty in each year from start year to end year
        /// </summary>
        /// <param name="faculty_id">Defines the faculty id of a specific faculty that the statistics are related to him</param>
        /// <param name="start_year">Defines the start year that the statistics start from it (by default = 0)</param>
        /// <param name="end_year">Defines the end year that the statistics end with it (by default = 0)</param>
        /// <returns>Datatable which contains the specific faculty statistics from the start year to the end year(if they are specified)</returns>
        public static DataTable StatsByFaculty(int faculty_id, int start_year = 0, int end_year = 0)
        {
            string strStoredProcedureName = "sp_rep_StatsByFaculty";

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@id", faculty_id));
            if (start_year != 0)
                param.Add(new SqlParameter("@start_year", start_year));
            else
                param.Add(new SqlParameter("@start_year", DateTime.Now.Year - 8));
            if (end_year != 0)
                param.Add(new SqlParameter("@end_year", end_year));
            else
                param.Add(new SqlParameter("@end_year", DateTime.Now.Year));

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return dt;
        }

        /// <summary>
        /// Retrives a single row DataTable that filled by counting the number of items by KFUPM
        /// items: ISI Publications, NonISI Publications, Books, Patents, Conferences, Projects
        /// </summary>
        /// <returns></returns>
        public static DataTable repositoryItemCountsAll()
        {
            string strStoredProcedureName = "sp_rep_getRepositoryItemCountsAll";

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure);

            return dt;
        }

        /// <summary>
        /// Retrives a single row DataTable that filled by counting the number of items by specific college
        /// items: ISI Publications, NonISI Publications, Books, Patents, Conferences, Projects
        /// </summary>
        /// <param name="college_code">Defines the college code of the specific college</param>
        /// <returns></returns>
        public static DataTable repositoryItemCountsByCollege(string college_code)
        {
            string strStoredProcedureName = "sp_rep_getRepositoryItemCountsByCollege";

            SqlParameter param = new SqlParameter("@college_code", college_code);

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return dt;
        }

        /// <summary>
        /// Retrives a single row DataTable that filled by counting the number of items by specific department
        /// items: ISI Publications, NonISI Publications, Books, Patents, Conferences, Projects
        /// </summary>
        /// <param name="dept_code">Defines the department code of the specific department</param>
        /// <returns></returns>
        public static DataTable repositoryItemCountsByDepartment(string dept_code)
        {
            string strStoredProcedureName = "sp_rep_getRepositoryItemCountsByDepartment";

            SqlParameter param = new SqlParameter("@dept_code", dept_code);

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return dt;
        }

        /// <summary>
        /// Retrives a single row DataTable that filled by counting the number of items by specific faculty
        /// items: ISI Publications, NonISI Publications, Books, Patents, Conferences, Projects
        /// </summary>
        /// <param name="faculty_id">Defines the faculty id of the specific faculty</param>
        /// <returns></returns>
        public static DataTable repositoryItemCountsByFaculty(int faculty_id)
        {
            string strStoredProcedureName = "sp_rep_getRepositoryItemCountsByFaculty";

            SqlParameter param = new SqlParameter("@id", faculty_id);

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return dt;
        }
        #endregion
    }
}