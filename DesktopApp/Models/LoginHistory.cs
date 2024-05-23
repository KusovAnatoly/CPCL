namespace DesktopApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoginHistory")]
    public partial class LoginHistory
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int LoginHistoryID { get; set; }

        public int EmployeeID { get; set; }

        public DateTime DateAttempted { get; set; }

        public int LoginStatusID { get; set; }

        public virtual Employee Employee { get; set; }

        public virtual LoginStatu LoginStatu { get; set; }
    }
}
