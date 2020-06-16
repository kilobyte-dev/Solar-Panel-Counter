print("Choose a mode:\nSolar panels in the lvl system(1)\nLvl solar panels to 1 lvl(2)")
mode = io.read("*n")

lvl = {}
lvl[1] = 1
lvl[2] = 8
lvl[3] = 64
lvl[4] = 512
lvl[5] = 2048
lvl[6] = 4096
lvl[7] = 8192
lvl[8] = 16384
lvl[9] = 32768

if mode == 1 then
	print("Enter the solar panels count:")
	panels = io.read("*n")
	
	print(panels.." solar panels in the lvl system is:\n")
	
	for i=1,#lvl do
		local formula = math.floor(panels / lvl[i])
		print(i.. " level = " ..formula.. " solar panel(s)\n")
	end
elseif mode == 2 then
	print("Enter the lvl solar panel:")
	lvlpnl = io.read("*n")

	print("Enter the solar panels count:")
	panels = io.read("*n")
	
	local formula = lvl[lvlpnl] * panels
	print("Requires 1 lvl panels - " ..formula)
else
	print("Please choose a 1 or 2 mode.")
	os.exit()
end

