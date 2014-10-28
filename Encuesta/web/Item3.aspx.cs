using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Item3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = Session["nombre"].ToString();
        if (Page.PreviousPage != null)
        {
            Label nomEncuestado = (Label)Page.PreviousPage.FindControl("lblNomEvaluado");
            Label r1_item1 = (Label)Page.PreviousPage.FindControl("lblItem1_R1");
            Label r2_item1 = (Label)Page.PreviousPage.FindControl("lblItem1_R2");
            Label r3_item1 = (Label)Page.PreviousPage.FindControl("lblItem1_R3");
            Label r4_item1 = (Label)Page.PreviousPage.FindControl("lblItem1_R4");
            Label r5_item1 = (Label)Page.PreviousPage.FindControl("lblItem1_R5");
            Label r6_item1 = (Label)Page.PreviousPage.FindControl("lblItem1_R6");
            Label r7_item1 = (Label)Page.PreviousPage.FindControl("lblItem1_R7");
            TextBox r1_item2 = (TextBox)Page.PreviousPage.FindControl("txtR1_item2");
            TextBox r2_item2 = (TextBox)Page.PreviousPage.FindControl("txtR2_item2");
            TextBox r3_item2 = (TextBox)Page.PreviousPage.FindControl("txtR3_item2");
            Label obsD_item2 = (Label)Page.PreviousPage.FindControl("txtAreaObservacionD");
            Label obsE_item2 = (Label)Page.PreviousPage.FindControl("txtAreaObservacionE");
            
            if ((nomEncuestado != null) && (r1_item1 != null) && (r2_item1 != null)
                 && (r3_item1 != null) && (r4_item1 != null) && (r5_item1 != null)
                 && (r6_item1 != null) && (r7_item1 != null) && (r1_item2 != null)
                && (r2_item2 != null) && (r3_item2 != null) && (obsD_item2 != null)
                 && (obsE_item2 != null))
            {
                lblNomEvaluado.Text = nomEncuestado.Text;
                lblItem1_R1.Text = r1_item1.Text;
                lblItem1_R2.Text = r2_item1.Text;
                lblItem1_R3.Text = r3_item1.Text;
                lblItem1_R4.Text = r4_item1.Text;
                lblItem1_R5.Text = r5_item1.Text;
                lblItem1_R6.Text = r6_item1.Text;
                lblItem1_R7.Text = r7_item1.Text;
                txtAreaObservacionD.Text = obsD_item2.Text;
                txtAreaObservacionE.Text = obsE_item2.Text;
                lblItem2_R1.Text = r1_item2.Text;
                lblItem2_R2.Text = r2_item2.Text;
                lblItem2_R3.Text = r3_item2.Text;
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
        Response.Redirect("login.aspx");
    }
}