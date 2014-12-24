load arrow 

for ver = 1:1

    mat = zeros(400,500);

    for i = 1:3000;

        x = round(randn*85);
        while x+250>500 | x+250<0 
            x = round(randn*85);
        end

        y = round(randn*50);
        while abs(y+200)>400 | y+200<0
            y = round(randn*50);
        end

        mat(200+y,250+x) = 1;
        save('matrix.mat','mat');
    end

    
    name_scat = strcat('scatter_',num2str(ver));
    imwrite(mat,strcat(name_scat,'.png'),'PNG');
    
    arr_r = arrow;
    arr_l = fliplr(arrow);
    
    arrow_r = mat .* arr_r;
    arrow_l = mat .* arr_l;
    
    name_arr_l = strcat('arrow_l_',num2str(ver));
    name_arr_r = strcat('arrow_r_',num2str(ver));

    
    imwrite(arrow_l,strcat(name_arr_l,'.png'),'PNG','Alpha',arrow_l);
    imwrite(arrow_r,strcat(name_arr_r,'.png'),'PNG','Alpha',arrow_r);
    
end

    
    
    
    


