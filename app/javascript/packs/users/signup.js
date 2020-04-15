import Vue from 'vue/dist/vue.js';
import UsersSignup from 'view/users/signup';

new Vue ({
    el: '#users-signup',
    components: {
        'users-signup': UsersSignup
    }
});