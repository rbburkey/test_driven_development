class RPNCalculator

  def initialize(value = 0, array = [])
      @value = value
      @array = array
  end

  def value
      return @value
  end

  def push(num)
      @array << num
  end

  def plus
    if(@array.empty?)
      raise "calculator is empty"
    elsif @array.length >= 2
          @value += @array[-1] + @array[-2]
          @array.pop(2)
      else
          @value += @array[-1]
          @array.pop
      end
  end

  def minus
    if(@array.empty?)
      raise "calculator is empty"
    elsif @array.length >= 2
          @value += @array[-2] - @array[-1]
          @array.pop(2)
      else
          @value -= @array[-1]
          @array.pop
      end
  end

  def divide
    if(@array.empty?)
      raise "calculator is empty"
    elsif @array.length >= 2
          @value += (@array[-2].to_f) / @array[-1]
          @array.pop(2)
      else
          @value /= @array[-1]
          @array.pop
      end
  end

  def times
    if(@array.empty?)
      raise "calculator is empty"
    elsif @array.length >= 2
          @value += (@array[-2].to_f) * @array[-1]
          @array.pop(2)
      else
          @value *= @array[-1]
          @array.pop
      end
  end
  end
