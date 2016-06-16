﻿/// <reference path="../../scripts/typings/angularjs/angular.d.ts" />
module app.CourseByTeacher {
  
    import CourseByTeacher = app.services.CourseByTeacher;

    interface ICourseByTeacheaScope {
        getListCourseByTeacher(): ng.IPromise<CourseByTeacher[]>;
    }

    class CourseByTeacherController implements ICourseByTeacheaScope {
        Course: CourseByTeacher[];
        static $inject = ['$http', 'app.services.CourseByTeacherService'];
        constructor(private $http: ng.IHttpService, public CourseByTeacherService: services.ICourseByTeacher) {
            this.getListCourseByTeacher();
           
        }

        getListCourseByTeacher(): ng.IPromise<CourseByTeacher[]> {
            return this.CourseByTeacherService.getListCourseByTeacher()
                .then((data: ng.IHttpPromiseCallbackArg<CourseByTeacher[]>): any => {
                    return this.Course = <CourseByTeacher[]>data;
                });
        }
    }
    angular
        .module('app')
        .controller('app.teacher.CourseByTeacherController', CourseByTeacherController);
}