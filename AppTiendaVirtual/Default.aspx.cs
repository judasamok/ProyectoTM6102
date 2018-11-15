using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppTiendaVirtual
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string url = "css/img/KornRAR2013-copy.png";
            Image1.ImageUrl = url;
            audio.Src = "css/audio/audio1.mp3";
            
        }//end
    }//end
}//end