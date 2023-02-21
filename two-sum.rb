# takes in an array of integers(nums) and an integer(target)
# return indices of the TWO numbers that add up to target
# each input would have ONLY one solution
# can NOT use the same element twice
# can return answer in any order
# ex. nums = [2, 7, 11, 15], target = 9 => [0,1]
# because 2 + 7 = 9
# want to see if for each number if the complimentary number is available to hit the target

def two_sums(nums, target)
    seen = {}
    index = 0
    for num in nums do
        if seen[num]
            return [seen[num], index]
        end
        complement = target - num
        seen[complement] = index
        index += 1
    end
end