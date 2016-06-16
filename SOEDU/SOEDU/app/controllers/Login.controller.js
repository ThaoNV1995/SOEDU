/// <reference path="../../scripts/typings/angularjs/angular.d.ts" />
var app;
(function (app) {
    var login;
    (function (login) {
        var LoginController = (function () {
            function LoginController($http, loginService) {
                this.$http = $http;
                this.loginService = loginService;
            }
            LoginController.prototype.login = function (user) {
                return this.loginService.login(user)
                    .then(function (data) {
                });
            };
            LoginController.$inject = ['$http', 'app.Services.LoginService'];
            return LoginController;
        })();
        angular
            .module('app')
            .controller('app.login.LoginController', LoginController);
    })(login = app.login || (app.login = {}));
})(app || (app = {}));
//# sourceMappingURL=Login.controller.js.map