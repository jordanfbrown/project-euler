require "test/unit"

class Queue
  def initialize(data = [])
    if data.is_a?(Array)
      @data = data
    else
      raise 'A queue may only take an array in its constructor.'
    end
  end

  def enqueue(val)
    @data.push(val)
  end

  def dequeue
    @data.shift
  end

  def empty?
    @data.empty?
  end

  def size
    @data.length
  end
end

class QueueTest < Test::Unit::TestCase

  def test_queue
    q = Queue.new

    assert q.empty?

    q.enqueue(3)
    q.enqueue(4)
    q.enqueue(5)

    assert !q.empty?
    assert_equal 3, q.size
    assert_equal 3, q.dequeue
  end
end

def dominator(array)
  counts = Hash.new(0)
  dominator = -1
  array.each_with_index do |num, i|
    counts[num] += 1
    dominator = i if counts[num].to_f / array.length >= 0.5
  end
  dominator
end

class String
  def fuzzify
    self.downcase.gsub(/\s/, '')
  end
end

def fuzzy_palindrome(a)
  fuzzy = a.fuzzify
  fuzzy.reverse == fuzzy
end

def subsequence(array)
  sum = 0
  sums = {}
  array.each_with_index do |num, i|
    sum += num
    sums[i] = sum
  end
  sums
end

class Array
  def without(index)
    self[0..index-1] + self[index+1..self.length-1]
  end
end

puts [1,2,3,4].without(2).inspect
