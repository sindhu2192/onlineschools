package org.management

class Subject {
      String name
      String description
      Integer duration
      String semester
    static hasMany = [chapters:Chapter,course:Course]
    static belongsTo = Course
    static constraints = {

    }
    String toString()
    {
        return name
    }
}
