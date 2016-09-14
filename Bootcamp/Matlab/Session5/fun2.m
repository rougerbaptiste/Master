function [out1,out2,out3] = fun2(a, b)
	try
		out1 = cat(2,a,b);
		out2 = cat(1,a,b);
		out3 = cat(3,a,b);
	catch
		out1 = out2 = out3 = [];
end
