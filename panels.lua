print("Enter the solar panels count:")
panels = io.read("*n")

print(panels.." solar panels in the lvl system is:\n")

for i=1,8 do
	local formula = math.floor(panels/math.pow(8, i-1))
	print(i.. " level = " ..formula.. " panels\n")
end


