require 'pry'
require 'time'

class Event
	attr_accessor :start_date, :start_date_string, :duration, :title, :attendees
	

	def initialize(start_date_string, duration, title, attendees_list)
		@start_date_string = start_date_string
		@start_date = Time.parse(start_date_string)
		@duration = duration.to_i
		@title = title
		@attendees = attendees_list
		return start_date

	end

	def postpone_24h
		postpone_date = start_date + (24*3600)
		@start_date = postpone_date
		return start_date	
	end


	def show_start_date
		puts start_date
	end

	def show_duration_class
		puts duration.class	
	end

	def end_date
		end_date = start_date + duration*60
		return end_date
	end

	def is_past?
		start_date < Time.now
	end

	def is_future?
		!is_past?
	end

	def is_soon?
		Time.now < start_date < Time.now + (30*60)
	end

	def to_s
		puts " >Titre : #{@title}"
		puts ">Date de début : #{start_date.strftime("%Y-%m-%d %H:%M")}"
		puts ">Durée : #{duration} minutes"
		print ">Invités : "
		attendees.each do |i| 
			print i + ", "
		end
		return
	end

end

binding.pry
puts "end of file"
