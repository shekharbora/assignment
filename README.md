Please follow below Steps

1) clone from the git

	git clone https://github.com/shekharbora/assignment.git

2) cd assignment

3) bundle install 

4) rails db:migrate

5) rails s


http://localhost:3000

def countingValleys(n, s)
	valley_count = 0
	level = 0
	n.times do |i|
		if s[i].eql?('U')
			level += 1
			if level.eql?(0)
                valley_count += 1
            end
		elsif s[i].eql?('D')
			level -= 1
		end
	end
	p valley_count
end