using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class principal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = Session["nombre"].ToString();
        
    }
    protected void btnSalir_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (rbOpcion1.Text.Equals("Evaluar_Personal"))
        {
            Response.Redirect("evaluacion.aspx");
        }
        if ((rbOpcion2.Text.Equals("Ver_Evaluacion")) || (rbOpcion1.Text.Equals("Ver_Evaluacion")))
        {
            Response.Redirect("Resultado.aspx");
        }
        if (rbOpcion1.Text.Equals("Listar_Evaluacion"))
        {
            Response.Redirect("evaluacion.aspx");
        }
    }
}