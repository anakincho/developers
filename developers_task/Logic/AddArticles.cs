using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using developers_task.Models;

namespace developers_task.Logic
{
    public class AddArticles
    {
        public bool AddArticle(string ArticleTitle, string MainBody, string DatePublished, string ImagePath)
        {
            var myProduct = new Article();
            myProduct.ArticleTitle = ArticleTitle;
            myProduct.MainBody = MainBody;
            myProduct.DatePublished = DatePublished;
            myProduct.ImagePath = ImagePath;
           

            using (ArticlesContext _db = new ArticlesContext())
            {
                // Add product to DB.
                _db.Articles.Add(myProduct);
                _db.SaveChanges();
            }
            // Success.
            return true;
        }
    }
}