using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;


public partial class GuardarResultados : System.Web.UI.Page
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
            Label r1_item2 = (Label)Page.PreviousPage.FindControl("lblItem2_R1");
            Label r2_item2 = (Label)Page.PreviousPage.FindControl("lblItem2_R2");
            Label r3_item2 = (Label)Page.PreviousPage.FindControl("lblItem2_R3");
            Label obsD_item2 = (Label)Page.PreviousPage.FindControl("txtAreaObservacionD");
            Label obsE_item2 = (Label)Page.PreviousPage.FindControl("txtAreaObservacionE");
            TextBox r1_item3 = (TextBox)Page.PreviousPage.FindControl("txtR1_item3");
            TextBox r2_item3 = (TextBox)Page.PreviousPage.FindControl("txtR2_item3");
            TextBox r3_item3 = (TextBox)Page.PreviousPage.FindControl("txtR3_item3");
            TextBox r4_item3 = (TextBox)Page.PreviousPage.FindControl("txtR4_item3");
            TextBox r5_item3 = (TextBox)Page.PreviousPage.FindControl("txtR5_item3");
            TextBox r6_item3 = (TextBox)Page.PreviousPage.FindControl("txtR6_item3");
            TextBox txtObsGeneral = (TextBox)Page.PreviousPage.FindControl("txtObsGeneral");

            
            if ((nomEncuestado != null) && (r1_item1 != null) && (r2_item1 != null)
                && (r3_item1 != null) && (r4_item1 != null) && (r5_item1 != null)
                && (r6_item1 != null) && (r7_item1 != null) && (r1_item2 != null)
                && (r2_item2 != null) && (r3_item2 != null) && (r6_item3 != null)
                && (obsD_item2 != null) && (obsE_item2 != null) && (r2_item3 != null) 
                && (r3_item3 != null) && (r4_item3 != null) && (r5_item3 != null)
                && (r6_item3 != null) && (txtObsGeneral != null))
            {
                lblNomEvaluado.Text = nomEncuestado.Text;
                lblItem1_r1.Text = r1_item1.Text;
                lblItem1_r2.Text = r2_item1.Text;
                lblItem1_r3.Text = r3_item1.Text;
                lblItem1_r4.Text = r4_item1.Text;
                lblItem1_r5.Text = r5_item1.Text;
                lblItem1_r6.Text = r6_item1.Text;
                lblItem1_r7.Text = r7_item1.Text;
                lblItem1_obsD.Text = obsD_item2.Text;
                lblItem1_obsE.Text = obsE_item2.Text;

                lblItem2_r1.Text = r1_item2.Text;
                lblItem2_r2.Text = r2_item2.Text;
                lblItem2_r3.Text = r3_item2.Text;

                lblItem3_r1.Text = r1_item3.Text;
                lblItem3_r2.Text = r2_item3.Text;
                lblItem3_r3.Text = r3_item3.Text;
                lblItem3_r4.Text = r4_item3.Text;
                lblItem3_r5.Text = r5_item3.Text;
                lblItem3_r6.Text = r6_item3.Text;
                lblItem3_obsGeneral.Text = txtObsGeneral.Text;
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
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        
        Encuesta en = new Encuesta();
        Item1 i1 = new Item1();

        DataSet dato = new DataSet();

        int puntaje1_item1 = en.get_puntaje(lblItem1_r1.Text);
        int puntaje2_item1 = en.get_puntaje(lblItem1_r2.Text);
        int puntaje3_item1 = en.get_puntaje(lblItem1_r3.Text);
        int puntaje4_item1 = en.get_puntaje(lblItem1_r4.Text);
        int puntaje5_item1 = en.get_puntaje(lblItem1_r5.Text);
        int puntaje6_item1 = en.get_puntaje(lblItem1_r6.Text);
        int puntaje7_item1 = en.get_puntaje(lblItem1_r7.Text);

        int res_item1 = puntaje1_item1 + puntaje2_item1 + puntaje3_item1 + puntaje4_item1 +
            puntaje5_item1 + puntaje6_item1 + puntaje7_item1;

        int puntaje1_item2 = en.get_puntaje(lblItem2_r1.Text);
        int puntaje2_item2 = en.get_puntaje(lblItem2_r2.Text);
        int puntaje3_item2 = en.get_puntaje(lblItem2_r3.Text);

        int res_item2 = puntaje1_item2 + puntaje2_item2 + puntaje3_item2;

        int puntaje1_item3 = en.get_puntaje(lblItem3_r1.Text);
        int puntaje2_item3 = en.get_puntaje(lblItem3_r2.Text);
        int puntaje3_item3 = en.get_puntaje(lblItem3_r3.Text);
        int puntaje4_item3 = en.get_puntaje(lblItem3_r4.Text);
        int puntaje5_item3 = en.get_puntaje(lblItem3_r5.Text);
        int puntaje6_item3 = en.get_puntaje(lblItem3_r6.Text);

        int res_item3 = puntaje1_item3 + puntaje2_item3 + puntaje4_item3 + puntaje5_item3 +
            puntaje6_item3;

        int puntaje_total = res_item1 + res_item2 + res_item3;

        String desempenio = en.get_desempenio(puntaje_total);

        int id_encuestador = Convert.ToInt32(Session["id_user"].ToString());
        int id_encuestado = Convert.ToInt32(Session["id_encuestado"].ToString());

        en._Id_usuario = id_encuestador;
        en._Id_jefe = id_encuestador;
        en._Id_encuestado = id_encuestado;
        en.insertarEncuesta();

        dato = en.get_ultimoId();
        int id_encuesta = Convert.ToInt32(dato.Tables[0].Rows[0].ItemArray[0].ToString());

        i1._Id_encuesta = id_encuesta;
        i1._Uno_res_uno = Convert.ToString(lblItem1_r1.Text); 
        i1._Uno_res_dos = Convert.ToString(lblItem1_r2.Text);
        i1._Uno_res_tres = Convert.ToString(lblItem1_r3.Text);
        i1._Uno_res_cuatro = Convert.ToString(lblItem1_r4.Text);
        i1._Uno_res_cinco = Convert.ToString(lblItem1_r5.Text);
        i1._Uno_res_seis = Convert.ToString(lblItem1_r6.Text);
        i1._Uno_res_siete = Convert.ToString(lblItem1_r7.Text);
        i1._Uno_res_obs_d = Convert.ToString(lblItem1_obsD.Text);
        i1._Uno_res_obs_e = Convert.ToString(lblItem1_obsE.Text);
        i1.insertarItem1();

        Negocio.Item2 i2 = new Negocio.Item2();
        i2._Id_encuesta = id_encuesta;
        i2._Dos_res_uno = Convert.ToString(lblItem2_r1.Text);
        i2._Dos_res_dos = Convert.ToString(lblItem2_r2.Text);
        i2._Dos_res_tres = Convert.ToString(lblItem2_r3.Text);
        i2.insertarItem2();

        Negocio.Item3 i3 = new Negocio.Item3();
        i3._Encuesta_id = id_encuesta;
        i3._Tres_res_uno = Convert.ToString(lblItem3_r1.Text);
        i3._Tres_res_dos = Convert.ToString(lblItem3_r2.Text);
        i3._Tres_res_tres = Convert.ToString(lblItem3_r3.Text);
        i3._Tres_res_cuatro = Convert.ToString(lblItem3_r4.Text);
        i3._Tres_res_cinco = Convert.ToString(lblItem3_r5.Text);
        i3._Tres_res_seis = Convert.ToString(lblItem3_r6.Text);
        i3._Tres_res_obs_gen = Convert.ToString(lblItem3_obsGeneral.Text);
        i3.insertarItem3();


        Negocio.Resultado res = new Negocio.Resultado();
        res._Id_encuesta = id_encuesta;
        res._Puntaje = puntaje_total;
        res._Desempeno = desempenio;
        res.insertarResultado();


        Session["encuesta"] = id_encuesta;

        Response.Redirect("Resultado.aspx");
    }
}