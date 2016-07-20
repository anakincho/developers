using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using developers_task.Models;
using developers_task.Logic;

namespace developers_task.Admin
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string articleAction = Request.QueryString["ArticleAction"];
            if (articleAction == "add")
            {
                LabelAddStatus.Text = "Article added!";
            }

            if (articleAction == "remove")
            {
                LabelRemoveStatus.Text = "Article removed!";
            }

            if (articleAction == "edit")
            {
                LabelEditStatus.Text = "Article was edited succsessfully!";
            }
        }

        protected void AddArticleButton_Click(object sender, EventArgs e)
        {


            // Add article data to DB.
            AddArticles article = new AddArticles();
            bool addSuccess = article.AddArticle(AddArticleTitle.Text, AddMainBody.Text,
                AddDatePublished.Text, AddImageLink.Text);
            if (addSuccess)
            {
                // Reload the page.
                string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                Response.Redirect(pageUrl + "?ArticleAction=add");
            }
            else
            {
                LabelAddStatus.Text = "Unable to add new article to database.";
            }

        }

        public IQueryable GetArticles()
        {
            var _db = new developers_task.Models.ArticlesContext();
            IQueryable query = _db.Articles;
            return query;
        }



        protected void RemoveArticleButton_Click(object sender, EventArgs e)
        {
            using (var _db = new developers_task.Models.ArticlesContext())
            {
                int articleId = Convert.ToInt16(DropDownRemoveArticle.SelectedValue);
                var myItem = (from c in _db.Articles where c.ArticleID == articleId select c).FirstOrDefault();
                if (myItem != null)
                {

                    _db.Articles.Remove(myItem);
                    _db.SaveChanges();

                    // Reload the page.
                    string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                    Response.Redirect(pageUrl + "?ArticleAction=remove");
                }
                else
                {
                    LabelRemoveStatus.Text = "Unable to locate product.";
                }
            }
        }
        protected void EditArticleButton_Click(object sender, EventArgs e)
        {
            using (var _db = new developers_task.Models.ArticlesContext())
            {
                int articleId = Convert.ToInt16(DropDownEditArticle.SelectedValue);

                var myItem = (from c in _db.Articles where c.ArticleID == articleId select c).FirstOrDefault();
                if (myItem != null)
                {
                    if (EditArticleTitle.Text != "")
                    {
                        myItem.ArticleTitle = EditArticleTitle.Text;
                    }
                    if (EditMainBody.Text != "")
                    {
                        myItem.MainBody = EditMainBody.Text;
                    }
                    if (EditDatePublished.Text != "")
                    {
                        myItem.DatePublished = EditDatePublished.Text;
                    }
                    if (EditImageLink.Text != "")
                    {
                        myItem.ImagePath = EditImageLink.Text;
                    }
                    _db.SaveChanges();

                    // Reload the page.
                    string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                    Response.Redirect(pageUrl + "?ArticleAction=edit");

                    
                }
            }
            }
        }
    }