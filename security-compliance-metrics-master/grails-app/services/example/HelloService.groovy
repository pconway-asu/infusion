package example

import grails.transaction.Transactional

@Transactional
class HelloService {
	
	def create(params) {
		new Hello(params)
	}
	
	def save(Hello helloInstance) {
		helloInstance.save flush:true
	}
	
	def update(Hello helloInstance) {
		helloInstance.save flush:true
	}

    def delete(Hello helloInstance) {
		helloInstance.delete flush:true
    }
	
}
