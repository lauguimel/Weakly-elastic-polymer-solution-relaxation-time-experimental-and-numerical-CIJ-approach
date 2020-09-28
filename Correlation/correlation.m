clear
close all

pkg load image

num = imread('num_05.png');
name = [33,35,40,41,43,46,49,52,54,57,59,62];

best = [0,1];
for i=1:length(name)
    exp_n = ['exp_',num2str(name(i)),'.png'];
    exp = imread(exp_n);
    cor = corr2(num, exp);
        disp([num2str(name(i)),'V ---> ',num2str(cor)])

    if cor>best(1)
      best(1) = cor;
      best(2) = name(i);
    endif
end

    disp(['BEST:::: ',num2str(best(2)),'V --- ',num2str(best(1))])


clear
close all
num = imread('num_05_2.png');
name = [33,35,40,41,43,46,49,52,54,57,59,62];

best = [0,1];
for i=1:length(name)
    exp_n = ['exp_',num2str(name(i)),'_2.png'];
    exp = imread(exp_n);
    cor = corr2(num, exp);
    disp([num2str(name(i)),'V ---> ',num2str(cor)])
    if cor>best(1)
      best(1) = cor;
      best(2) = name(i);
    endif
end
    disp(['BEST:::: ',num2str(best(2)),'V --- ',num2str(best(1))])
