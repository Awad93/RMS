
namespace Models
{
    using App_Code;
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using System.Linq;
    public partial class clsStudent_Involvement
    {
        #region Fields
        public static string Student_Involvement_ID = "Student_Involvement_ID ";
        public static string Student_ID = "Student_ID ";
        public static string Student_Name = "Student_Name";
        public static string WOS_Number = "WOS_Number";
        public static string Dept_Code = "Dept_Code";
        public static string is_First_Author = "is_First_Author";       
        public static string CreatedOn = "CreatedOn";
        public static string CreatedBy = "CreatedBy";
        public static string UpdatedOn = "UpdatedOn";
        public static string UpdatedBy = "UpdatedBy";
        public static string Active_flag = "Active_flag";
        public static string Deleted_flag = "Deleted_flag";
        #endregion
    }

    public partial class Student_InvolvementController
    {
        #region Fields
        public int Student_Involvement_ID { get; set; }
        public string Student_ID { get; set; }
        public string Student_Name { get; set; }
        public string WOS_Number { get; set; }
        public string Dept_Code { get; set; }  
        public bool is_First_Author { get; set; }
        public DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }
        public string UpdatedBy { get; set; }
        public bool? Active_flag { get; set; }
        public bool? Deleted_flag { get; set; }
        #endregion

        #region Methods

        #region List names
        
        /// <summary>
        /// Retrieves a string list of names of students who are authors in an ISI publication 
        /// </summary>
        /// <param name="wos_number">WOS Number</param>
        /// <returns></returns>
        public static List<string> GetStudentNamesForISIPublication(string wos_number)
        {
            string strStoredProcedure = "sp_prof_GetStudentNamesForISIPublication";

            SqlParameter param = new SqlParameter("@wos_number", wos_number);

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedure, CommandType.StoredProcedure, param);

            List<string> list = dt.AsEnumerable()
                          .Select(r => r.Field<string>("Student_Name"))
                          .ToList();

            return list;
        }

        #endregion

        #region Add new entry

        /// <summary>
        /// Inserts a new record to the Student Involvement table
        /// </summary>
        /// <param name="name">Student name</param>
        /// <param name="wos">WOS number</param>
        public static void AddStudentInvolvement(string name, string wos)
        {
            string strStoredProcedure = "sp_prof_AddStudentInvolvement";

            #region Add parameters
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@name", name);
            param[1] = new SqlParameter("@wos_number", wos);
            #endregion

            DbAccess.ExecuteNonQuery(strStoredProcedure, CommandType.StoredProcedure, param);
        }

        #endregion

        #region Convert DataTable to List<Object>
        /// <summary>
        /// Returns a list of objects given a datatable
        /// </summary>
        /// <param name="dt">DataTable with same columns as attributes of class object</param>
        /// <returns></returns>
        private static List<Student_InvolvementController> ConvertDataTableToObject(DataTable dt)
        {
            var list = dt.AsEnumerable()
                .Select(dr =>
                new Student_InvolvementController
                {
                    Student_Involvement_ID = Convert.ToInt32(dr.Field<int>(clsStudent_Involvement.Student_Involvement_ID)),
                    Student_ID = dr.Field<string>(clsStudent_Involvement.Student_ID),
                    Student_Name = dr.Field<string>(clsStudent_Involvement.Student_Name),
                    WOS_Number = dr.Field<string>(clsStudent_Involvement.WOS_Number),
                    Dept_Code = dr.Field<string>(clsStudent_Involvement.Dept_Code),
                    is_First_Author = dr.Field<bool>(clsStudent_Involvement.is_First_Author),

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
