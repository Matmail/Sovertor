using System.Data.SQLite;
using System.IO;

namespace Telegram.Bot.Sorvetor
{
    class Database
    {
        public SQLiteConnection myConnection;
        public Database()
        {
            myConnection = new SQLiteConnection("Data Source=database.sqlite");
            if (!File.Exists("./database.sqlite"))
            {
                SQLiteConnection.CreateFile("database.sqlite");
                System.Console.WriteLine("Database file created");
            }
            
        }
    }
}
