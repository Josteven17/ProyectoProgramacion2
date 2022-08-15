using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public class ClasePrincipal
    {
        private static String Nombre;
        private static String Cedula;
        private static String Apellido1;
        private static String Apellido2;
        private static String Direccion;
        private static String Telefono;
        private static String Email;
        private static String Password;
        public static int TipoUsuario;
        private static int TipoTransaccion;
        private static int IdUsuario;
        private static int IdConsulta;
        private static String Clave;
        private static String Descripcion;
        private static float Monto;
        private static String Fecha;
        private static int Mes;
        private static String Correo;



        public ClasePrincipal()
        {
            Nombre = "";
            Cedula = "";
            Apellido1 = "";
            Apellido2 = "";
            Direccion = "";
            Telefono = "";
            Email = "";
            Password = "";
            TipoUsuario = 0;
            TipoTransaccion = 0;
            IdUsuario = 0;
            IdConsulta = 0;
            Clave = "";
            Descripcion = "";
            Monto = 0;
            Correo = "";
            Fecha = "";



        }

        public static void SetNombre(String nombre)
        {
            Nombre = nombre;
        }

        public static String GetNombre()
        {
            return Nombre;
        }
        public static void SetMes(int mes)
        {
            Mes = mes;
        }

        public static int GetMes()
        {
            return Mes;
        }
        public static void SetClave(String clave)
        {
            Clave = clave;
        }

        public static String GetClave()
        {
            return Clave;
        }

        public static void SetCedula(String cedula)
        {
            Cedula = cedula;
        }

        public static String GetCedula()
        {
            return Cedula;
        }
        public static void SetApellido1(String apellido1)
        {
            Apellido1 = apellido1;
        }

        public static String GetApellido1()
        {
            return Apellido1;
        }

        public static void SetApellido2(String apellido2)
        {
            Apellido2 = apellido2;
        }

        public static String GetApellido2()
        {
            return Apellido2;
        }
        public static void SetDireccion(String direccion)
        {
            Direccion = direccion;
        }

        public static String GetDireccion()
        {
            return Direccion;
        }
        public static void SetTelefono(String telefono)
        {
            Telefono = telefono;
        }

        public static String GetTelefono()
        {
            return Telefono;
        }

        public static void SetEmail(String email)
        {
            Email = email;
        }

        public static String GetEmail()
        {
            return Email;
        }
        public static void SetPassword(String password)
        {
            Password = password;
        }

        public static String GetPassword()
        {
            return Password;
        }

        public static void SetTipoUsuario(int usuario)
        {
            TipoUsuario = usuario;
        }

        public static int GetTipoUsuario()
        {
            return TipoUsuario;
        }

        public static void SetIdUsuario(int usuario)
        {
            IdUsuario = usuario;
        }

        public static int GetIdUsuario()
        {
            return IdUsuario;
        }
        public static void SetIdConsulta(int id)
        {
            IdConsulta = id;
        }

        public static int GetIdConsulta()
        {
            return IdConsulta;
        }
        public static void SetTipoTransaccion(int tipotransaccion)
        {
            TipoTransaccion = tipotransaccion;
        }

        public static int GetTipoTransaccion()
        {
            return TipoTransaccion;
        }
        public static void SetDescripion(String descripcion)
        {
            Descripcion = descripcion;
        }

        public static String GetDescripcion()
        {
            return Descripcion;
        }
        public static void SetFecha(String fecha)
        {
            Fecha = fecha;
        }

        public static String GetFecha()
        {
            return Fecha;
        }
        public static void SetMonto(float monto)
        {
            Monto = monto;
        }

        public static float GetMonto()
        {
            return Monto;
        }
        public static void SetCorreo(String correo)
        {
           Correo = correo;
        }

        public static String GetCorreo()
        {
            return Correo;
        }
        public static void ActualizarPersona() 
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("Sp_ActualizarPersona", con);
            command.Parameters.Add(new SqlParameter("@cedula", Cedula));
            command.Parameters.Add(new SqlParameter("@nombre", Nombre));
            command.Parameters.Add(new SqlParameter("@apellido1", Apellido1));
            command.Parameters.Add(new SqlParameter("@apellido2", Apellido2));
            command.Parameters.Add(new SqlParameter("@direccion", Direccion));
            command.Parameters.Add(new SqlParameter("@telefono", Telefono));
            command.Parameters.Add(new SqlParameter("@id", IdConsulta));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);

        }

        public static void ActualizarUsuario() 
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("Sp_ActualizarUs", con);
            command.Parameters.Add(new SqlParameter("@idusuario", IdConsulta));
            command.Parameters.Add(new SqlParameter("@tipousuario", TipoUsuario));
            command.Parameters.Add(new SqlParameter("@clave", Clave));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);


        }

        public static void ActualizarTransaccion() 
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("Sp_ActualizarTransacc", con);
            command.Parameters.Add(new SqlParameter("@id", IdConsulta));
            command.Parameters.Add(new SqlParameter("@idtipotransaccion", TipoTransaccion));
            command.Parameters.Add(new SqlParameter("@descripcion", Descripcion));
            command.Parameters.Add(new SqlParameter("@monto", Monto));
            command.Parameters.Add(new SqlParameter("@fecha", Fecha));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);

        }
        
        public static void AgregarPersonaCP() 
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("sp_AgregarPersona", con);
            command.Parameters.Add(new SqlParameter("@cedula", Cedula));
            command.Parameters.Add(new SqlParameter("@nombre", Nombre));
            command.Parameters.Add(new SqlParameter("@apellido1", Apellido1));
            command.Parameters.Add(new SqlParameter("@apellido2", Apellido2));
            command.Parameters.Add(new SqlParameter("@direccion", Direccion));
            command.Parameters.Add(new SqlParameter("@telefono", Telefono));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);

        }
        public static Boolean BorrarCP() 
        {
            Boolean existe = false;
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            try
            {
                con.Open();
                SqlCommand command = new SqlCommand("Sp_BorrarPersona", con);
                command.Parameters.Add(new SqlParameter("@id", IdConsulta));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(command);
                command.ExecuteNonQuery();
                existe = true;
            }
            catch (Exception)
            {

            }
            finally
            {
                con.Close();
            }
            return existe;
        }

        public static Boolean BorrarUs() 
        {
            Boolean existe = false;
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            try
            {
                con.Open();
                SqlCommand command = new SqlCommand("Sp_BorrarUsuario", con);
                command.Parameters.Add(new SqlParameter("@idusuario", IdConsulta));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(command);
                command.ExecuteNonQuery();
                existe = true;
            }
            catch (Exception)
            {

            }
            finally
            {
                con.Close();
            }
            return existe;
        }

        public static Boolean BorrarTransaccion() 
        {
            Boolean existe = false;
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            try
            {
                con.Open();
                SqlCommand command = new SqlCommand("Sp_BorrarTransacc", con);
                command.Parameters.Add(new SqlParameter("@id", IdConsulta));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(command);
                command.ExecuteNonQuery();
                existe = true;
            }
            catch (Exception)
            {

            }
            finally
            {
                con.Close();
            }
            return existe;
        }
       
        public static Boolean AgregarUsuarios() 
        {
            Boolean existe = false;
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            try
            {
                con.Open();
                SqlCommand command = new SqlCommand("Sp_AgregarUsuario", con);
                command.Parameters.Add(new SqlParameter("@email", Email));
                command.Parameters.Add(new SqlParameter("@idusuario", IdUsuario));
                command.Parameters.Add(new SqlParameter("@tipousuario", TipoUsuario));
                command.Parameters.Add(new SqlParameter("@clave", Clave));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(command);
                command.ExecuteNonQuery();
                existe = true;
            }
            catch (Exception)
            {

            }
            finally
            {
                con.Close();
            }
            return existe;

        }
      
        public static Boolean AgregarTransaccion() 
        {
            Boolean existe = false;
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            try
            {
                con.Open();
                SqlCommand command = new SqlCommand("Sp_AgregarTransaccion", con);
                command.Parameters.Add(new SqlParameter("@idtipotransaccion", TipoTransaccion));
                command.Parameters.Add(new SqlParameter("@email", Correo));
                command.Parameters.Add(new SqlParameter("@descripcion", Descripcion));
                command.Parameters.Add(new SqlParameter("@monto", Monto));
                command.Parameters.Add(new SqlParameter("@fecha", Fecha));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(command);
                command.ExecuteNonQuery();
                existe = true;
            }
            catch (Exception)
            {

            }
            finally
            {
                con.Close();
            }
            return existe;

        }

        public static void Registrar() 
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("SP_Registro", con);
            command.Parameters.Add(new SqlParameter("@nombre", Nombre));
            command.Parameters.Add(new SqlParameter("@cedula", Cedula));
            command.Parameters.Add(new SqlParameter("@apellido1", Apellido1));
            command.Parameters.Add(new SqlParameter("@apellido2", Apellido2));
            command.Parameters.Add(new SqlParameter("@direccion", Direccion));
            command.Parameters.Add(new SqlParameter("@telefono", Telefono));
            command.Parameters.Add(new SqlParameter("@email", Email));
            command.Parameters.Add(new SqlParameter("@tipousuario", TipoUsuario));
            command.Parameters.Add(new SqlParameter("@clave", Clave));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
        }

        public static Boolean AgregarTipoUsuario() 
        {
            Boolean existe = false;
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            try
            {
                con.Open();
                SqlCommand command = new SqlCommand("Sp_AgregarTipoUsuario", con);
                command.Parameters.Add(new SqlParameter("@descripcion", Descripcion));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(command);
                command.ExecuteNonQuery();
                existe = true;
            }
            catch (Exception)
            {

            }
            finally
            {
                con.Close();
            }
            return existe;

        }
        public static Boolean EliminarTipoUsuario() 
        {
            Boolean existe = false;
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            try
            {
                con.Open();
                SqlCommand command = new SqlCommand("Sp_BorrarTIpoUsuario", con);
                command.Parameters.Add(new SqlParameter("@id", IdConsulta));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(command);
                command.ExecuteNonQuery();
                existe = true;
            }
            catch (Exception)
            {

            }
            finally
            {
                con.Close();
            }
            return existe;

        }
        public static void Filtro()
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("ConsultarFiltro", con);
            command.Parameters.Add(new SqlParameter("@tipotransaccion", TipoTransaccion));
            command.Parameters.Add(new SqlParameter("@usuario", Email));
            command.Parameters.Add(new SqlParameter("@mes", Mes));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
        }

        
    }
}