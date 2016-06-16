﻿/// <reference path="../../scripts/typings/angularjs/angular.d.ts" />
module app.services {

    export class Course {
        Course_ID: string;
        Course_Name: string;
        Avatar: string;
        Video: string;
        Description: string;
        IsPrice: number;
        IsPriceSale: number;
        ViewCount: number;
        CreateDate: string;
        Status: boolean;
        IsOrder: number;
    }

    export interface ICourse {
        addCourse(course: Course): ng.IPromise<Course>;
    }

    class CourseService implements ICourse {
        static $inject = ['$http'];
        constructor(private $http: ng.IHttpService) { }
        addCourse(course: Course): ng.IPromise<Course> {
            console.log(course);
            debugger;
            return this.$http.post('http://localhost:49401/api/Course', course)
                .then((response: ng.IHttpPromiseCallbackArg<Course>): any=> {
                    return <Course>response.data;
                });
        }
    }
    factory.$inject = ['$http'];
    function factory($http: ng.IHttpService): ICourse {
        return new CourseService($http);
    }


    angular
        .module('app')
        .factory('app.services.CourseService', factory);
}