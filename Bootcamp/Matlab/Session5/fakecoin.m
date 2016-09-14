function out = fakecoin()
	a = rand(1,1)*100;
	if a >= 30
		out = 1;
	else
		out = 0;
	end
end
