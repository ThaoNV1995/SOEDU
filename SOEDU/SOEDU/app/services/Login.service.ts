 ﻿/// <reference path="../../scripts/typings/angularjs/angular.d.ts" />
module app.services {
    export class UserModel {
        UserName: string;
        Password: string;
        Remember: boolean;
    }

    export interface ILoginService {
        login(user: UserModel): ng.IPromise<UserModel>;
    }
    class LoginService implements ILoginService {
        static $inject = ['$http'];
        constructor(private $http: ng.IHttpService) { }
        login(user: UserModel): ng.IPromise<UserModel> {
            console.log(user);
            return this.$http.post('dsds', user)
                .then((response: ng.IHttpPromiseCallbackArg<UserModel>): any=> {
                    return <UserModel>response.data;
                });
        }
    }

    factory.$inject = ['$http'];

    function factory($http: ng.IHttpService): ILoginService {
        return new LoginService($http);
    }

    angular
        .module('app')
        .factory('app.Services.LoginService', factory);
}