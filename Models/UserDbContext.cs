using Microsoft.EntityFrameworkCore;

namespace blog.Models
{
    public class UserDbContext : DbContext
    {
        public UserDbContext() { }
        public UserDbContext(DbContextOptions options) : base(options)
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                string conn = "server=localhost; database=blog; user=root; password=";

                optionsBuilder.UseMySQL(conn);
            }
        }
        public DbSet<User> adatok { get; set; } = null!;
    }
}
