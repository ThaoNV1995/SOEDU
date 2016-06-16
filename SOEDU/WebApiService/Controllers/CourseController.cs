using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using SOEDU.Entities.Models;
using SOEDU.Service.Course;

namespace WebApiService.Controllers
{
    public class CourseController : ApiController
    {
        private readonly ICourseService courseService = new CourseService();

        [HttpPost,ActionName("CreateCourse")]
        public void CreateCourse(Sys_Course course)
        {
             courseService.addCourse(course);
        }
    }
}
