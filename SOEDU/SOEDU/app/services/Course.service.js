/// <reference path="../../scripts/typings/angularjs/angular.d.ts" />
var app;
(function (app) {
    var services;
    (function (services) {
        var Course = (function () {
            function Course() {
            }
            return Course;
        })();
        services.Course = Course;
        var CourseService = (function () {
            function CourseService($http) {
                this.$http = $http;
            }
            CourseService.prototype.addCourse = function (course) {
                console.log(course);
                debugger;
                return this.$http.post('http://localhost:49401/api/Course', course)
                    .then(function (response) {
                    return response.data;
                });
            };
            CourseService.$inject = ['$http'];
            return CourseService;
        })();
        factory.$inject = ['$http'];
        function factory($http) {
            return new CourseService($http);
        }
        angular
            .module('app')
            .factory('app.services.CourseService', factory);
    })(services = app.services || (app.services = {}));
})(app || (app = {}));
//# sourceMappingURL=Course.service.js.map