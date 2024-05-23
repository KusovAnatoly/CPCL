namespace DesktopApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Order")]
    public partial class Order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            OrderServices = new HashSet<OrderService>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int OrderID { get; set; }

        [Required]
        [StringLength(40)]
        public string OrderCode { get; set; }

        [Column(TypeName = "date")]
        public DateTime DateCreated { get; set; }

        public TimeSpan TimeCreated { get; set; }

        public int ClientID { get; set; }

        public int OrderStatusID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? DateClosed { get; set; }

        public short DurationTime { get; set; }

        public virtual Client Client { get; set; }

        public virtual OrderStatu OrderStatu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderService> OrderServices { get; set; }
    }
}
