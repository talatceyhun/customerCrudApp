using CustomerApp.API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CustomerApp.API.Data
{
    public interface IAppRepository
    {
        void Add<T>(T entity) where T:class;
        int Delete(int id);

        int UpdateCustomer(Customer customer);

        bool SaveAll();

        List<Customer> GetCustomers();
        Customer GetCustomerById(int id);

        List<User> GetUsers();
        User GetUserById(int id);
    }
}
