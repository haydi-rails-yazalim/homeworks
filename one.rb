
print "name:"
name = gets
puts name

print "age:"
age = gets
puts age

print "school:"
school = gets
puts school

me= [ name, age, school]

sum = me[0].length + me[2].length

if sum > 7
    me.push("7den buyuk")
    else
    me.clear
    me.push("7den kucuktur")
end

print me
