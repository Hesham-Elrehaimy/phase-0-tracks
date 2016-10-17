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

	