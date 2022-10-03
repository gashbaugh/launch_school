a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

b = []
#creating empty array to push new elements to
a.map { |x| b << x.split(' ') }
#calling map to split each element of a seperated by a ' '
b.flatten!
#calling flatten! to mutate b into a single array
b