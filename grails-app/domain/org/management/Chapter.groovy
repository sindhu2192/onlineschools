package org.management

class Chapter {
    String name
    Integer sNo
    String content
    static hasMany = [subjects:Subject]
    static belongsTo = Subject

    static constraints = {
    }
    String toString()
    {
        return name
    }
}
