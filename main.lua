require "sllib_base"

-- ð������
function bubbleSort(arr)
	log("----ð������----")
	log(" 1.�Ƚ�����λ��Ԫ�أ���ǰ��Ⱥ���Ĵ󣬽���")
	log(" 2.��ÿһ������Ԫ����ͬ���������ӵ�һ�Ե����һ�ԣ��õ������")
	log(" 3.�ظ�����������ÿһ�������һ��Ԫ�أ�ֱ��ʣ��һ�ԣ�������")

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
