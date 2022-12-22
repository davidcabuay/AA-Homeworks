fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']

 #sluggish octopus

 def sluggish_octopus(arr)
    longest_fish = ""
    arr.each do |fish1|
        arr.each do |fish2|
            if fish1.length < fish2.length
                longest_fish = fish2
            else
                longest_fish = fish1
            end
        end
    end
    longest_fish
 end
#  p sluggish_octopus(fishes)

 def dominant_octopus(arr)
    return self if arr.length <=1
    pivot = arr[0]
    left = arr[1..-1].select{|el| el.length < pivot.length}
    right = arr[1..-1].select{|el| el.length >= pivot.length}
    result = [dominant_octopus(left)] + [pivot] + [dominant_octopus(right)]
    return result[-1]
 end

 p dominant_octopus(fishes)

 def clever_octopus(arr)
    arr.max{|el| el.length}
 end
#  p clever_octopus(fishes)