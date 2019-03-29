using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CustomerApp.API.Models;
using Microsoft.EntityFrameworkCore;

namespace CustomerApp.API.Data
{
    public class AuthRepository : IAuthRepository

    {

        private DataContext _context;

        public AuthRepository(DataContext context)
        {
            _context = context;
        }
        
        
        public async Task<User> Login(string userName, string password)
        {
            var user = await _context.Users.FirstOrDefaultAsync(x => x.UserName == userName);
            if (user == null)
            {
                return null;
            }

            if (password != user.Password)
            {
                return null;
            }
            return user;
            
        }

        public async Task<User> Register(User user, string password)
        {
            user.Password = password;
            await _context.Users.AddAsync(user);
            await _context.SaveChangesAsync();
            return user;

        }

        public async Task<bool> UserExist(string userName)
        {
            if (await _context.Users.AnyAsync(x => x.UserName == userName))
            {
                return true;
            }
            return false;
        }
    }
}
