def search_array(array, integer)
	i = 0 
	while i < array.length
		if array[i] == integer
			result = i
		end 

 		i += 1 
	end 
	result
end 

arr = [42, 89, 23, 1]

p search_array(arr, 1)
p search_array(arr, 24)

def fib(num)
	
	result = [0, 1]
	
 i = 2 
 
 while i < num
 
 result << result[i-1] + result[i-2]
 
 i += 1
 
 end
 
 result
 
	
end

p fib(100)
p fib(100)[-1]

	