using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Negocio
{
    public class Item3
    {
        private int encuesta_id;

        public int _Encuesta_id
        {
            get { return encuesta_id; }
            set { encuesta_id = value; }
        }
        private string tres_res_uno;

        public string _Tres_res_uno
        {
            get { return tres_res_uno; }
            set { tres_res_uno = value; }
        }
        private string tres_res_dos;

        public string _Tres_res_dos
        {
            get { return tres_res_dos; }
            set { tres_res_dos = value; }
        }
        private string tres_res_tres;

        public string _Tres_res_tres
        {
            get { return tres_res_tres; }
            set { tres_res_tres = value; }
        }
        private string tres_res_cuatro;

        public string _Tres_res_cuatro
        {
            get { return tres_res_cuatro; }
            set { tres_res_cuatro = value; }
        }
        private string tres_res_cinco;

        public string _Tres_res_cinco
        {
            get { return tres_res_cinco; }
            set { tres_res_cinco = value; }
        }
        private string tres_res_seis;

        public string _Tres_res_seis
        {
            get { return tres_res_seis; }
            set { tres_res_seis = value; }
        }
        private string tres_res_obs_gen;

        public string _Tres_res_obs_gen
        {
            get { return tres_res_obs_gen; }
            set { tres_res_obs_gen = value; }
        }

        public void insertarItem3()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True");
            string query = "insert into ITEM_TRES values ('" + this._Encuesta_id + "','" + this._Encuesta_id + "','" + this._Tres_res_uno + "','" + this._Tres_res_dos + "','" + this._Tres_res_tres + "','" + this._Tres_res_cuatro + "','" + this._Tres_res_cinco + "','" + this._Tres_res_seis + "','" + this._Tres_res_obs_gen + "')";
            SqlDataAdapter da = new SqlDataAdapter(query, co);
            DataSet ds = new DataSet();
            da.Fill(ds);
        }
        public DataSet get_Item3ByEncuesta()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True");
            string query = "select * from item_tres where id_encuesta = '" + this._Encuesta_id + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, co);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
    }
}
