﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2.Models
{
    public class FBRegisterUser
    {


        public string kind { get; set; }
        public string idToken { get; set;}

        public string email { get; set;}

        public string password { get; set; }

        public string refreshToken { get; set;}
        public string expiresIn { get; set;}

        public string localId { get; set; }

        public bool registered { get; set; }


    }
}