using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace DesktopApp.Models
{
    public partial class DatabaseContext : DbContext
    {
        public DatabaseContext()
            : base("name=DatabaseContext")
        {
        }

        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<LoginHistory> LoginHistories { get; set; }
        public virtual DbSet<LoginStatu> LoginStatus { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<OrderService> OrderServices { get; set; }
        public virtual DbSet<OrderStatu> OrderStatus { get; set; }
        public virtual DbSet<Passport> Passports { get; set; }
        public virtual DbSet<Position> Positions { get; set; }
        public virtual DbSet<Service> Services { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Client>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<Client>()
                .HasMany(e => e.Orders)
                .WithRequired(e => e.Client)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Employee>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<Employee>()
                .HasMany(e => e.LoginHistories)
                .WithRequired(e => e.Employee)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LoginStatu>()
                .HasMany(e => e.LoginHistories)
                .WithRequired(e => e.LoginStatu)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Order>()
                .HasMany(e => e.OrderServices)
                .WithRequired(e => e.Order)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<OrderStatu>()
                .HasMany(e => e.Orders)
                .WithRequired(e => e.OrderStatu)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Passport>()
                .Property(e => e.Series)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Passport>()
                .Property(e => e.Number)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Passport>()
                .HasMany(e => e.Clients)
                .WithRequired(e => e.Passport)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Position>()
                .HasMany(e => e.Employees)
                .WithRequired(e => e.Position)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Service>()
                .Property(e => e.Code)
                .IsUnicode(false);

            modelBuilder.Entity<Service>()
                .Property(e => e.PricePerHour)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Service>()
                .HasMany(e => e.OrderServices)
                .WithRequired(e => e.Service)
                .WillCascadeOnDelete(false);
        }
    }
}
