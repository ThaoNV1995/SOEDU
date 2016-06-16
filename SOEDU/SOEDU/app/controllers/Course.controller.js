/// <reference path="../../scripts/typings/angularjs/angular.d.ts" />
var app;
(function (app) {
    var courses;
    (function (courses) {
        var CourseController = (function () {
            function CourseController($http, courseService) {
                this.$http = $http;
                this.courseService = courseService;
            }
            CourseController.prototype.addCourse = function (newCourse) {
                return this.courseService.addCourse(newCourse)
                    .then(function (data) {
                    //this.courses.push(<Course>data);
                });
            };
            CourseController.prototype.editCourse = function () {
                alert(12);
            };
            CourseController.$inject = ['$http', 'app.services.CourseService'];
            return CourseController;
        })();
        angular
            .module('app')
            .controller('app.course.CourseController', CourseController);
    })(courses = app.courses || (app.courses = {}));
})(app || (app = {}));
//# sourceMappingURL=Course.controller.js.map