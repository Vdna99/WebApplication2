using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{   /// Aqui lo va estar va ser la informacion que vamos a mostrar el el frontend
    public class GamesControllers
    {

        public List<Games> GetGames()
        {
            List<Games> Gameslist = new List<Games>();

            Games games = new Games()
            {
                Id = 1,
                Name = "Mortal Kombat",
                Description = "Juego de combate",
                Consol = "Play 5",
                PhotoPath = "../Assets/images/1.jpg"


            };

            Games games1 = new Games()
            {
                Id = 2,
                Name = "Tortugas Ninja",
                Description = "Juego de Aventura",
                Consol = "Play 2",
                PhotoPath = "../Assets/images/2.jpg"



            };


            Gameslist.Add(games);
            Gameslist.Add(games1);

            return Gameslist;
        }


        public List<Games> GetGame(int id)
        {
            List<Games> Gameslist = GetGames();

            /// Para buscar un elemento Game dentro de lista
            foreach (Games game in Gameslist)
            {

                ///if para buscar el id si esta en lista 
                if (game.Id == id)
                {
                    Gameslist.Clear();
                    Gameslist.Add(game);
                    return Gameslist;

                }


            }



            return null;
        }


    }



}