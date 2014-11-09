using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;

public partial class CrearEvaluacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = Session["nombre"].ToString();
        Usuario user = new Usuario();
        DataSet dato = new DataSet();
        int id_encuestado = 0;
        string nombre;
        string apellido;

        if (Page.PreviousPage != null)
        {
            DropDownList dpEncuestado = (DropDownList)Page.PreviousPage.FindControl("ddliEncuestado");
            if ((dpEncuestado != null))
            {
                id_encuestado = Convert.ToInt32(dpEncuestado.Text);
                Session["id_encuestado"] = id_encuestado;

                user._Id_usuario = id_encuestado;
                dato = user.get_usuarioByID();


                nombre = dato.Tables[0].Rows[0].ItemArray[2].ToString();
                apellido = dato.Tables[0].Rows[0].ItemArray[3].ToString();

                lblNomEvaluado.Text = nombre + ' ' + apellido;

            }
            else
            {
                lblNomEvaluado.Text = "Error";
            }
        }



    }
    protected void btnSalir_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}