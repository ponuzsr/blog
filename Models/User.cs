namespace blog.Models
{
    public class User
    {
        public Guid Id { get; set; }
        public string Title { get; set; }
        public string Decsription { get; set; }
        public DateTime CreatedTime { get; set; }
        public DateTime LastUpdated { get; set; }

    }
}
