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
        lblUsuario.Text = Session["nombre"].ToString();
        int id_encuesta = Convert.ToInt16(Session["encuesta"]);
        Negocio.Resultado res = new Negocio.Resultado();
        DataSet dato = new DataSet();
        res._Id_encuesta = id_encuesta;
        dato = res.get_resultadoByEncuestaID();
        int puntaje = Convert.ToInt16(dato.Tables[0].Rows[0].ItemArray[2].ToString());
        string desempenio = dato.Tables[0].Rows[0].ItemArray[3].ToString();

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