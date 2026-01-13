using System;
using System.Collections.Generic;
using System.Data.Entity;

namespace SmartOfficeApp
{
    public class Personel
    {
        public int Id { get; set; }
        public string AdSoyad { get; set; }
        public int BirimId { get; set; }
        public int UnvanId { get; set; }


        public string Email { get; set; }
    }

    public class Birim
    {
        public int Id { get; set; }
        public string BirimAd { get; set; }
    }

    public class Unvan
    {
        public int Id { get; set; }
        public string UnvanAd { get; set; }
    }

    public class OfisContext : DbContext
    {
        public OfisContext() : base()
        {
            Database.SetInitializer<OfisContext>(null);
        }

        public DbSet<Personel> Personeller { get; set; }
        public DbSet<Birim> Birimler { get; set; }
        public DbSet<Unvan> Unvanlar { get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Personel>().ToTable("Personeller");
            modelBuilder.Entity<Birim>().ToTable("Birimler");
            modelBuilder.Entity<Unvan>().ToTable("Unvanlar");

            base.OnModelCreating(modelBuilder);
        }
    }
}


