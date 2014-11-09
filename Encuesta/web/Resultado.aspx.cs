using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Negocio;

public partial class Resultado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id_encuesta = 0;
        int puntaje = 0;
        int id_usuario = 0;
        string desempenio = null;
        Negocio.Resultado res = new Negocio.Resultado();
        Negocio.Encuesta encuesta = new Negocio.Encuesta();
        DataSet dato = new DataSet();
        DataSet datosEncuesta = new DataSet();

        lblUsuario.Text = Session["nombre"].ToString();

        if (Session["Encuesta"] != null)
        {
            id_encuesta = Convert.ToInt32(Session["encuesta"]);
            res._Id_encuesta = id_encuesta;
            dato = res.get_resultadoByEncuestaID();
            puntaje = Convert.ToInt32(dato.Tables[0].Rows[0].ItemArray[2].ToString());
            desempenio = dato.Tables[0].Rows[0].ItemArray[3].ToString(); 
        }
        else
        {
            id_usuario = Convert.ToInt32(Session["id_user"]);
            encuesta._Id_usuario = id_usuario;
            datosEncuesta = encuesta.get_EncuestaByIdUsuario();
            if (datosEncuesta.Tables[0].Rows.Count == 1)
            {
                Encuesta en = new Encuesta();
                Negocio.Item1 i1 = new Negocio.Item1();
                Negocio.Item2 i2 = new Negocio.Item2();
                Negocio.Item3 i3 = new Negocio.Item3();
                DataSet datos = new DataSet();
                int id_user = Convert.ToInt32(Session["id_user"].ToString());
                en._Id_usuario = id_user;
                datos = en.get_EncuestaByIdUsuario();
                id_encuesta = Convert.ToInt32(datos.Tables[0].Rows[0].ItemArray[0].ToString());
                i1._Id_encuesta = id_encuesta;
                datos = i1.get_Item1ByEncuesta();
                string r1_i1 = datos.Tables[0].Rows[0].ItemArray[3].ToString();
                int puntaje1_item1 = en.get_puntaje(r1_i1);
                string r2_i1 = datos.Tables[0].Rows[0].ItemArray[4].ToString();
                int puntaje2_item1 = en.get_puntaje(r2_i1);
                string r3_i1 = datos.Tables[0].Rows[0].ItemArray[5].ToString();
                int puntaje3_item1 = en.get_puntaje(r3_i1);
                string r4_i1 = datos.Tables[0].Rows[0].ItemArray[6].ToString();
                int puntaje4_item1 = en.get_puntaje(r4_i1);
                string r5_i1 = datos.Tables[0].Rows[0].ItemArray[7].ToString();
                int puntaje5_item1 = en.get_puntaje(r5_i1);
                string r6_i1 = datos.Tables[0].Rows[0].ItemArray[8].ToString();
                int puntaje6_item1 = en.get_puntaje(r6_i1);
                string r7_i1 = datos.Tables[0].Rows[0].ItemArray[9].ToString();
                int puntaje7_item1 = en.get_puntaje(r7_i1);

                int res_item1 = puntaje1_item1 + puntaje2_item1 + puntaje3_item1 + puntaje4_item1
                    + puntaje5_item1 + puntaje6_item1 + puntaje7_item1;

                i2._Id_encuesta = id_encuesta;
                datos = i2.get_Item2ByEncuesta();
                string r1_i2 = datos.Tables[0].Rows[0].ItemArray[3].ToString();
                int puntaje1_item2 = en.get_puntaje(r1_i2);
                string r2_i2 = datos.Tables[0].Rows[0].ItemArray[4].ToString();
                int puntaje2_item2 = en.get_puntaje(r2_i2);
                string r3_i2 = datos.Tables[0].Rows[0].ItemArray[5].ToString();
                int puntaje3_item2 = en.get_puntaje(r3_i2);
                int res_item2 = puntaje1_item2 + puntaje2_item2 + puntaje3_item2;

                i3._Encuesta_id = id_encuesta;
                datos = i3.get_Item3ByEncuesta();
                string r1_i3 = datos.Tables[0].Rows[0].ItemArray[3].ToString();
                int puntaje1_item3 = en.get_puntaje(r1_i3);
                string r2_i3 = datos.Tables[0].Rows[0].ItemArray[4].ToString();
                int puntaje2_item3 = en.get_puntaje(r2_i3);
                string r3_i3 = datos.Tables[0].Rows[0].ItemArray[5].ToString();
                int puntaje3_item3 = en.get_puntaje(r3_i3);
                string r4_i3 = datos.Tables[0].Rows[0].ItemArray[6].ToString();
                int puntaje4_item3 = en.get_puntaje(r4_i3);
                string r5_i3 = datos.Tables[0].Rows[0].ItemArray[7].ToString();
                int puntaje5_item3 = en.get_puntaje(r5_i3);
                string r6_i3 = datos.Tables[0].Rows[0].ItemArray[8].ToString();
                int puntaje6_item3 = en.get_puntaje(r6_i3);

                int res_item3 = puntaje1_item1 + puntaje2_item1 + puntaje3_item1 + puntaje4_item1
                    + puntaje5_item1 + puntaje6_item1;

                int puntaje_total = res_item1 + res_item2 + res_item3;

                desempenio = en.get_desempenio(puntaje_total);

                res._Id_encuesta = id_encuesta;
                res._Puntaje = puntaje_total;
                res._Desempeno = desempenio;
                res.updateResultado();



                id_encuesta = Convert.ToInt32(datosEncuesta.Tables[0].Rows[0].ItemArray[0].ToString());
                res._Id_encuesta = id_encuesta;
                dato = res.get_resultadoByEncuestaID();
                puntaje = Convert.ToInt32(dato.Tables[0].Rows[0].ItemArray[2].ToString());
                desempenio = dato.Tables[0].Rows[0].ItemArray[3].ToString();
            }
            else
            {
                lblmensaje.Text = "Aun no lo han evaluado.";
            }
        }





        lblPuntaje.Text = Convert.ToString(puntaje);
        lblDesempenio.Text = Convert.ToString(desempenio);
    }
    protected void btnSalir_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}