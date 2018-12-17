def run()
    start_time = Time.now
       yield
    end_time = Time.now
    print "Time difference is #{(end_time - start_time) * 1000} milliseconds"
end

# warm up start
puts 'warm up start'
(5000..100000).step(5000) do |size| 
    array = (1..size).to_a
    run { array.reverse }
    puts " and size is #{size}"
end
puts "warm up finished\n\n"
# warm up end


# main run
(5000..100000).step(5000) do |size| 
    array = (1..size).to_a
    run { array.reverse }
    puts " and size is #{size}"
end


console.log('warm up finished')
