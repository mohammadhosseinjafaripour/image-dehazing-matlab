% Jiaxi He
% Swinburne University of Technology
% jiaxihe@swin.edu.au

function d = Dy3(u)
[rows,cols,dims] = size(u); 
d = zeros(rows,cols,dims);
d(2:rows,:,:) = u(2:rows,:,:)-u(1:rows-1,:,:);
d(1,:,:) = u(1,:,:)-u(rows,:,:);
return