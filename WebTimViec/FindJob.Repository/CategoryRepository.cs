using FindJob.Model.Entities;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace FindJob.Repository
{
    public class CategoryRepository
    {
        private readonly JobContext _context;
        private readonly DbSet<Category> _categories;

        public CategoryRepository(JobContext context)
        {
            _context = context;
            _categories = context.Categories;
        }

        public IQueryable<Category> GetAll()
        {
            return _categories;
        }

        public Category GetById(int id)
        {
            return _categories.Find(id);
        }

        public void Add(Category category)
        {
            _categories.Add(category);
            _context.SaveChanges();
        }

        public void Update(Category category)
        {
            _categories.Update(category);
            _context.SaveChanges();
        }

        public void Delete(Category category)
        {
            _categories.Remove(category);
            _context.SaveChanges();
        }
    }
}
