package com.usermanagement

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

    private static final long serialVersionUID = 1
    String firstName
    String lastName
    String mobile
    String username
    String password
    String description
    String featuredImage
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    Set<Role> getAuthorities() {
        (UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
    }

    static constraints = {
        featuredImage nullable:true,blank:true
        description nullable:true,blank:true
        password nullable: false, blank: false, password: true
        username nullable: false, blank: false, unique: true, email: true
        firstName matches: "[a-zA-Z]+"
        lastName matches: "[a-zA-Z]+"
        mobile matches: "[0-9]+"
    }

    static mapping = {
	    password column: '`password`'
    }
}
