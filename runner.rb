Dir["./lib/*.rb"].each { |file| require file}
CreditCheck.new.validate_card('4929735477250543')
