namespace ETT.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Courses")]
    public partial class Cours
    {
        [Key]
        public int courseId { get; set; }

        public string name { get; set; }

        public string description { get; set; }

        public string tutor { get; set; }

        public string level { get; set; }

        public string price { get; set; }

        public string type { get; set; }

        public string startTime { get; set; }

        public string schedule { get; set; }

        public string rate { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? longitude { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? latitude { get; set; }

        public string location { get; set; }

        public string url { get; set; }
    }
}
