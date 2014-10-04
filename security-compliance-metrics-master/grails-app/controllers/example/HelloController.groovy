package example



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HelloController {
	
	def helloService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Hello.list(params), model:[helloInstanceCount: Hello.count()]
    }
	
	def speak() {
		def helloInstance = Hello.get(1)
		render helloInstance.something
	}

    def show(Hello helloInstance) {
        respond helloInstance
    }

    def create() {
        respond helloService.create(params)
    }

    @Transactional
    def save(Hello helloInstance) {
        if (helloInstance == null) {
            notFound()
            return
        }

        if (helloInstance.hasErrors()) {
            respond helloInstance.errors, view:'create'
            return
        }

        helloService.save(helloInstance)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'hello.label', default: 'Hello'), helloInstance.id])
                redirect helloInstance
            }
            '*' { respond helloInstance, [status: CREATED] }
        }
    }

    def edit(Hello helloInstance) {
        respond helloInstance
    }

    @Transactional
    def update(Hello helloInstance) {
        if (helloInstance == null) {
            notFound()
            return
        }

        if (helloInstance.hasErrors()) {
            respond helloInstance.errors, view:'edit'
            return
        }

        helloService.update(helloInstance)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Hello.label', default: 'Hello'), helloInstance.id])
                redirect helloInstance
            }
            '*'{ respond helloInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Hello helloInstance) {

        if (helloInstance == null) {
            notFound()
            return
        }

        helloService.delete(helloInstance)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Hello.label', default: 'Hello'), helloInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'hello.label', default: 'Hello'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
