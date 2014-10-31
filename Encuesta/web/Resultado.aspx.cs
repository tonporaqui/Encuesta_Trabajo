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
            int id_usuario = Convert.ToInt32(Session["id_user"]);
            encuesta._Id_usuario = id_usuario;
            datosEncuesta = encuesta.get_EncuestaByIdUsuario();
            if (datosEncuesta.Tables[0].Rows.Count == 1)
            {
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
        Response.Redirect("login.aspx");
    }
}