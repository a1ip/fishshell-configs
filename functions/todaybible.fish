function todaybible 
	command ruby -e 'puts ARGF.read.split(/\n\n\n/)[Time.now.month][/\n#{Time.now.day.to_s}.*\n/]' < .planchrono.txt
end
