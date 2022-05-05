%%%% training data
test_events_fold1=find(test_events_fold{1}(:,2)==1)
for i=[test_events_fold1']
    a=f_template_test_fold{1}((test_events_fold{1}(i,1)):(test_events_fold{1}(i,1)+400),:);
    imagesc(a)
    saveas(gcf,['fperp1' num2str(i) '.png'])
end
test_events_fold2=find(test_events_fold{1}(:,2)==2)
for i=[test_events_fold2']
    a=h_template_test_fold{1}((test_events_fold{1}(i,1)):(test_events_fold{1}(i,1)+400),:);
    imagesc(a)
    saveas(gcf,['fperp2' num2str(i) '.png'])
end
%fold3
test_events_fold1=find(test_events_fold{2}(:,2)==1)
for i=[test_events_fold1']
    a=f_template_test_fold{3}((test_events_fold{3}(i,1)):(test_events_fold{1}(i,1)+400),:);
    imagesc(a)
    saveas(gcf,['fperp3' num2str(i) '.png'])
end
test_events_fold2=find(test_events_fold{2}(:,2)==2)
for i=[test_events_fold2']
    a=h_template_test_fold{3}((test_events_fold{3}(i,1)):(test_events_fold{1}(i,1)+400),:);
    imagesc(a)
    saveas(gcf,['fperp4' num2str(i) '.png'])
end

%%%% testing data
test_events_fold1=find(test_events_fold{3}(:,2)==1)
for i=[test_events_fold1']
    a=f_template_test_fold{2}((test_events_fold{2}(i,1)):(test_events_fold{2}(i,1)+400),:);
    imagesc(a)
    saveas(gcf,['fperp5' num2str(i) '.png'])
end
test_events_fold2=find(test_events_fold{3}(:,2)==2)
for i=[test_events_fold2']
    a=h_template_test_fold{2}((test_events_fold{2}(i,1)):(test_events_fold{2}(i,1)+400),:);
    imagesc(a)
    saveas(gcf,['fperp6' num2str(i) '.png'])
end



