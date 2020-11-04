using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace adatbázis_count
{
    class Program
    {
        public static void Main()
        {
            string connStr = "server=localhost;user=pe;database=orszagok;password=123456";
            MySqlConnection conn = new MySqlConnection(connStr);
            try
            {
                Console.WriteLine("Connecting to MySQL...");
                conn.Open();
                //sql parancs, melynek ez visszatérési értéke van
                string sql = "SELECT COUNT(*) FROM orszagok";
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                //eredmény ertárolása  a result változóba
                object result = cmd.ExecuteScalar();
                if (result != null)
                {
                    int r = Convert.ToInt32(result);
                    Console.WriteLine("Number of countries in the world database is: " + r);
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            conn.Close();
            Console.WriteLine("Done.");
            Console.ReadKey();
        }
    }

}

