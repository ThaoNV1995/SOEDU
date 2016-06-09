/// <reference path="../../scripts/typings/angularjs/angular.d.ts" />
var app;
(function (app) {
    var CourseByTeacher;
    (function (CourseByTeacher_1) {
        var CourseByTeacherController = (function () {
            function CourseByTeacherController($http, CourseByTeacherService) {
                this.$http = $http;
                this.CourseByTeacherService = CourseByTeacherService;
                alert(12);
                this.getListCourseByTeacher();
            }
            CourseByTeacherController.prototype.getListCourseByTeacher = function () {
                var _this = this;
                return this.CourseByTeacherService.getListCourseByTeacher()
                    .then(function (data) {
                    return _this.Course = data;
                });
            };
            CourseByTeacherController.$inject = ['$http', 'app.services.CourseByTeacherService'];
            return CourseByTeacherController;
        }());
        angular
            .module('app')
            .controller('app.teacher.CourseByTeacherController', CourseByTeacherController);
    })(CourseByTeacher = app.CourseByTeacher || (app.CourseByTeacher = {}));
})(app || (app = {}));
//# sourceMappingURL=Teacher.controller.js.map