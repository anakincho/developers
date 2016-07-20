using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using developers_task.Models;
using System.Web.ModelBinding;

namespace developers_task

{
    public partial class ArticleBody : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Article> GetArticles([QueryString("articleID")] int? articleID)
        {
            var _db = new developers_task.Models.ArticlesContext();
            IQueryable<Article> query = _db.Articles;
            if (articleID.HasValue && articleID > 0)
            {
                query = query.Where(p => p.ArticleID == articleID);
            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}