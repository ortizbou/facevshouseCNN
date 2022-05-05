%%% Use your trained network to classify the data in the testing dataset

function accuracy=testing(trainedNetwork_name,test_events_fold)

test_events_fold1=find(test_events_fold{3}(:,2)==1)
for i=[test_events_fold1']
I = imread(['fperp5' num2str(i) '.png']);
I = imresize(I, [227 227]);
[YPred{i},probs] = classify(trainedNetwork_name,I); 
end
test_events_fold2=find(test_events_fold{3}(:,2)==2)
for i=[test_events_fold2']
I = imread(['fperp6' num2str(i) '.png']);
I = imresize(I, [227 227]);
[YPred{i},probs] = classify(trainedNetwork_name,I);
end


for i=1:100
if YPred{i}=='class1'
Ypred1(i)=1;
else
Ypred1(i)=2;
end
end
accuracy = sum(test_events_fold{2}(:,2)== Ypred1','all')/numel(Ypred1)
end
