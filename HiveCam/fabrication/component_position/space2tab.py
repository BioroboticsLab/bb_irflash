import sys

f=open(sys.argv[1], "r")
initial_content = f.readlines()
new_file = list()

for line in initial_content:
	new_line = ""
	in_space = False
	for char in line:
		if not char == " ":
			in_space = False
			new_line = new_line + char
		elif not in_space:
			in_space = True
			new_line = new_line + "\t"
		else :
			pass
	new_file.append(new_line)


nf = open(sys.argv[1]+"new", "w")
nf.writelines(new_file)
f.close()
nf.close()
