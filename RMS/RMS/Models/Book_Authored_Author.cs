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
    using System.Data;
    using System.Data.SqlClient;
    public partial class clsBook_Authored_Author
    {
        #region Fields
        public static string Book_Authored_Author_ID = "Book_Authored_Author_ID";
        public static string Book_Authored_ID = "Book_Authored_ID";
        public static string KFUPMID = "KFUPMID";
        public static string Contribution = "Contribution";
        public static string Remarks = "Remarks";
        public static string CreatedOn = "CreatedOn";
        public static string CreatedBy = "CreatedBy";
        public static string UpdatedOn = "UpdatedOn";
        public static string UpdatedBy = "UpdatedBy";
        public static string Active_flag = "Active_flag";
        public static string Deleted_flag = "Deleted_flag";
        #endregion
    }


    public partial class Book_Authored_AuthorController
    {
        #region Fields
        public int Book_Authored_Author_ID { get; set; }
        public int Book_Authored_ID { get; set; }
        public double KFUPMID { get; set; }
        public string Contribution { get; set; }
        public string Remarks { get; set; }
        public DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }
        public string UpdatedBy { get; set; }
        public bool? Active_flag { get; set; }
        public bool? Deleted_flag { get; set; }

        public virtual Book_AuthoredController Book_Authored { get; set; }
        #endregion

        #region Methods

        /// <summary>
        /// Adds a new author entry to a specified book using book id
        /// </summary>
        /// <param name="kfupmid">Researcher KFUPM ID</param>
        /// <param name="bookid">Book ID</param>
        public static void AddBookAuthor(int kfupmid, int bookid)
        {
            string strStoredProcedure = "sp_rep_AddAuthorToBook";

            #region Add parameters

            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@kfupmid", kfupmid));
            param.Add(new SqlParameter("@bookid", bookid));

            #endregion

            DbAccess.ExecuteQuery(strStoredProcedure, CommandType.StoredProcedure);
        }

        #endregion
    }


}
