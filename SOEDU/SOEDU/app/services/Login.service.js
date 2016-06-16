/// <reference path="../../scripts/typings/angularjs/angular.d.ts" />
var app;
(function (app) {
    var services;
    (function (services) {
        var UserModel = (function () {
            function UserModel() {
            }
            return UserModel;
        })();
        services.UserModel = UserModel;
        var LoginService = (function () {
            function LoginService($http) {
                this.$http = $http;
            }
            LoginService.prototype.login = function (user) {
                console.log(user);
                return this.$http.post('dsds', user)
                    .then(function (response) {
                    return response.data;
                });
            };
            LoginService.$inject = ['$http'];
            return LoginService;
        })();
        factory.$inject = ['$http'];
        function factory($http) {
            return new LoginService($http);
        }
        angular
            .module('app')
            .factory('app.Services.LoginService', factory);
    })(services = app.services || (app.services = {}));
})(app || (app = {}));
//# sourceMappingURL=Login.service.js.map