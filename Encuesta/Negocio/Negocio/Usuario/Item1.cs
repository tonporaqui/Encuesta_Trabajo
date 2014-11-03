using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Negocio
{
    public class Item1
    {
        private int id_encuesta;

        public int _Id_encuesta
        {
            get { return id_encuesta; }
            set { id_encuesta = value; }
        }
        private string uno_res_uno;

        public string _Uno_res_uno
        {
            get { return uno_res_uno; }
            set { uno_res_uno = value; }
        }
        private string uno_res_dos;

        public string _Uno_res_dos
        {
            get { return uno_res_dos; }
            set { uno_res_dos = value; }
        }
        private string uno_res_tres;

        public string _Uno_res_tres
        {
            get { return uno_res_tres; }
            set { uno_res_tres = value; }
        }
        private string uno_res_cuatro;

        public string _Uno_res_cuatro
        {
            get { return uno_res_cuatro; }
            set { uno_res_cuatro = value; }
        }
        private string uno_res_cinco;

        public string _Uno_res_cinco
        {
            get { return uno_res_cinco; }
            set { uno_res_cinco = value; }
        }
        private string uno_res_seis;

        public string _Uno_res_seis
        {
            get { return uno_res_seis; }
            set { uno_res_seis = value; }
        }
        private string uno_res_siete;

        public string _Uno_res_siete
        {
            get { return uno_res_siete; }
            set { uno_res_siete = value; }
        }
        private string uno_res_obs_d;

        public string _Uno_res_obs_d
        {
            get { return uno_res_obs_d; }
            set { uno_res_obs_d = value; }
        }
        private string uno_res_obs_e;

        public string _Uno_res_obs_e
        {
            get { return uno_res_obs_e; }
            set { uno_res_obs_e = value; }
        }

        public void insertarItem1()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True");
            string query = "insert into ITEM_UNO values ('" + this._Id_encuesta + "','" + this._Id_encuesta + "','" + this._Uno_res_uno + "','" + this._Uno_res_dos + "','" + this._Uno_res_tres + "','" + this._Uno_res_cuatro + "','" + this._Uno_res_cinco + "','" + this._Uno_res_seis + "','" + this._Uno_res_siete + "','" + this._Uno_res_obs_d + "','" + this._Uno_res_obs_e + "')";
            SqlDataAdapter da = new SqlDataAdapter(query, co);
            DataSet ds = new DataSet();
            da.Fill(ds);
        }
        public DataSet get_Item1ByEncuesta()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True");
            string query = "select * from item_uno where id_encuesta = '"+this._Id_encuesta+"'";
            SqlDataAdapter da = new SqlDataAdapter(query, co);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
    }
}
