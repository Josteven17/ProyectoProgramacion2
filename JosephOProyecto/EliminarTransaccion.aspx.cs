using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public partial class EliminarTransaccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BEliminar_Click(object sender, EventArgs e)
        {
            ClasePrincipal.SetIdConsulta(int.Parse(DTransaccion.SelectedValue));
            if (ClasePrincipal.BorrarTransaccion())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Transaccion Borrada');", true);
                DTransaccion.DataBind();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Transaccion no existe');", true);

            }
        }

        protected void BConsultar_Click(object sender, EventArgs e)
        {
            ConsultaTransaccion();
        }
        protected void ConsultaTransaccion()
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("Sp_ConsultarTransa", con);
            command.Parameters.Add(new SqlParameter("id", int.Parse(DTransaccion.SelectedValue)));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}