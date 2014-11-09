using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Item2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = Session["nombre"].ToString();
        if (Page.PreviousPage != null)
        {
            Label nomEncuestado = (Label)Page.PreviousPage.FindControl("lblNomEvaluado");
            TextBox r1_item1 = (TextBox)Page.PreviousPage.FindControl("txtR1");
            TextBox r2_item1 = (TextBox)Page.PreviousPage.FindControl("txtR2");
            TextBox r3_item1 = (TextBox)Page.PreviousPage.FindControl("txtR3");
            TextBox r4_item1 = (TextBox)Page.PreviousPage.FindControl("txtR4");
            TextBox r5_item1 = (TextBox)Page.PreviousPage.FindControl("txtR5");
            TextBox r6_item1 = (TextBox)Page.PreviousPage.FindControl("txtR6");
            TextBox r7_item1 = (TextBox)Page.PreviousPage.FindControl("txtR7");
            TextBox roD_item1 = (TextBox)Page.PreviousPage.FindControl("txtObsD");
            TextBox roE_item2 = (TextBox)Page.PreviousPage.FindControl("txtObsE");
   
            if ((nomEncuestado != null) && (r1_item1 != null) && (r2_item1 != null)
                 && (r3_item1 != null) && (r4_item1 != null) && (r5_item1 != null)
                 && (r6_item1 != null) && (r7_item1 != null) && (roD_item1 != null)
                 && (roE_item2 != null))
            {
                lblNomEvaluado.Text = nomEncuestado.Text;
                lblItem1_R1.Text = r1_item1.Text;
                lblItem1_R2.Text = r2_item1.Text;
                lblItem1_R3.Text = r3_item1.Text;
                lblItem1_R4.Text = r4_item1.Text;
                lblItem1_R5.Text = r5_item1.Text;
                lblItem1_R6.Text = r6_item1.Text;
                lblItem1_R7.Text = r7_item1.Text;
                txtAreaObservacionD.Text = roD_item1.Text;
                txtAreaObservacionE.Text = roE_item2.Text;
            }
            else
            {
                lblNomEvaluado.Text = "Error...";
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