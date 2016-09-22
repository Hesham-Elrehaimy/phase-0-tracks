def search_arr(arr,int)
	result = nil
	for i in 0..arr.length
		if arr[i] == int
			result = i
			break
		else
			result = nil
		end
	end
	result
end

#array = [1,2,3,4,5,6]
#p search_arr(array,4)
#p search_arr(array,7)

#makes an array of fibonaci numbers 

def fib(terms)
	fib_arr = [0,1]
	for i in 2...terms
			fib_arr << fib_arr[i-1]+fib_arr[i-2]
	end
	fib_arr
#	fib_arr[-1]
end
p fib(5)
p fib(100)[-1]

=begin
bubble sorting algorithm pseudocode
- Gets an array
- Itterates through the array continues until the numbers are sorted low to high
	-Compares each number to the one before it 
	-Swaps numbers if one is larger
	-Last number in array is sorted
=end

def bubble_sort(arr)
	j = 0
	while j < arr.length-1
		i = 0
		while i < arr.length-1-j
			if arr[i] > arr[i+1]
				arr[i],arr[i+1]=arr[i+1],arr[i]
			end
			i+=1
		end
		j+=1
	end
	arr
end

array = [3,1,7,4,2,9,5,8]
p bubble_sort(array)
