using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using Newtonsoft.Json;
using System.Web;
using ETT.Models;

namespace ETT.Services
{
    public class EmailSender
    {
        // Please use your API KEY here.
        private const String API_KEY = "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";

     

        public void Send(String toEmail, String subject, String contents)
        {
            var client = new SendGridClient(API_KEY);
            var from = new EmailAddress("brianozhang@gmail.com", "ETT User");
            var to = new EmailAddress(toEmail, "");
            var plainTextContent = contents;
            var htmlContent = "<p>" + contents + "</p>";
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);


            var bytes = File.ReadAllBytes("C:\\Users\\Administrator\\Desktop\\tt.txt");
            var file = Convert.ToBase64String(bytes);
            msg.AddAttachment("file.txt", file);

            var response = client.SendEmailAsync(msg);
        }

       


    }


}