package com.pages

import com.usermanagement.Role
import com.usermanagement.UserRole

class TrainersController {

    def index() {
        def role = Role.findByAuthority("ROLE_MENTOR")
       def mentors =  UserRole.findAllByRole(role)
        [mentors:mentors]
    }
}
