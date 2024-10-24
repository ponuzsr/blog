using blog.Models;
using Microsoft.AspNetCore.Mvc;
using static blog.Models.Dto;
using Microsoft.AspNetCore.Http;

namespace blog.Controllers
{
    
        [Route("posts")]
        [ApiController]
        public class UserController : ControllerBase
        {
            [HttpGet]
            public ActionResult<User> Get()
            {
                using (var context = new UserDbContext())
                {
                    return Ok(context.adatok.ToList());
                }

            }
            [HttpGet("{id}")]
            public ActionResult<User> GetById(Guid id)
            {
                using (var context = new UserDbContext())
                {
                    var user = context.adatok.SingleOrDefault(x => x.Id == id);

                    if (user != null)
                    {
                        return Ok(user);
                    }
                    return NotFound();
                }
            }

            [HttpPost]
            public ActionResult<User> Post([FromBody] Dto.CreateUserDto createUserDto)
            {
                using (var context = new UserDbContext())
                {
                    var user = new User
                    {
                        Id = Guid.NewGuid(),
                        Title = createUserDto.Title,
                        Description = createUserDto.Description,
                        CreatedTime = DateTime.UtcNow,
                        LastUpdated = DateTime.UtcNow,
                    };

                    if (user != null)
                    {
                        context.adatok.Add(user);
                        context.SaveChanges();
                        return StatusCode(201, user);
                    }
                    return BadRequest();


                }
            }

            [HttpPut]
            public ActionResult<User> Put(Guid id, UpdateUserDto updateUserDto)
            {
                using (var context = new UserDbContext())
                {
                    var existingUser = context.adatok.FirstOrDefault(x => x.Id == id);
                    if (existingUser != null)
                    {
                        existingUser.Title = updateUserDto.Title;
                        existingUser.Description = updateUserDto.Description;
                        existingUser.CreatedTime = DateTime.UtcNow;
                        existingUser.LastUpdated = DateTime.UtcNow;


                        context.adatok.Update(existingUser);
                        context.SaveChanges();
                        return StatusCode(200, existingUser);
                    }
                    return NotFound();
                }
            }
            [HttpDelete]
            public ActionResult<object> Delete(Guid id)
            {
                using (var context = new UserDbContext())
                {
                    var user = context.adatok.FirstOrDefault(x => x.Id == id);
                    if (user != null)
                    {
                        context.adatok.Remove(user);
                        context.SaveChanges();

                        return StatusCode(204, new { message = "Sikeres törlés!" });
                    }
                    return StatusCode(404, new { message = "Nincs mit törölni!" });
                }
            }
        }
    }

