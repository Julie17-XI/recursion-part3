#Problem 1: 

# def sum_recur(array)
# end

#Problem 2: 

# def includes?(array, target)
# end

# Problem 3: 

def num_occur(array, target)
    return 0 if array.empty?
    counter = 0
    counter += 1 if array.first == target
    counter += num_occur(array[1..-1], target)
end

# Problem 4: 

def add_to_twelve?(array)
    return false if array.length < 2
    add_to_twelve?(array[0...-1]) || array[-1] + array[-2] == 12
end

# Problem 5: 

def sorted?(array)
    flag = (array[0] <=> array[1])
    return true if array.length < 2
    sorted?(array[0...-1]) && (array[-2] <=> array[-1]) == flag
end

# Problem 6: 

# def reverse(string)
# end


if $PROGRAM_NAME == __FILE__
    p num_occur([1,2,3,1,2,1], 1)
    p num_occur(['a','b','a','c'], 'a')
    p num_occur(['a','b','a','c'], 'd')
    p add_to_twelve?([3,5,6,6,7,9]) #=>t
    p add_to_twelve?([4,5,6,7,8,9]) #=>f
    p add_to_twelve?([6,6]) #=>t
    p sorted?([4,2,6,3,7,1]) #=>f
    p sorted?([4,6,8,10,12]) #=>t
end