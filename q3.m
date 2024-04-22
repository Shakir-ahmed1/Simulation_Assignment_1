function lcg_period_comaparison(a1, c1, m1, a2, c2, m2)
    % Initial seed
    seed = 1;

    % Initialize arrays to store sequences
    sequence1 = zeros(1, m1);
    sequence2 = zeros(1, m2);

    % Generate sequence for LCG1
    current_value = seed;
    for i = 1:m1
        sequence1(i) = current_value;
        current_value = mod(a1 * current_value + c1, m1);
    end

    % Generate sequence for LCG2
    current_value = seed;
    for i = 1:m2
        sequence2(i) = current_value;
        current_value = mod(a2 * current_value + c2, m2);
    end

    % Print sequences
    disp('LCG1 sequence:');
    disp(sequence1);
    disp('LCG2 sequence:');
    disp(sequence2);

    % period for LCG1
    prd1 = find(sequence1 == sequence1(1), 2);
    if numel(prd1) == 1
        disp(['Period for LCG1: ', num2str(prd1)]);
    else
        disp(['Period for LCG1: ', num2str(prd1(2) - 1)]);
    end

    % period for LCG2
    prd2 = find(sequence2 == sequence2(1), 2);
    if numel(prd2) == 1
        disp(['Period for LCG2: ', num2str(prd2)]);
    else
        disp(['Period for LCG2: ', num2str(prd2(2) - 1)]);
    end
end
a1 = 3;
c1 = 0;
m1 = 5;
a2 = 5;
c2 = 0;
m2 = 7;
lcg_period_comaparison(a1, c1, m1, a2, c2, m2);
