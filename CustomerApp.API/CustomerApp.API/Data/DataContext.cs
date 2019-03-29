﻿using CustomerApp.API.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CustomerApp.API.Data
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options): base(options)
        {

                
        }

        public DbSet<User> Users { get; set; }
        public DbSet<Customer> Customers { get; set; }

    }
}
  