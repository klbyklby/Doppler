function index = argmax(x)
max = x(1);
index = 1;
for i=1:length(x)
    if x(i)> max
        max = x(i);
        index = i;
    end
end