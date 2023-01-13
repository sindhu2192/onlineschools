package com.pages

import org.management.CourseService

class CoursesController {

    CourseService courseService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond courseService.list(params), model:[courseCount: courseService.count()]
    }

}
