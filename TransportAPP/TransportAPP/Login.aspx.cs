using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TransportAPP.WebReference;

namespace TransportAPP
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            Txt_Mensaje.Text = String.Empty;
            TransportService ws = new TransportService();
            try
            {
                if (ws.Login(txt_Usuario.Text, txt_Contraseña.Text))
                    Response.Redirect(url: "MasterPage/WebForm1.aspx");
                else
                    Txt_Mensaje.Text = "Credenciales Incorrectos";

            }
            catch (Exception)
            {
                Txt_Mensaje.Text = "Ha ocurrido un problema al iniciar sesion.";
            }
        }
    }
}