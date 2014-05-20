timestamp = '/home/user/wheel/book/latest'
filename = '/home/user/wheel/book/mail.txt'
date = ''

File.open(timestamp) do |f|
	date = f.readline
	f.close
end

File.open(filename) do |f|
	f.any? do |line|
		if (line.include?('cassidyk/whatcomesbeforealpha Commit'))
			until (line.include?('<issued>')) do
				line = f.readline
			end
			time = line.delete '<issued>','</issued>'
			time.chop!
			if (time > date)
				system("echo #{time} > #{timestamp}")
				`/home/user/wheel/book/buildBook.sh`
				exit
			end
		end
	end
end
