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
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using System.Linq;
    using App_Code;
    public partial class clsBook_Authored
    {
        #region Fields

        public static string Book_Authored_ID = "Book_Authored_ID";
        public static string Book_Title = "Book_Title";
        public static string Authors = "Authors";
        public static string Publication_Year = "Publication_Year";
        public static string Publisher = "Publisher";
        public static string Country = "Country";
        public static string Project_Code = "Project_Code";
        public static string Funding_Year = "Funding_Year";       
        public static string Language = "Language";
        public static string isCompleted = "isCompleted";
        public static string Verified = "Verified";
        public static string CreatedOn = "CreatedOn";
        public static string CreatedBy = "CreatedBy";
        public static string UpdatedOn = "UpdatedOn";
        public static string UpdatedBy = "UpdatedBy";
        public static string Active_flag = "Active_flag";
        public static string Deleted_flag = "Deleted_flag";

        #endregion
    }

    public partial class Book_AuthoredController
    {
        #region Fields

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Book_AuthoredController()
        {
            this.Book_Authored_Author = new HashSet<Book_Authored_AuthorController>();
        }

        public int Book_Authored_ID { get; set; }
        public string Book_Title { get; set; }
        public string Authors { get; set; }
        public string Publication_Year { get; set; }
        public string Publisher { get; set; }
        public string Country { get; set; }
        public string Project_Code { get; set; }
        public int? Funding_Year { get; set; }       
        public string Language { get; set; }
        public bool isCompleted { get; set; }
        public bool Verified { get; set;  }
        public DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }
        public string UpdatedBy { get; set; }
        public bool? Active_flag { get; set; }
        public bool? Deleted_flag { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Book_Authored_AuthorController> Book_Authored_Author { get; set; }
        #endregion

        #region Methods

        #region List

        public static List<Book_AuthoredController> getBooksAll()
        {
            string strStoredProcedureName = "sp_rep_getBooksAll";
            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure);

            return ConvertDataTableToObject(dt);
        }


        public static List<Book_AuthoredController> getBooksByFaculty(int id)
        {
            string strStoredProcedureName = "sp_rep_getBooksByFaculty";

            SqlParameter param = new SqlParameter();
            param.ParameterName = "@id";
            param.SqlDbType = SqlDbType.Int;
            param.Value = id;

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }


        public static List<Book_AuthoredController> getBooksByCollege(string college_code)
        {
            string strStoredProcedureName = "sp_rep_getBooksByCollege";

            SqlParameter param = new SqlParameter();
            param.ParameterName = "@college_code";
            param.SqlDbType = SqlDbType.Char;
            param.Value = college_code;

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);

        }


        public static List<Book_AuthoredController> getBooksByDepartment(string dept_code)
        {
            string strStoredProcedureName = "sp_rep_getBooksByDepartment";

            SqlParameter param = new SqlParameter();
            param.ParameterName = "@dept_code";
            param.SqlDbType = SqlDbType.Char;
            param.Value = dept_code;

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }

        #endregion

        #region Search

        /// <summary>
        /// Retrieves a list of Book objects where the authors field contains the last name of the faculty but faculty's KFUPM ID is missing from the corresponding authors table
        /// </summary>
        /// <param name="last_name">Last name of researcher</param>
        /// <param name="id">Researcher's KFUPM ID</param>
        /// <returns>List of Book objects</returns>
        public static List<Book_AuthoredController> searchBooksByNameAndMissingID(string last_name, int id)
        {
            string strStoredProcedureName = "sp_rep_SearchBooksByAuthorsAndMissingKFUPMID";

            #region Add parameters

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@last_name", last_name));
            param.Add(new SqlParameter("@id", id));

            #endregion

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }
        #endregion

        #region Add

        /// <summary>
        /// Adds a new entry to the Book table and a corresponding entry to the Book Author table. Verified field of new entry = 0 (not verified)
        /// </summary>
        /// <param name="kfupmid"></param>
        /// <param name="book_title"></param>
        /// <param name="project_code"></param>
        /// <param name="authors"></param>
        /// <param name="publication_year"></param>
        /// <param name="publisher"></param>
        /// <param name="country"></param>
        /// <param name="funding_year"></param>
        /// <param name="language"></param>
        /// <param name="is_completed"></param>
        public static void AddBook(int kfupmid, string book_title, string project_code, string authors, int publication_year,
            string publisher, string country, int funding_year, string language, bool is_completed)
        {
            string strStoredProcedure = "sp_rep_AddBookAsUnverified";

            #region Add parameters

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@kfupmid", kfupmid));
            param.Add(new SqlParameter("@book_title", book_title));
            param.Add(new SqlParameter("@project_code", project_code));
            param.Add(new SqlParameter("@authors", authors));
            param.Add(new SqlParameter("@year", publication_year));
            param.Add(new SqlParameter("@publisher", publisher));
            param.Add(new SqlParameter("@country", country));
            param.Add(new SqlParameter("@funding_year", funding_year));
            param.Add(new SqlParameter("@language", language));
            param.Add(new SqlParameter("@is_completed", is_completed));

            #endregion

            DbAccess.ExecuteQuery(strStoredProcedure, CommandType.StoredProcedure);
            
        }

        #endregion

        #region Convert DataTable to Object List

        private static List<Book_AuthoredController> ConvertDataTableToObject(DataTable dt)
        {
            List<Book_AuthoredController> list = dt.AsEnumerable()

                .Select(dr =>
                new Book_AuthoredController
                {
                    Book_Authored_ID = dr.Field<int>("Book_Authored_ID"),
                    Book_Title = dr.Field<string>("Book_Title"),
                    Authors = dr.Field<string>("Authors"),
                    Publication_Year = dr.Field<string>("Publication_Year"),
                    Publisher = dr.Field<string>("Publisher"),
                    Country = dr.Field<string>("Country"),
                    Project_Code = dr.Field<string>("Project_Code"),
                    Funding_Year = dr.Field<Nullable<int>>("Funding_Year"),
                    Language = dr.Field<string>("Language"),
                    isCompleted = dr.Field<bool>("isCompleted"),
                    Verified = dr.Field<bool>("Verified"),
                    Deleted_flag = dr.Field<Nullable<bool>>("Deleted_flag"),
                    Active_flag = dr.Field<Nullable<bool>>("Active_flag"),
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