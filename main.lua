require "sllib_base"

-- ð������
function bubbleSort(arr)
	log("----ð������----")
	log(" 1.�Ƚ�����λ��Ԫ�أ���ǰ��Ⱥ���Ĵ󣬽���")
	log(" 2.��ÿһ������Ԫ����ͬ���������ӵ�һ�Ե����һ�ԣ��õ������")
	log(" 3.�ظ�����������ÿһ�������һ��Ԫ�أ�ֱ��ʣ��һ�ԣ�������")

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
	log("ð������ ����:" .. #arr .. " ��������:" .. times)
end

function selectSort(arr)
	log("----ѡ������----")
	log(" 1.��ʼ������ΪR[1..n],������Ϊ�գ�����n-1��ѡ������õ��������")
	log(" 2.�����������Ѱ����С���������������ĩβ")
	log(" 3.ÿ�ν����������������ָ����������ݣ������������ڴ�")

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
	log("ѡ������ ����:" .. #arr .. " ��������:" .. times)
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
