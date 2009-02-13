def format_slide_item(item)
  case item
    when String
      return "#{item}\n"
    when Hash
      formatted_item = ''
      item.each do |key, value|
        formatted_item << "#{key}: \n"
        formatted_item << "#{format_slide_item(value)}\n\n"
      end
      return formatted_item
    when Array
      return item.join("\n") + "\n"
  end  
end

def s(num)
  slide = @slides[num-1]
  puts "\n" + "=="*50
  puts " "*20 + "#{num}. #{slide[0].upcase}"
  puts "=="*50
  puts format_slide_item(slide[1])
  @last = num
  nil
end

def n
  s((@last||0)+1)
end

def p
  s((@last||2)-1)
end

def slideshow(timeout = 5)
  1.upto(@slides.length) {|n| s(n); sleep(timeout)}
  nil
end