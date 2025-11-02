%1 Arithmetic Problem
a=15;
b=10;
sum=a+b;
diff=a-b;
prod=a*b;
div=a/b;

disp(['sum: ', num2str(sum)]); %number to string
disp(['diff: ', num2str(diff)]);
disp(['prod: ', num2str(prod)]);
disp(['div: ', num2str(div)]);
%2 For loop:
for i=5:15
    disp(['Iteration :' num2str(i)]);
    disp('My Name is Abrar');
end

for i=5:2:20
    disp(['Iteration:', num2str(i)]);
end
for i=100:-1:50
    disp(['Iteration:', num2str(i)]);
end

%4 conditional statement/if,else
x=2;
if mod(x,2)==0
    disp('even');
else
    disp('odd');
end

%5 Matrix Application
A=[1 2; 3 4];
B=[5 6; 7 8];
C=A+B;
D=A*B;

disp('Matrix Summation (A+B):');
disp(C);
disp('Matrix Summation (A*B):');
disp(D);

%6 call a function
result =square(4);
disp(['Square: ', num2str(result)]);

% sine wave, binary data sequence
binaryData=[0 1 1 0 1 0 1];

%create time vector that matches the number of binaryData
t=1:length(binaryData);
%use stairs to plot the digital signal
stairs(t,binaryData,'r','LineWidth',6); %digital signal
%t means time vector


%customize the plot
ylim([-0.2 1.2]);
xlabel('Time');
ylabel('Binary Value');
title('Digital Signal Using Stairs');
grid on;


%Plot Log
x=logspace(0,2,100);
y= log10(x);
semilogx(x,y);
title('Logarithmic X Plot');
xlabel('log x');
ylabel('log10(x)');
grid on;

%Area plot of sinx
x= 0:0.1:10;
y=sin(x);
area(x,y);
title('Area Plot of Sin(x)');