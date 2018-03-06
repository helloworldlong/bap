
def quicksort(nums):
    if len(nums) <= 1:
        return nums
    less = []
    greater = []
    base = nums.pop()
    for base1 in nums:
        if base1[1] < base[1]:
            less.append(base1)
        else:
            greater.append(base1)
    return quicksort(less) + [base] + quicksort(greater)
nums=[]
nums.append((1,2))
nums.append((1,1))
nums.append((1,3))
my=quicksort(nums)
print my
print type(my)