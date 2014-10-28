using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Negocio
{
    public class Encuesta
    {

        private int id_encuesta;

        public int _Id_encuesta
        {
            get { return id_encuesta; }
            set { id_encuesta = value; }
        }
        private int id_usuario;

        public int _Id_usuario
        {
            get { return id_usuario; }
            set { id_usuario = value; }
        }
        private int id_jefe;

        public int _Id_jefe
        {
            get { return id_jefe; }
            set { id_jefe = value; }
        }
        private int id_encuestado;

        public int _Id_encuestado
        {
            get { return id_encuestado; }
            set { id_encuestado = value; }
        }
        private string estado;

        public string _Estado
        {
            get { return estado; }
            set { estado = value; }
        }

        public void insertarEncuesta()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True");
            string query = "insert into ENCUESTAS values('" + this._Id_usuario + "','" + this._Id_jefe + "','" + this._Id_encuestado + "','activa')";
            SqlDataAdapter da = new SqlDataAdapter(query, co);
            DataSet ds = new DataSet();
            da.Fill(ds);
        }
        public DataSet get_ultimoId()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True");
            string query = "SELECT MAX(id_encuesta) FROM ENCUESTAS";
            SqlDataAdapter da = new SqlDataAdapter(query, co);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        public int get_puntaje(string res)
        {
            int puntaje = 0;
            if (res.Equals("a"))
            {
                puntaje = 5;
            }
            if (res.Equals("b"))
            {
                puntaje = 4;
            }
            if (res.Equals("c"))
            {
                puntaje = 3;
            }
            if (res.Equals("d"))
            {
                puntaje = 2;
            }
            if (res.Equals("e"))
            {
                puntaje = 2;
            }
            return puntaje;
        }//end

        public string get_desempenio(int puntaje)
        {
            string desempenio = null;

            if (puntaje > 71)
            {
                desempenio = "Excelente";
            }
            if ((puntaje >= 51) && (puntaje <= 71))
            {
                desempenio = "Muy Bueno";
            }
            if ((puntaje >= 48) && (puntaje <= 56))
            {
                desempenio = "Bueno";
            }
            if ((puntaje >= 40) && (puntaje <= 47))
            {
                desempenio = "Suficiente";
            }
            if (puntaje <= 39)
            {
                desempenio = "Insuficiente";
            }
            return desempenio;
        }//end
    }
}
