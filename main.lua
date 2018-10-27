require "sllib_base"

-- 冒泡排序
function bubbleSort(arr)
	log("----冒泡排序----")
	log(" 1.比较相邻位置元素，若前面比后面的大，交换")
	log(" 2.对每一对相邻元素做同样工作，从第一对到最后一对，得到最大数")
	log(" 3.重复上述操作，每一轮少最后一个元素，直到剩下一对，排序完")

	log(arr)
	local t = arr
	for k = 1, #t do
		for i = 1, #t-k do
			if t[i] > t[i+1] then
				t[i], t[i+1] = t[i+1], t[i]
			end
		end 
	end
	log(arr)
end


function run()
	local arr = {}
	for i = 1, 10 do
		table.insert(arr, math.random(1, 50))
	end

	bubbleSort(arr)
end

run()
