using App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RMS.Models
{
    public partial class clsRank
    {
        public static string Rank_ID = "Rank_ID";
        public static string Rank_Title = "Rank_Title";
        public static string Rank_Description = "Rank_Description";
        public static string Rank_Type = "Authors";
    }

    public partial class RankController
    {
        #region Fields
        public int Rank_ID { get; set; }
        public string Rank_Title { get; set; }
        public string Rank_Description { get; set; }
        public string Rank_Type { get; set; }
        #endregion

        #region Methods
        #region Get
        public static List<RankController> GetAllRanks()
        {
            string strStoredProcedureName = "sp_prof_GetAllRanks";
            
            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure);

            return ConvertDataTableToObject(dt);
        }
        public static List<RankController> GetRanksByType(string strRankType = null)
        {
            string strStoredProcedureName = "sp_prof_GetRanksByType";

            SqlParameter param = new SqlParameter("@Rank_type", strRankType);

            DataTable dt = DbAccess.ExecuteQuery(strStoredProcedureName, CommandType.StoredProcedure, param);

            return ConvertDataTableToObject(dt);
        }
        #endregion

        #region Convert DataTable to Object List

        private static List<RankController> ConvertDataTableToObject(DataTable dt)
        {
            List<RankController> list = dt.AsEnumerable()

                .Select(dr =>
                new RankController
                {
                    Rank_ID = dr.Field<int>("Rank_ID"),
                    Rank_Title = dr.Field<string>("Rank_Title"),
                    Rank_Description = dr.Field<string>("Rank_Description"),
                    Rank_Type = dr.Field<string>("Rank_Type")
                }
                ).ToList();

            return list;
        }

        #endregion


        #endregion
    }
}