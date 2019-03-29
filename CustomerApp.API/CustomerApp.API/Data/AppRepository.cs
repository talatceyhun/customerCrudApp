using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CustomerApp.API.Models;
using Microsoft.EntityFrameworkCore;

namespace CustomerApp.API.Data
{
    public class AppRepository : IAppRepository
    {
        private DataContext _context;

        public AppRepository(DataContext context)
        {
            _context = context;
        }

        public void Add<T>(T entity) where T : class
        {
            _context.Add(entity); 
        }

        public int Delete(int id)
        {
            try
            {
                Customer cst = _context.Customers.Find(id);
                _context.Customers.Remove(cst);
                _context.SaveChanges();
                return 1;
            }
            catch
            {
                throw;
            }
        }



        public Customer GetCustomerById(int id)
        {
            var customer = _context.Customers.FirstOrDefault(c => c.Id == id);
            return customer;
        }

        //To Update the records of a particluar employee  
        public int UpdateCustomer(Customer customer)
        {
            try
            {
                _context.Entry(customer).State = EntityState.Modified;
                _context.SaveChanges();
                return 1;
            }
            catch
            {
                throw;
            }
        }

        public List<Customer> GetCustomers()
        {
            var customers = _context.Customers.ToList();
            return customers;
        }

        public User GetUserById(int id)
        {
            var user = _context.Users.FirstOrDefault(u => u.Id == id);
            return user;
        }

        public List<User> GetUsers()
        {
            var users = _context.Users.ToList();
            return users;
        }

        public bool SaveAll()
        {
            return _context.SaveChanges() > 0;     
        }
    }
}
