using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections.Generic;

namespace App_Code
{
    public class DbAccess
    {
        static string connectionString = ConfigurationManager.ConnectionStrings["_LocalConnection"].ConnectionString;   //LOCAL
        //static string connectionString = ConfigurationManager.ConnectionStrings["_LiveConnection"].ConnectionString;   //LIVE


        /// <summary>
        /// Executes SQL non-query
        /// </summary>
        /// <param name="commandText">Query string</param>
        /// <param name="commandType">Type of SQL command</param>
        /// <param name="commandParameters">List of SQL Parameters</param>
        public static void ExecuteNonQuery(string commandText, CommandType commandType, params SqlParameter[] commandParameters)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand(commandText, connection))
                {
                    command.CommandType = commandType;
                    command.Parameters.AddRange(commandParameters);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        /// <summary>
        /// Executes SQL query
        /// </summary>
        /// <param name="commandText">Query string</param>
        /// <param name="commandType">Type of SQL command</param>
        /// <param name="parameter">Single SQL Parameter</param>
        /// <returns>Result of query as DataTable</returns>
        public static DataTable ExecuteQuery(string commandText, CommandType commandType, SqlParameter parameter)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand(commandText, connection))
                {
                    DataTable dt = new DataTable();
                    command.CommandType = commandType;
                    command.Parameters.Add(parameter);
                    SqlDataAdapter da = new SqlDataAdapter(command);
                    da.Fill(dt);
                    connection.Close();
                    return dt;
                }
            }
        }


        /// <summary>
        /// Executes SQL query
        /// </summary>
        /// <param name="commandText">Query string</param>
        /// <param name="commandType">Type of SQL command</param>
        /// <param name="parameters">List of SQL parameters</param>
        /// <returns>Result of query as DataTable</returns>
        public static DataTable ExecuteQuery(string commandText, CommandType commandType, List<SqlParameter> parameters)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand(commandText, connection))
                {
                    DataTable dt = new DataTable();
                    command.CommandType = commandType;
                    command.Parameters.AddRange(parameters.ToArray());
                    SqlDataAdapter da = new SqlDataAdapter(command);
                    da.Fill(dt);
                    connection.Close();
                    return dt;
                }
            }
        }


        /// <summary>
        /// Executes SQL query
        /// </summary>
        /// <param name="commandText">Query string</param>
        /// <param name="commandType">Type of SQL command</param>
        /// <returns>Result of query as DataTable</returns>
        public static DataTable ExecuteQuery(string commandText, CommandType commandType)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                using (var command = new SqlCommand(commandText, connection))
                {
                    DataTable dt = new DataTable();
                    command.CommandType = commandType;
                    SqlDataAdapter da = new SqlDataAdapter(command);
                    da.Fill(dt);
                    connection.Close();
                    return dt;
                }
            }
        }
    }
}

//public static class Connection
//{
//    public static SqlConnection Connect()
//    {
//        string strSqlServerName = "macdr";
//        string strSqlDatabase = "RMS_DB";

//        return Connect(strSqlServerName, strSqlDatabase);

//    }

//    public static DataTable StoredProcedure(string sp_name, List<string> parameters, List<string> values)
//    {
//        SqlConnection connection = Connect();
//        SqlDataAdapter adapter = new SqlDataAdapter(sp_name, connection);

//        adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
//        for (int i = 0; i < parameters.Count; i++)
//        {
//            adapter.SelectCommand.Parameters.Add(parameters[i], SqlDbType.Char).Value = values[i];
//        }

//        DataTable dt = new DataTable();
//        adapter.Fill(dt);
//        return dt;
//    }

//    public static DataTable Query(string query)
//    {
//        using (SqlConnection connection = Connect())
//        {
//            SqlCommand cmd = new SqlCommand(query, connection);
//            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

//            DataTable dt = new DataTable();
//            adapter.Fill(dt);
//            return dt;
//        }


//    }

//    public static SqlConnection Connect(string server_name, string db_name)
//    {
//        SqlConnection connection = new SqlConnection("server = " + server_name + ";" +
//            "Trusted_Connection=yes;" +
//            "database = " + db_name + ";" +
//            "connection timeout=30;");
//        return connection;
//    }
//}