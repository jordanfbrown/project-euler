class LinkedList
	attr_accessor :head

	def insert(value)
		element = ListElement.new(value)
		element.next = @head
		@head = element
	end

	def inspect
		values = ''
		el = @head
		until el.nil?
			values += "#{el.value} "
			el = el.next
		end
		values
	end

	def first
		@head.value
	end

	def delete(value)
		el = @head

		if el.value == value
			@head = el.next 
			return
		end

		until el.next.value == value
			el = el.next
		end
		el.next = el.next.next
	end

	def last
		el = @head
		while true
			el = el.next
			return el.value if el.next.nil?
		end
	end
end

class ListElement
	attr_accessor :value, :next

	def initialize(value)
		@value = value			
	end	
end

l = LinkedList.new
l.insert(3)
l.insert(4)
l.insert(5)
l.insert(6)
l.insert(7)
l.insert(8)
l.insert(9)

l.delete(9)
l.delete(8)

puts l.inspect

