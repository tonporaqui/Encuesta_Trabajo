using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Negocio
{
    public class Usuario
    {
        private int id_usuario;

        public int _Id_usuario
        {
            get { return id_usuario; }
            set { id_usuario = value; }
        }
        private string rut;

        public string _Rut
        {
            get { return rut; }
            set { rut = value; }
        }
        private string nombre;

        public string _Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private string apellido;

        public string _Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }
        private string password;

        public string _Password
        {
            get { return password; }
            set { password = value; }
        }
        private string perfil;

        public string _Perfil
        {
            get { return perfil; }
            set { perfil = value; }
        }

        public DataSet get_usuario()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True");
            string query = "select * from USUARIO where RUT = '" + this._Rut + "' and PASSWORD = '" + this._Password + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, co);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
    }
}
