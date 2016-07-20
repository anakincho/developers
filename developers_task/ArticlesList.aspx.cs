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
    public partial class Articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Article> GetArticles()
        {
            var _db = new developers_task.Models.ArticlesContext();
            IQueryable<Article> query = _db.Articles;
            return query;
        }
    }
}