function todaybible --description 'Shows verses to read by cronological plan'
	if test (count $argv) -eq 0 
		command ruby -e "puts /\n#{Time.now.day.to_s}\s{3}(.*)\n/.match(ARGF.read.split(/\n\n\n/)[Time.now.month])[1].sub(/;\s+/,'; ')" < ~/.planchrono.txt
	else if test (count $argv) -eq 1
		command ruby -e "puts ARGF.read.split(/\n\n\n/)[$argv[1].to_i]" < ~/.planchrono.txt
	else
		command ruby -e "puts /\n$argv[1]\s{3}(.*)\n/.match(ARGF.read.split(/\n\n\n/)[$argv[2].to_i])[1].sub(/;\s+/,'; ')" < ~/.planchrono.txt
	end
end
