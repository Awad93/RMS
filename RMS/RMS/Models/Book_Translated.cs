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

    public partial class clsBook_Translated
    {
        #region Fields
        public static string Book_Translated_ID = "Book_Translated_ID";
        public static string Book_Title = "Book_Title";
        public static string Publication_Year = "Publication_Year";
        public static string Publisher = "Publisher";
        public static string Country = "Country";
        public static string Original_Title = "Original_Title";
        public static string Original_Authors = "Original_Authors";
        public static string Remarks = "Remarks";
        public static string CreatedOn = "CreatedOn";
        public static string CreatedBy = "CreatedBy";
        public static string UpdatedOn = "UpdatedOn";
        public static string UpdatedBy = "UpdatedBy";
        public static string Active_flag = "Active_flag";
        public static string Deleted_flag = "Deleted_flag";
        #endregion
    }


    public partial class Book_TranslatedController
    {
        #region Fields
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Book_TranslatedController()
        {
            this.Book_Translated_Author = new HashSet<Book_Translated_AuthorController>();
        }

        public int Book_Translated_ID { get; set; }
        public string Book_Title { get; set; }
        public int? Publication_Year { get; set; }
        public string Publisher { get; set; }
        public string Country { get; set; }
        public string Original_Title { get; set; }
        public string Original_Authors { get; set; }
        public string Remarks { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }
        public string UpdatedBy { get; set; }
        public bool? Active_flag { get; set; }
        public bool? Deleted_flag { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Book_Translated_AuthorController> Book_Translated_Author { get; set; }
        #endregion

        #region Methods
        #endregion
    }
}