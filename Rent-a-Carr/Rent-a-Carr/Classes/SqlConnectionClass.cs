using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Rent_a_Carr.Classes
{
    public class SqlConnectionClass
    {

        public static SqlConnection connection = new SqlConnection("Data Source=DESKTOP-QQGGRT1\\SQLEXPRESS;Initial Catalog=VehicleManagmentDB2;Integrated Security=True");

        public static void CheckConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }

            else
            {

            }
        }
    }
}