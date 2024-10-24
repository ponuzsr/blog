using blog.Models;
using Microsoft.AspNetCore.Mvc;

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
                    return Ok(context.NewUsers.ToList());
                }

            }
            [HttpGet("{id}")]
            public ActionResult<User> GetById(Guid id)
            {
                using (var context = new UserDbContext())
                {
                    var user = context.NewUsers.SingleOrDefault(x => x.Id == id);

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
                        Decsription = createUserDto.Description,
                        CreatedTime = createUserDto.CreatedTime,
                        LastUpdated = createUserDto.LastUpdated,
                    };

                    if (user != null)
                    {
                        context.NewUsers.Add(user);
                        context.SaveChanges();
                        return StatusCode(201, user);
                    }
                    return BadRequest();


                }
            }

            [HttpPut]
            public ActionResult<User> Put(Guid id, Dto.UpdateUserDto updateUserDto)
            {
                using (var context = new UserDbContext())
                {
                    var existingUser = context.NewUsers.FirstOrDefault(x => x.Id == id);
                    if (existingUser != null)
                    {
                        existingUser.Title = updateUserDto.Title;
                        existingUser.Decsription = updateUserDto.Description;
                        existingUser.CreatedTime = updateUserDto.CreatedTime;

                        context.NewUsers.Update(existingUser);
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
                    var user = context.NewUsers.FirstOrDefault(x => x.Id == id);
                    if (user != null)
                    {
                        context.NewUsers.Remove(user);
                        context.SaveChanges();

                        return StatusCode(204, new { message = "Sikeres törlés!" });
                    }
                    return StatusCode(404, new { message = "Nincs mit törölni!" });
                }
            }
        }
    }

