using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.DynamicData;
using System.Data.SqlClient;

namespace RegistrationForm
{
    public partial class UserList : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            using (MySqlConnection conn = new MySqlConnection(config.ConnStr))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    conn.Open();
                    cmd.Connection = conn;

                    cmd.CommandText = "SELECT * FROM `user` ORDER BY id;";
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(dt);

                    foreach (DataRow row in dt.Rows)
                    {
                        string id = row["ID"].ToString();
                        string name = row["Name"].ToString();
                        string email = row["Email"].ToString();
                        string phone = row["Phone"].ToString();
                        string address = row["Address"].ToString();

                        UserTable.Rows.Add(new TableRow()
                        {
                            Cells = {
                            new TableCell() { Text = id },
                            new TableCell() { Text = name },
                            new TableCell() { Text = email },
                            new TableCell() { Text = phone },
                            new TableCell() { Text = address },
                        }
                        });

                        conn.Close();
                    }
                }

                //            StringBuilder sb = new StringBuilder();

                //            sb.Append(@"
                //<tbody>
                //            ");

                //            if (dt.Rows.Count == 0)
                //            {
                //                sb.Append("<tr><td colspan='6'>No data</td></tr>");
                //            }
                //            else
                //            {
                //                foreach (DataRow dr in dt.Rows)
                //                {


                //                    sb.Append($@"
                //<tr>
                //            <td>{dr["id"]}</td>
                //            <td>{dr["name"]}</td>
                //            <td>{dr["email"]}</td>
                //            <td>{dr["phone"]}</td>
                //            <td>{dr["address"]}</td>
                //</tr>
                //            ");
                //                }
                //            }

                //            sb.Append(@"
                //</tbody>               
                //</table>

                //");

                //            ph1.Controls.Add(new LiteralControl(sb.ToString()));
                //        }
            }
        }
    }
}