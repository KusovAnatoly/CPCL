namespace DesktopApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("OrderService")]
    public partial class OrderService
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int OrderServiceID { get; set; }

        public int ServiceID { get; set; }

        public int OrderID { get; set; }

        public virtual Order Order { get; set; }

        public virtual Service Service { get; set; }
    }
}
