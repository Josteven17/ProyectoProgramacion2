using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public partial class Log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BRegistrarse_Click(object sender, EventArgs e)
        {
            ClasePrincipal.SetCorreo(TEmail.Text);
            ClasePrincipal.SetPassword(TContraseña.Text);
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("select Email, Clave from Usuario " +
                    "where Email = '" + ClasePrincipal.GetCorreo() + "' and Clave = '" + ClasePrincipal.GetPassword() + "'", conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    Response.Redirect("Inicio.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario no existe');", true);
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Revisar la conexion');", true);
            }
            finally
            {
                conexion.Close();
            }
        }
    }
}