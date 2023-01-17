package com.pages

import grails.validation.ValidationException
import org.management.Enquiry
import org.management.EnquiryService

import static org.springframework.http.HttpStatus.CREATED

class ContactController {
    EnquiryService enquiryService

    static allowedMethods = [save: "POST"]


    def index() {

    }
    def save(Enquiry enquiry) {
        if (enquiry == null) {
            notFound()
            return
        }

        try {
            enquiryService.save(enquiry)
        } catch (ValidationException e) {
            render enquiry.errors
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'enquiry.label', default: 'Enquiry'), enquiry.id])
                render "OK"
            }
            '*' { respond enquiry, [status: CREATED] }
        }
    }
}
