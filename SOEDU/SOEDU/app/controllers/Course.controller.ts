﻿/// <reference path="../../scripts/typings/angularjs/angular.d.ts" />
module app.courses {
    import Course = app.services.Course;
   
    interface ICourseScope {
        addCourse(newCourse: Course): ng.IPromise<Course>;
        editCourse();
    }

    class CourseController implements ICourseScope {
        courses: Course[];

        static $inject = ['$http', 'app.services.CourseService'];

        constructor(private $http: ng.IHttpService, public courseService: services.ICourse) {
        }

        addCourse(newCourse: Course): ng.IPromise<Course> {
            return this.courseService.addCourse(newCourse)
                .then((data: ng.IHttpPromiseCallbackArg<Course>): any=> {
                    //this.courses.push(<Course>data);
                })
        }
        editCourse() {
            alert(12);
        }
    }
    angular
        .module('app')
        .controller('app.course.CourseController', CourseController);
} 