using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Negocio
{
    public class Item2
    {
        private int id_encuesta;

        public int _Id_encuesta
        {
            get { return id_encuesta; }
            set { id_encuesta = value; }
        }
        private string dos_res_uno;

        public string _Dos_res_uno
        {
            get { return dos_res_uno; }
            set { dos_res_uno = value; }
        }
        private string dos_res_dos;

        public string _Dos_res_dos
        {
            get { return dos_res_dos; }
            set { dos_res_dos = value; }
        }
        private string dos_res_tres;

        public string _Dos_res_tres
        {
            get { return dos_res_tres; }
            set { dos_res_tres = value; }
        }
        public void insertarItem2()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True");
            string query = "insert into ITEM_DOS values ('"+this._Id_encuesta+"','"+this._Id_encuesta+"','"+this._Dos_res_uno+"','"+this._Dos_res_dos+"','"+this._Dos_res_tres+"')";
            SqlDataAdapter da = new SqlDataAdapter(query, co);
            DataSet ds = new DataSet();
            da.Fill(ds);
        }
    }
}
