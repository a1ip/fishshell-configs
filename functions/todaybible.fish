function todaybible --description 'Shows verses to read by cronological plan'
	if test (count $argv) -eq 0 
		command ruby -e 'puts ARGF.read.split(/\n\n\n/)[Time.now.month][/\n#{Time.now.day.to_s}.*\n/]' < ~/.planchrono.txt
	else if test (count $argv) -eq 1
		command ruby -e "puts ARGF.read.split(/\n\n\n/)[$argv[1].to_i]" < ~/.planchrono.txt
	else
		command ruby -e "puts ARGF.read.split(/\n\n\n/)[$argv[2].to_i][/\n$argv[1].*\n/]" < ~/.planchrono.txt
	end
end
