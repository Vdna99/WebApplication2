using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2.Models
{   ///Aqui van a estar los get y set de las variables 
    public class Games
    {

        public int Id { get; set; }
        public string Name { get; set; }

        public string Description { get; set; }
        public string Consol { get; set; }
        public string PhotoPath  { get; set; }



    }
}