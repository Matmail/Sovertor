using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Telegram.Bot.Sorvetor
{
    class Helper
    {
        // SQL Server Hostname
        private string CnnVar = ".\\SQLEXPRESS;Database=sample;Trusted_Connection=True;";

        public void connect()
        {
            SqlConnection conn = new SqlConnection(CnnVar);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * FROM dbo.People", conn);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine("{0}, {1}, {2}, {3}, {4}", reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetString(4));
            }
            reader.Close();
            conn.Close();
        }

    }
}
