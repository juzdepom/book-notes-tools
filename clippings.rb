#!/usr/bin/env ruby

# type ruby clippings.rb clippings.txt into terminal to see text output in terminal
# type ruby clippings.rb clippings.txt > new.txt into terminal to 'put' into file

if ARGV.size > 0
    data = File.read(ARGV[0])
  else
    data = STDIN.read
  end
  
  lines = data.split(/[\r\n]+/)
  
  lines.each do |line|
    # if line contains julia.gao.miller
    if line.include? "julia.gao.miller"
        next
    end
    # if line contains ======
    if line.include? "======"
        puts
        next
        # puts "~"
    end
    # if line starts with Yellow
    index = line.index('- Your Highlight on Location')
    next unless index.nil?
    puts line
  
    # next if line.strip == 'Add a note'
  
    # if index.nil?
    #   puts line
    # else
    #   puts line[0..index-1]
    # end
  
  end
  