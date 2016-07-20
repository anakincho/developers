using System.ComponentModel.DataAnnotations;

namespace developers_task.Models
{
    public class Article
    {
        [ScaffoldColumn(false)]
        public int ArticleID { get; set; }

        [Required, StringLength(100), Display(Name = "Title")]
        public string ArticleTitle { get; set; }

        [Required, StringLength(10000), Display(Name = "MainBody"), DataType(DataType.MultilineText)]
        public string MainBody { get; set; }

        public string ImagePath { get; set; }

        [Required, StringLength(10), Display(Name = "DatePublished")]
        public string DatePublished { get; set; }

    }
}