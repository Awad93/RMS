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

    public partial class clsPatent_Applied
    {
        #region Fields
        public static string Patent_Applied_ID = "Patent_Applied_ID";
        public static string Reference_Number = "Reference_Number";
        public static string Filled_By = "Filled_By";
        public static string Filling_Date = "Filling_Date";
        public static string Attorney_Docket_Number = "Attorney_Docket_Number";
        public static string Patent_Application_Title = "Patent_Application_Title";
        public static string Application_Patent_Number = "Application_Patent_Number";
        public static string Remarks = "Remarks";
        public static string CreatedOn = "CreatedOn";
        public static string CreatedBy = "CreatedBy";
        public static string UpdatedOn = "UpdatedOn";
        public static string UpdatedBy = "UpdatedBy";
        public static string Active_flag = "Active_flag";
        public static string Deleted_flag = "Deleted_flag";
        #endregion
    }

    public partial class Patent_AppliedController
    {
        #region Fields
        public int Patent_Applied_ID { get; set; }
        public string Reference_Number { get; set; }
        public string Filled_By { get; set; }
        public DateTime? Filling_Date { get; set; }
        public double? Attorney_Docket_Number { get; set; }
        public string Patent_Application_Title { get; set; }
        public string Application_Patent_Number { get; set; }
        public string Remarks { get; set; }
        public DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }
        public string UpdatedBy { get; set; }
        public bool? Active_flag { get; set; }
        public bool? Deleted_flag { get; set; }
        #endregion

        #region Methods
        #endregion
    }
}
