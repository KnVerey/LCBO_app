module ProductsHelper

	def msmTo24time(msm)
	  hour = msm / 60
	  mins = msm % 60

	  [hour, mins]
	end

	def msmTo12time(msm)
		return "Closed" if msm.nil?
  	time = msmTo24time(msm)
    h24  = time[0]
    h12  = (0 == h24 ? 12 : (h24 > 12 ? (h24 - 10) - 2 : h24))
 		ampm = (h24 >= 12 ? 'PM' : 'AM')

  	"#{h12}:#{sprintf("%02i",time[1])} #{ampm}"
	end

	def cents_to_dollars(cents)
		"$" + sprintf("%.02f",(cents.to_f/100)).to_s
	end

end
