using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WenMthods : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string SendEmail(string Name, string Mobile, string Email, string Message,string Product)
    {
        try
        {
            string mobileNo = Mobile;
            string email = Email;
            string enquiry = Message;
            string name =Name;
            string Body = "Hi,<br/>  " + enquiry + "<br/><br/>Regards,<br/>" + name + "<br/>" + email + "<br/>" + mobileNo;

            MailMessage msg = new MailMessage("\"" + name + "\"<singhyogesh14@gmail.com>", "bkadigi@yahoo.com", "Rellin Enquiry: " + Product, Body);

            msg.IsBodyHtml = true;
            NetworkCredential mailauth = new NetworkCredential("afghansnowweb@gmail.com", "afghansnow");
            SmtpClient mailclient = new SmtpClient("smtp.gmail.com", 587);
            //mailclient.re
            msg.ReplyToList.Add(new MailAddress(email, "reply-to"));
          //  msg.Headers.Add("reply-to", email);
            mailclient.EnableSsl = true;
            mailclient.UseDefaultCredentials = false;
            mailclient.Credentials = mailauth;
            mailclient.Send(msg);
            //   Page.RegisterStartupScript();

          
        }
        catch (Exception ex) { }

        return "";
    }
}