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
	log("ð������ ����:" .. #arr .. " ��������:" .. times .. "\n")
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
	log("ѡ������ ����:" .. #arr .. " ��������:" .. times .. "\n")
end

function insertSort(arr)
	log("----��������----")
	log("�����������У���δ���������������������к���ǰɨ�裬")
	log("�ҵ���Ӧλ�ò����롣")
	log(" 1.��һ��Ԫ�ؿ���Ϊ������������")
	log(" 2.ȡ��һ��Ԫ�أ��������������дӺ���ǰɨ��")
	log(" 3.�ҵ�С�ڵ�������Ԫ�أ��������")

	log(arr)
	local times = 0
	for k = 2, #arr do
		for i = k - 1, 1, -1 do  --����������
			if arr[i] <= arr[k] or i == 1 then
				local insIdx = i == 1 and 0 or i
				--����λ���Ԫ�غ���(ע����ܲ����һλ����0λ��)
				--��Ԫ�ط��������Ŀ�λ��
				local v = arr[k]
				for t = k, insIdx+2, -1 do
					times = times + 1
					arr[t] = arr[t-1]
				end
				arr[insIdx+1] = v
				break
			end
		end
	end
	log(arr)
	log("�������� ����:" .. #arr .. " ��������:" .. times .. "\n")
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
	insertSort(getTestData())
end

run()
