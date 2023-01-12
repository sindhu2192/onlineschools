package org.management

class Subject {
      String name
      String description
    static hasMany = [chapters:Chapter,course:Course]
    static belongsTo = Course
    static constraints = {

    }
    String toString()
    {
        return name
    }
}
