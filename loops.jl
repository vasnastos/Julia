array=rand(60)

function loopAvg(n)
    println("function Handler")
    average=0.0
    for i in range(1,length=n)
        average+=i
    end
    return average
end

average=0.0
for i in array
    global average+=i
end
average/=length(array)
println(average)


for i in collect(1:10)
    println(i)
end

i=0
while i<=10
    global i
    println(i)
    i+=1
end

println(loopAvg(10))