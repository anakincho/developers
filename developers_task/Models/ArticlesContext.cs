using System.Data.Entity;
namespace developers_task.Models
{
    public class ArticlesContext : DbContext
    {
        public ArticlesContext() : base("developers_task")
        {
        }
        public DbSet<Article> Articles { get; set; }
    }
}