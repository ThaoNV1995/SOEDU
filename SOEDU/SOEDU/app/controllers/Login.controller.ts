﻿/// <reference path="../../scripts/typings/angularjs/angular.d.ts" />
module app.login {
    import UserModel = app.services.UserModel;

    interface ILoginScope {
        login(log: UserModel): ng.IPromise<UserModel>;
    }

    class LoginController implements ILoginScope {
        userModel: UserModel;
        static $inject = ['$http', 'app.Services.LoginService'];
        constructor(private $http: ng.IHttpService, public loginService: services.ILoginService) { }
        login(user: UserModel): ng.IPromise<UserModel> {
            return this.loginService.login(user)
                .then((data: ng.IHttpPromiseCallbackArg<UserModel>): any=> {

                })
        }
    }

    angular
        .module('app')
        .controller('app.login.LoginController', LoginController);
} 