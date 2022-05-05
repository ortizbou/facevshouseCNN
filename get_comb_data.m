function data1 = get_comb_data(data_fold)
    a1 = data_fold{1};
    a2 = data_fold{2};
    a3 = data_fold{3};
    if size(a1, 2)<=3
        a1 = a1(:,2);
        a2 = a2(:,2);
        a3 = a3(:,2);
    end
    data1 = [a1;a2;a3];
end