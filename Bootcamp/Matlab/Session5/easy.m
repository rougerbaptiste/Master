function out = easy(n)
	out = [];
	for i = 1:n
		a = input("Input the next number of the vector");
		out = cat(2,out,a);
	end
end
