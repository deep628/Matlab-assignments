dim=input('order of your square matrix is =');
mat=zeros(dim,dim);
for i=1:dim
  for j=1:dim
    mat(i,j)=input('val=');
  end
end
disp('The matrix(3X3)entered by you is following:')
disp(mat);
t = mat';
disp('Transpose matrix :')
   disp(t);

fid = fopen('matrixTranspose.txt', 'wt'); % Open for writing
for i=1:3
   fprintf(fid, '%d %d %d\n', t(i,:));
end
fclose(fid);
