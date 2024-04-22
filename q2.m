function lcg_uniformity(a, c, m, seed)
    N = input('how many random numbers do you want to generate? ');

    % generate random numbers using the LCG
    randomNumbers = zeros(1, N);
    randomNumbers(1) = seed;

    % generates N number of random numbers
    for i = 2:N
        randomNumbers(i) = mod(a * randomNumbers(i-1) + c, m);
    end

    % normalize random numbers to be in the interval [0,1)
    normalizedRandNums = randomNumbers / m;
    % divide the random numbers into 10 equally sized intervals
    intervals = linspace(0, 1, 11);

    % count the number of random numbers in each interval
    countRandIntervals = histcounts(normalizedRandNums, intervals);

    % generate a bar graph from the number of random numbers
    bar(intervals(1:end-1), countRandIntervals);
    display(normalizedRandNums)
    % define labels and title
    xlabel('Intervals');
    ylabel('Number of Random Numbers');
    title('Uniformity Test of Random Numbers Generated by LCG');

    % setting x-axis ticks to show the intervals and plot the graph
    xticks(intervals);
    xticklabels(cellstr(num2str(intervals(:), '%0.1f')));
    grid on;
    ylim([0, max(countRandIntervals)]); % Set y-axis limit
    axis tight;
end

a = 384272918;
c = 439058309485;
m = 2^16;
seed = 49372;

lcg_uniformity(a, c, m, seed)