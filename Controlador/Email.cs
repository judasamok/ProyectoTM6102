using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//libreria
using System.Net;
using System.Net.Mail;

using Modelo;

namespace Controlador
{
    public class Email
    {

        public void enviar(Mensaje ms)
        {
            try
            {
                MailMessage email = new MailMessage();

                //destinatario
                email.To.Add(new MailAddress("soporteTiendaNet@hotmail.com"));

                //emisor
                email.From = new MailAddress("soporteTiendaNet@hotmail.com");

                email.Subject = "Comentario de: " + ms.nombre;
                email.Body = "<b>Comentario</b><br>"+
                    "<h3>Nombre: " + ms.nombre+"</h3><br>"+
                    "<h4>Email: " + ms.email + "</h4><br>" +
                    "<p>Comentario: " + ms.comentario + "</p>";

                email.IsBodyHtml = true;

                email.Priority = MailPriority.Normal;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.office365.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("soporteTiendaNet@hotmail.com", "ucrnetTM6102");
                smtp.Send(email);

                email.Dispose();
                smtp.Dispose();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }//end enviar

    }//end
}//end
