using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Negocio
{
    public class Resultado
    {
        private int id_encuesta;

        public int _Id_encuesta
        {
            get { return id_encuesta; }
            set { id_encuesta = value; }
        }
        private int puntaje;

        public int _Puntaje
        {
            get { return puntaje; }
            set { puntaje = value; }
        }
        private string desempeno;

        public string _Desempeno
        {
            get { return desempeno; }
            set { desempeno = value; }
        }

        public void insertarResultado()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True");
            string query = "insert into RESULTADO values ('" + this._Id_encuesta + "','" + this._Puntaje + "','" + this._Desempeno + "')";
            SqlDataAdapter da = new SqlDataAdapter(query, co);
            DataSet ds = new DataSet();
            da.Fill(ds);
        }
        public void updateResultado()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True");
            string query = "update resultado set puntaje = '"+this._Puntaje+"',desempeno = '"+this._Desempeno+"' where id_encuesta = '"+this._Id_encuesta+"'";
            SqlDataAdapter da = new SqlDataAdapter(query, co);
            DataSet ds = new DataSet();
            da.Fill(ds);
        }
        public DataSet get_resultadoByEncuestaID()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True");
            string query = "select * from resultado where id_encuesta = '" + this._Id_encuesta + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, co);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
    }
}
