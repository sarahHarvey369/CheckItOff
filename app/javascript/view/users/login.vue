<template>
    <form method="post" action="/sessions">
        <div class="form-group">
            <input type="hidden" name="authenticity_token" :value="csrf">
            <div class="field">
                <label class="label" for="inputEmail" style="font-size:14px; color:grey">Email</label>
                <input type="email" class="form-control" id="inputEmail" name="email" placeholder="Enter email">
            </div>
        </div>

        <div class="form-group">
            <div class="field">
                <label class="label" for="inputPassword" style="font-size:14px; color:grey">Password</label>
                <input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password">
            </div>
        </div>

        <div class="field">
            <button id="login" type="submit" class="btn btn-primary">Login</button>
        </div>
    </form>
</template>

<script>
export default {
    data: function() {
        return ({
            csrf: document.querySelector('meta[name="csrf-token"]').getAttribute('content')
        })
    }
}
</script>