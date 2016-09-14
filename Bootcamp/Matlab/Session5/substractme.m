function out = substractme(a)
	for i = 1:size(a)(1)
		out(i,:) = a(i,:)-min(a(i,:));
	end
end
