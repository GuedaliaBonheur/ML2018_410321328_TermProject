% Face Recognition System NDHU Image Processing By Guedalia Youma
w=data_training();

% Randomly pick an index.
ri=round(300*rand(1,1));
r=w(:,ri);
% v contains the rest of the 449 images.           
v=w(:,[1:ri-1 ri+1:end]);           

N=20;                               

O=uint8(ones(1,size(v,2))); 
m=uint8(mean(v,2));                 
vzm=v-uint8(single(m)*single(O));   

%% Calculating eignevectors of the correlation matrix
% We are picking N of the 300 testdata.
L=single(vzm)'*single(vzm);
[V,D]=eig(L);
V=single(vzm)*V;
V=V(:,end:-1:end-(N-1));            


%% Calculating the signature for each image
cv=zeros(size(v,2),N);
for i=1:size(v,2);
    cv(i,:)=single(vzm(:,i))'*V;    
    % Each row in cv is the signature for one image.
end


%% Recognition 
%  Now, we run the algorithm and see if we can correctly recognize the face. 
subplot(121); 
imshow(reshape(r,112,92));title('Searching ...','FontWeight','bold','Fontsize',16,'color','blue');

subplot(122);
p=r-m;                              
% Subtract the mean
s=single(p)'*V;
z=[];
for i=1:size(v,2)
    z=[z,norm(cv(i,:)-s,2)];
    if(rem(i,20)==0),imshow(reshape(v(:,i),112,92)),end;
    drawnow;
end

[a,i]=min(z);
subplot(122);
imshow(reshape(v(:,i),112,92));title('Found!','FontWeight','bold','Fontsize',16,'color','blue');


