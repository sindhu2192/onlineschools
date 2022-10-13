package org.management

class Course {
    String name
    String description
    Integer duration
    static hasMany = [subjects:Subject]

    static constraints = {

    }
    String toString()
    {
     return name
    }
}
