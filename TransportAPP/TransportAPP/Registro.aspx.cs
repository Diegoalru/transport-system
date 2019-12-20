using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TransportAPP
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Verificar_Click(object sender, EventArgs e)
        {
            Txt_Mensaje.Text = string.Empty;
            WebReference.TransportService ws = new WebReference.TransportService();
            if (ws.ExisteUsuario(txt_Usuario.Text))
            {
                //Mensaje de Alerta
                Txt_Mensaje.Text = "EL usuario ya existe.";
            }
            else
            {
                txt_Usuario.ReadOnly = true;
                txt_Contraseña.ReadOnly = true;
                txt_ConfContraseña.ReadOnly = true;
                Btn_Verificar.Text = "Continuar";
                Btn_Verificar.BackColor = System.Drawing.Color.Green;
            }
        }

        protected void Btn_Registrar_Click(object sender, EventArgs e)
        {
            //Crear Usuario
            WebReference.TransportService ws = new WebReference.TransportService();
            //ws.InsertaUsuario(txt_Usuario.Text, txt_Contraseña.Text);

            //Iniciar Sesion
            //if (ws.Login("diegoalru", "ytrewq"))
            //{
            //    Txt_Mensaje.Text = "Buenas Diego";
            //}
            //else
            //{
            //    Txt_Mensaje.Text = "Fail";
            //}

            //Ingresar Persona
            ws.InsertaUsuario("Test1", "test");
            char gender;
            if (1 == 1)
            {
                if (txt_Sexo.Text == "hombre" || txt_Sexo.Text == "Hombre")
                {
                    gender = 'H';
                    Txt_Mensaje.Text = gender.ToString();
                }
                else
                {
                    gender = 'F';
                    Txt_Mensaje.Text = gender.ToString();
                }
                ws.InsertaPersona(txt_PrimerNombre.Text, txt_SegundoNombre.Text, txt_PrimerApellido.Text, txt_SegundoApellido.Text, 'H', DateTime.Parse(txt_Fecha.Text), "Test1");

            }
            else
            {
                Txt_Mensaje.Text = "Fail";
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            //panel1.Controls.Add(new Label { Text = "Text goes here" });
        }
    }
}