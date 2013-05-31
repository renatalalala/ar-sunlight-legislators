require_relative 'models/politician'

#Exercise 1

# politician = Politician.find(10)

# cal_pol = Politician.where("state = ?", ["CA"])
# cal_pol = cal_pol.order("title DESC")
# cal_pol = cal_pol.select("firstname,lastname,party")

# senators = cal_pol.shift(2)
# puts "Senators:"
# senators.each do |senator|
#   puts "#{senator.firstname} #{senator.lastname} (#{senator.party})"
# end
# puts "Representatives:"

# cal_pol.each do |rep|
#   puts "#{rep.firstname} #{rep.lastname} (#{rep.party})"
# end

#Exercise 2

# males_rep = Politician.where(:title => 'Rep',:gender => 'M', :in_office => 1).count
# males_sen = Politician.where(:title => 'Sen',:gender => 'M',:in_office => 1).count
# fem_rep = Politician.where(:title => 'Rep',:gender => 'F',:in_office => 1).count
# fem_sen = Politician.where(:title => 'Sen',:gender => 'F',:in_office => 1).count

# puts "Male Senators: #{males_sen} (#{males_sen * 100 / (males_sen + fem_sen)}%)"
# puts "Male Representatives: #{males_rep} (#{males_rep * 100 / (males_rep + fem_rep)}%)"

#Exercise 3

# senators = Politician.select("state").where(:in_office => 1,:title => "Sen").group("state").count
# reps = Politician.select("state").where(:in_office => 1,:title => "Rep").group("state").count
# reps = reps.sort_by { |k,v| v }.reverse

# reps.each do |row|
#   state = row[0]
#   num_reps = row[1]
#   puts "#{state}: #{senators[state]} Senators, #{num_reps} Representative(s)"
# end

#Exercise 4

# sen_count = Politician.where(:title => "Sen").count
# rep_count = Politician.where(:title => "Rep").count

# puts "Senators: #{sen_count}"
# puts "Representatives: #{rep_count}"

#Exercise 5

# Politician.where(:in_office => 0).destroy_all

# sen_count = Politician.where(:title => "Sen").count
# rep_count = Politician.where(:title => "Rep").count

# puts "Senators: #{sen_count}"
# puts "Representatives: #{rep_count}"
