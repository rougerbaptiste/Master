function out = stackme(a)
	for i= 1:size(diag(a))(1)
		out(:,:,i)= a.* diag(a)(i);
	end
end
