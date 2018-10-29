require "sllib_base"

-- 冒泡排序
function bubbleSort(arr)
	log("----冒泡排序----")
	log(" 1.比较相邻位置元素，若前面比后面的大，交换")
	log(" 2.对每一对相邻元素做同样工作，从第一对到最后一对，得到最大数")
	log(" 3.重复上述操作，每一轮少最后一个元素，直到剩下一对，排序完")

	log(arr)
	local times = 0
	local t = arr
	for k = 1, #t do
		for i = 1, #t-k do
			times = times + 1
			if t[i] > t[i+1] then
				t[i], t[i+1] = t[i+1], t[i]
			end
		end 
	end
	log(arr)
	log("冒泡排序 总数:" .. #arr .. " 遍历次数:" .. times)
end

function selectSort(arr)
	log("----选择排序----")
	log(" 1.初始无序区为R[1..n],有序区为空；经过n-1躺选择排序得到有序队列")
	log(" 2.从无序队列中寻找最小数，放入有序队列末尾")
	log(" 3.每次交换有序和无序索引指向的数据内容，无需额外分配内存")

	log(arr)
	local times = 0
	local orderIdx = 1
	for k = 1, #arr-1 do
		local minIdx = k
		for i = k+1, #arr do
			times = times + 1
			if arr[i] < arr[minIdx] then
				minIdx = i
			end
		end
		arr[orderIdx], arr[minIdx] = arr[minIdx], arr[orderIdx]
		orderIdx = orderIdx + 1
	end
	log(arr)
	log("选择排序 总数:" .. #arr .. " 遍历次数:" .. times)
end

function getTestData()
	local arr = {}
	for i = 1, 10 do
		table.insert(arr, math.random(1, 50))
	end
	return arr
end

function run()
	bubbleSort(getTestData())
	selectSort(getTestData())
end

run()
