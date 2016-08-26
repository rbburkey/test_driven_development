def add (num1, num2)
  sum = num1 + num2
  return sum
end


def subtract (num1, num2)
  sum = num1 - num2
  return sum
end


def sum (arr)
	i = 0
	result = 0
	while i < arr.length
		 result = arr[i] + result
		 i += 1
	end
	return result
end


def multiply(arr)
  i = 0
  result = 1
  while i < arr.length
    result = arr[i] * result
    i += 1
  end
  return result
end


def power(num1,num2)
  i = 0
  result = 1
  while i < (num2)
    result = num1 * result
    i +=1
  end
  return result
end

def factorial (num)
  i = 1
  result = 1
  while i < num
    result = result * num - 1
  i += 1
end
return result
end

def factorial(num)
  if num == 0
    return 0
  end
  result = 1
  (1..num).each do |n|
    result *= n
  end
  return result
end
