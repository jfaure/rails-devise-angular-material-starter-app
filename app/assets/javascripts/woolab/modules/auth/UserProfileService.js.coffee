#extend Devise-angular service to add profile user by role to Auth service
angular.module('AuthModule').factory 'UserProfileService', ['$rootScope', 'Auth', 'Restangular', "customToast", ($rootScope, Auth, Restangular, customToast)->
    extend = angular.extend (Auth)
    extend.get_user_profile = ()->
        currentUser = extend._currentUser
        profileRoute = currentUser.role_type.toLowerCase() + 's'
        Restangular.one(profileRoute, currentUser.role_id).get()

    extend.update_user_profile = (profile) ->
        currentUser = extend._currentUser
        profileRoute = currentUser.role_type.toLowerCase() + 's'
        Restangular.one(profileRoute, currentUser.role_id).put(profile).then(
            (new_profile) ->
                customToast("success", 'auth.toast_messages.edit_profile_success')
            (response) ->
                if response.status == 422
                    customToast("error", 'auth.toast_messages.update_password_failure')
                else 
                    customToast("error", 'auth.toast_messages.edit_profile_failure')
        )
    extend
]