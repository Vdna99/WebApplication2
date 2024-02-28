using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    public class RecordControllers
    {
        public bool RegisterUser(FBRegisterUser Ruser)
        {
            string url = "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDie5dMB6zTah_vlIhK6dChQ6R_KoxMH14";
            string body = "{'email':'" + Ruser.email + "','password':'" + Ruser.password + "','returnSecureToken':true}";

            HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
            request.Method = "POST";
            request.ContentType = "application/json";

            using (Stream dataStream = request.GetRequestStream())
            {
                dataStream.Write(Encoding.UTF8.GetBytes(body), 0, Encoding.UTF8.GetBytes(body).Length);
            }

            try
            {
                HttpWebResponse response = request.GetResponse() as HttpWebResponse;
                using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                {
                    FBRegisterUser payload = JsonConvert.DeserializeObject<FBRegisterUser>(reader.ReadToEnd());

                    return payload.registered;
                }
            }
            catch
            {
                return false;
            }

        }



    }
}