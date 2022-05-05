function save_tensor_images(data1, data2, labels, subj)
    dir = ['D:\OneDrive - Michigan State University\ECE Project\ECE 884\fhpred\fhpred\', subj, '_trainingModels'];
    mkdir(dir);
    mkdir([dir, '\0']);
    mkdir([dir, '\1']);
    mkdir([dir, '\2']);
%     n_trodes = size(data1, 2);
    n_ims = size(data1, 1);
    for i = 1:n_ims
        cat = labels(i);
        a = data1(i,:);
        b = data2(i,:);
        a = (a - mean(a))/std(a);
        b = (b - mean(b))/std(b);
        matx = a'*b;
        
        imwrite(matx, [dir, '\', num2str(cat), '\', num2str(i), '.jpg'], 'JPEG');
    end
end