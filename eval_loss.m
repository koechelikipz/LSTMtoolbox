function outputlayer=eval_loss(outputlayer,y_true)
num=numel(y_true);
loss=feval(@(x)mean(x(:)),outputlayer.loss_f(y_true,outputlayer.output,num));
outputlayer.loss=[outputlayer.loss,loss];
outputlayer.e=-loss.*outputlayer.loss_df(y_true,outputlayer.output,num);
end

