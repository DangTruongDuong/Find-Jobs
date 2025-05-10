using FindJob.IRepository;
using FindJob.Model.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace FindJob.Repository
{
    public class GenericRepository<T> : IGenericRepository<T> where T : class
    {
        private readonly JobContext _context;
        private readonly DbSet<T> _entities;

        public GenericRepository(JobContext context)
        {
            _context = context;
            _entities = _context.Set<T>();
        }

        public IEnumerable<T> GetAll()
        {
            return _entities.AsEnumerable();
        }

        public T GetById(int id)
        {
            return _entities.Find(id);
        }

        public int Insert(T entity)
        {
            _entities.Add(entity);
            return _context.SaveChanges();
        }

        public int Update(T entity)
        {
            _entities.Update(entity);
            return _context.SaveChanges();
        }

        public int Delete(int id)
        {
            var entity = _entities.Find(id);
            _entities.Remove(entity);
            return _context.SaveChanges();
        }
    }
}
