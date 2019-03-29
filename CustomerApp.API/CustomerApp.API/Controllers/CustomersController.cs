using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CustomerApp.API.Data;
using CustomerApp.API.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;


namespace CustomerApp.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomersController : ControllerBase
    {
        private IAppRepository _appRepository;

        public CustomersController(IAppRepository appRepository)
        {
            _appRepository = appRepository;
        }

        [HttpGet]
        public ActionResult GetCustomers()
        {
            var customers = _appRepository.GetCustomers();
            return Ok(customers);
        }

        // GET api/customers/5
        [HttpGet("{id}")]
        public ActionResult GetCustomer(int id)
        {
            var customer = _appRepository.GetCustomerById(id);
            return Ok(customer);
        }

        // POST api/customers
        [HttpPost]
        [Route("add")]
        public void Add([FromBody] Customer customer)
        {
            _appRepository.Add(customer);
            _appRepository.SaveAll();

        }

        [HttpPut]
        [Route("edit")]
        public int Edit([FromBody] Customer customer)
        {
            return _appRepository.UpdateCustomer(customer);
        }

        [HttpDelete]
        [Route("delete/{id}")]
        public int Delete(int id)
        {
            return _appRepository.Delete(id);
        }
    }


}