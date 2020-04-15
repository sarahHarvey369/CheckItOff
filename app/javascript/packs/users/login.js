import Vue from 'vue/dist/vue.js';
import UsersLogin from 'view/users/login';

new Vue ({
    el: '#users-login',
    components: {
        'users-login': UsersLogin
    }
});