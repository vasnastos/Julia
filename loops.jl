array=rand(60)

average=0.0
for i in array
    global average+=i
end
average/=length(array)

for i in collect(1:10)
    println(i)
end
println(average)