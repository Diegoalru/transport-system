﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TransportAPP.WebReference;

namespace TransportAPP
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TransportWS ws = new TransportWS();
            string saludoText = ws.Saludo(nombre: "Mundo");
            Lbl_Text.Text = saludoText;
        }
    }
}