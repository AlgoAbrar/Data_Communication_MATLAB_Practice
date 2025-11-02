%function
function [t,x]= polar(bits,bitrate)

T= length(bits)/bitrate; %t=3 
display(T);

n=1000; %number of sample
N=n*length(bits); %N-> total number of sample

dt= T/N;
t= 0:dt:T;

display(t);
x=[zeros(1, length(t))];
display(x);

%bit check
for i=0: length(bits)-1
    if bits(i+1)==1
        x(i*n+1:(i+1)*n)=-1;
    else
        x(i*n+1:(i+1)*n)=1;
    end
end
end