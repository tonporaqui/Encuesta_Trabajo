using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEnter_Click(object sender, EventArgs e)
    {
        string id_user;
        string rut;
        string nombre;
        string apellido;
        string perfil;
        Usuario user = new Usuario();
        DataSet dato = new DataSet();
        user._Rut = txtUser.Text;
        user._Password = txtPass.Text;
        dato = user.get_usuario();

        if (dato.Tables[0].Rows.Count == 1)
        {
            id_user = dato.Tables[0].Rows[0].ItemArray[0].ToString();
            rut = dato.Tables[0].Rows[0].ItemArray[1].ToString();
            nombre = dato.Tables[0].Rows[0].ItemArray[2].ToString();
            apellido = dato.Tables[0].Rows[0].ItemArray[3].ToString();
            perfil = dato.Tables[0].Rows[0].ItemArray[5].ToString();
            Session["id_user"] = id_user;
            Session["rut"] = rut;
            Session["nombre"] = nombre+" "+apellido;
            Session["perfil"] = perfil;
            Response.Redirect("principal.aspx");
        }
        else
        {
            lblMensaje.Text = "No se encontro usuario";
        }
    }
}
