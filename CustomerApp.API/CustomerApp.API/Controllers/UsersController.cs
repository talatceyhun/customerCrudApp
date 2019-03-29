using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CustomerApp.API.Data;
using CustomerApp.API.Models;
using Microsoft.AspNetCore.Mvc;

namespace CustomerApp.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private IAppRepository _appRepository;
        
        public UsersController(IAppRepository appRepository)
        {
            _appRepository = appRepository;
        }
        // GET api/users
        [HttpGet]
        public ActionResult GetUsers()
        {
            var users = _appRepository.GetUsers();
            return Ok(users);
        }

        // GET api/users/5
        [HttpGet("{id}")]
        public ActionResult GetUsers(int id)
        {
            var user = _appRepository.GetUserById(id);
            return Ok(user);
        }

        // POST api/values
        [HttpPost]
        [Route("add")]
        public void Add([FromBody] User user)
        {
            _appRepository.Add(user);
            _appRepository.SaveAll();
            
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
