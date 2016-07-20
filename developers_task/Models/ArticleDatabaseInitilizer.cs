using System.Collections.Generic;
using System.Data.Entity;

namespace developers_task.Models
{
    public class ArticleDatabaseInitializer : DropCreateDatabaseIfModelChanges<ArticlesContext>
    {
        protected override void Seed(ArticlesContext context)
        {

            GetArticles().ForEach(p => context.Articles.Add(p));
        }


        private static List<Article> GetArticles()
        {
            var articles = new List<Article> {
                new Article
                {
                    ArticleID = 1,
                    ArticleTitle = "Water Bottle",
                    MainBody = "The best invention EU, was the water bottle. It comes in many shapes and forms. It's COOL!",
                    ImagePath="http://snowave.com.my/wp-content/uploads/2015/02/bigstock-Three-Large-bottle-of-pure-wat-47746543.jpg",
                    DatePublished = "01/12/2015"
               },
                new Article
                {
                    ArticleID = 1,
                    ArticleTitle = "The New Speakers",
                    MainBody = "The new speakers that came out this winter were the best thing that happened to the world WOHOOOO!",
                    ImagePath="http://www.musictech.net/wp-content/uploads/2014/02/Screen-shot-2014-02-04-at-09.14.03.png",
                    DatePublished = "28/12/2015"
               },
                new Article
                {
                    ArticleID = 1,
                    ArticleTitle = "Web Cam",
                    MainBody = "As the world progresses (sure) the technology progresses as well, the new OP webcam is out. It is so new it even has a cable attached to it!",
                    ImagePath="https://images-na.ssl-images-amazon.com/images/I/71lbwtcUUzL._SL1500_.jpg",
                    DatePublished = "14/05/2016"
                },
                new Article
                {
                    ArticleID = 1,
                    ArticleTitle = "Cocoa",
                    MainBody = "A new study from the University states that drinking cocoa makes you program faster and type less stupid stuff!",
                    ImagePath="http://1.bp.blogspot.com/-JBa-9RaioQ4/Tyo7NcHnEtI/AAAAAAAAANc/sSycRU0Rbio/s1600/hotcocoa.jpg",
                    DatePublished = "21/12/2015"
                }
            };

            return articles;
        }
    }
}