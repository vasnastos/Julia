array=Array{Int64}(undef,3)
print(array)
array[1]=10
println()
print(array)
println()
newarray=collect(1:5)
println(newarray)

# Array with specific start stop and step among the numbers
array2=collect(0:5:100)
println(array2)
#[0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100]

#ellipsis operator
array3=[0:10...]
println(array3)
#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#Comprehension
array4=[x for x in range(1,length=20,stop=100)]
println(array4)

#Matrix of Random numbers
println(rand(3,3))

#Fill table with ones
array6=ones(6)
array7=[5,6,7,8,9,10]
println(array6)

#adding elemnts By Position
println(array6+array7)

# access elements by providing true and false
println(array7[[true,true,false,false,true,false]])

#access an element by function getindex
println(getindex(array,1))

#Two Dimensonal array
tdarray=Array{Int64}(undef,3,3)
println(tdarray)

#Create an Array with the same size of Another Array
arraycopy=similar(array)
print("Original:")
println(array)
print("Copy with same size:")
println(arraycopy)

#for loop
for i in array
    println(i)
end

#Accesslasttables element
println("Last Table's Elements:")
println("*******************************************************************************************")
println(array[end])
println(array2[end])
println(array3[end])
println(array4[end])
println(array6[end])
println(array7[end])

#change table formating dynimacally
# We will use array table
print("Original Format:")
println(array)

push!(array,20)
pushfirst!(array,67)
splice!(array,2,20)
print("After Modification:")
println(array)

#Popping elements
print("After Popping Elements:")
pop!(array)
splice!(array,1)
popfirst!(array)
println(array)

#Sort table
push!(array,10)
push!(array,20)
array=sort(array; alg=QuickSort)
print('Sorted Table:')
println(array)