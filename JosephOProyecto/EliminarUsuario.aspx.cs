using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public partial class EliminarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BEliminar_Click(object sender, EventArgs e)
        {
            ClasePrincipal.SetIdConsulta(int.Parse(DIdUsuario.SelectedValue));
            if (ClasePrincipal.BorrarUs())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario ha sido borrado');", true);
                DIdUsuario.DataBind();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario no ha sido borrado');", true);

            }
        }

        protected void BConsultar_Click(object sender, EventArgs e)
        {
            ClasePrincipal.SetIdConsulta(int.Parse(DIdUsuario.SelectedValue));
            ConsultaUS();
        }
        protected void ConsultaUS()
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("Sp_ConsultarUsuario", con);
            command.Parameters.Add(new SqlParameter("idusuario", int.Parse(DIdUsuario.SelectedValue)));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}