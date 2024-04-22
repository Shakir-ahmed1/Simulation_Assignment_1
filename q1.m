% generate random numbers using rand function
numberOfRandomNums = input('how many random numbers do you want to generate? ');
randomNumbers = rand(1, numberOfRandomNums);
display(randomNumbers)

% divide the random numbers into 10 equally sized intervals
intervals = linspace(0, 1, 11);

% count the number of random numbers in each interval
counts = histcounts(randomNumbers, intervals);

% generate a bar graph from the number of random numbers
bar(intervals(1:end-1), counts);

% define labels and title for the plot
xlabel('Intervals');
ylabel('Number of Random Numbers');
title('Distribution of Random Numbers');

% setting x-axis ticks to show the intervals and plot the graph
xticks(intervals);
xticklabels(cellstr(num2str(intervals(:), '%0.1f')));
grid on;
ylim([0, ceil(max(counts)/10)*10]); % Set y-axis limit
axis tight;