using SOEDU.Entities.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SOEDU.Repository.Course
{
    public class CourseRepository: ICourseRepository
    {
        /// <summary>
        /// Lấy danh sách khóa học
        /// </summary>
        /// <returns>List</returns>
        public List<Sys_Course> getAllCourse()
        {
            using (SOEDUEntities _db = new SOEDUEntities())
            {
                List<Sys_Course> lst = new List<Sys_Course>();
                lst = _db.Sys_Course.ToList();
                return lst;
            }
        }

        /// <summary>
        /// Xem chi tiết 1 khóa học
        /// </summary>
        /// <param name="id">ID khóa học</param>
        /// <returns>Course</returns>
        public Sys_Course viewDetail(string id)
        {
            using (SOEDUEntities _db = new SOEDUEntities())
            {
                return _db.Sys_Course.Find(id);
            }
        }

        /// <summary>
        /// Tạo 1 khóa học
        /// </summary>
        /// <param name="course">Course</param>
        /// <returns>long</returns>
        public string addCourse(Sys_Course course)
        {
            using (SOEDUEntities _db = new SOEDUEntities())
            {
                try
                {
                    _db.Sys_Course.Add(course);
                    _db.SaveChanges();
                    return course.Course_ID;
                }
                catch (Exception)
                {
                    return "Lỗi";
                }
            }
        }

        //Cập nhật khóa học
        /// <summary>
        /// Cập Nhật Khóa Học
        /// </summary>
        /// <param name="course">Course</param>
        /// <returns>bool</returns>
        public bool editCourse(Sys_Course course)
        {
            using (SOEDUEntities _db = new SOEDUEntities())
            {
                try
                {
                    var c = _db.Sys_Course.Find(course.Course_ID);
                    c.Course_Name = course.Course_Name;
                    c.Avatar = course.Avatar;
                    c.Video = course.Video;
                    c.Description = course.Description;
                    c.IsPrice = course.IsPrice;
                    c.IsPriceSale = course.IsPriceSale;
                    c.ViewCount = course.ViewCount;
                    c.CreateDate = course.CreateDate;
                    c.Status = course.Status;
                    c.IsOrder = course.IsOrder;
                    _db.SaveChanges();
                    return true;
                }
                catch (Exception)
                {
                    return false;
                }
            }
        }

        /// <summary>
        /// Xóa 1 khóa học
        /// </summary>
        /// <param name="id">ID khóa học</param>
        /// <returns>bool</returns>
        public bool deleteCourse(string id)
        {
            using (SOEDUEntities _db = new SOEDUEntities())
            {
                try
                {
                    var result = _db.Sys_Course.Find(id);
                    _db.Sys_Course.Remove(result);
                    _db.SaveChanges();
                    return true;
                }
                catch (Exception)
                {
                    return false;
                }
            }
        }
    }
}
