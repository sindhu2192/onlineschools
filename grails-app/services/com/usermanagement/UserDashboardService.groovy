package com.usermanagement

import grails.gorm.transactions.Transactional

@Transactional
class UserDashboardService
{

    List<User> list(Map args)
    {
        return User.list(args)
    }
    User save(User user)
    {
      User.save(user)
        return user
    }
     def get(Serializable id){
return User.get(id)
    }
     def roles(Serializable id){
     def user = User.get(id)
      return UserRole.findAllByUser(user)
 }
     def assignrole(){

}


}
//new UserRole(user: admin, role: Role.findByAuthority('ROLE_USER')).save(flush: true, failOnError: true)


