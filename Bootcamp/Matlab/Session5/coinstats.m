function [out1, out2] = coinstats(n)
	asum = 0;
	bsum = 0;
	for i = 1:n
		a = coin();
		b = fakecoin();
		if(a == 1)
			asum = asum+1;
		end
		if(b == 1)
			bsum = bsum+1;
		end
	end
	out1 = (asum/n)*100;
	out2 = (bsum/n)*100;
end
