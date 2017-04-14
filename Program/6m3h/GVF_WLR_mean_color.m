tic;

clear;
clc;
file = dir('./Data/');
figure(1);
hold on;
title('WLR v.s. GVF with 6m^3/h');
xlabel('GVF');
ylabel('WLR');
figure(2);
hold on;
title('WLR v.s. GVF with 6m^3/h');
xlabel('GVF');
ylabel('WLR');
c = jet(51);

for i = 3: length(file)
    fileName = file(i).name;
    dataMat = load(['./Data/', fileName]);
    oilMat = dataMat(:, 2:4);
    oilMat(oilMat<0) = 0;
    oil = sum(oilMat, 2);
   
    waterMat = dataMat(:, 5:7);
    waterMat(waterMat<0) = 0;
    water = sum(waterMat, 2);
   
    gasMat = dataMat(:, 9:11);
    gasMat(gasMat<0) = 0;
    gas = sum(gasMat, 2);
    
    GVF = gas ./ (oil + water + gas);
    WLR = water ./ (oil + water);
    
    switch fileName
        case {'WQLData_2017-03-21_10-22-47.txt', ...
                'WQLData_2017-03-21_10-34-05.txt', ...
                'WQLData_2017-03-21_10-40-08.txt', ...
                'WQLData_2017-03-21_10-46-35.txt', ...
                'WQLData_2017-03-21_10-52-27.txt', ...
                'WQLData_2017-03-21_10-58-02.txt', ...
                'WQLData_2017-03-21_11-02-38.txt', ...
                'WQLData_2017-03-21_11-08-16.txt', ...
                'WQLData_2017-03-21_11-13-32.txt', ...
                'WQLData_2017-03-21_11-22-18.txt', ...
                'WQLData_2017-03-21_11-27-32.txt'}
             figure(1); % GVF-0%
             G1 = scatter(mean(GVF), mean(WLR), [], 'y', 'fill');
             
        case {'WQLData_2017-03-21_13-47-43.txt', ...
                'WQLData_2017-03-21_14-01-51.txt', ...
                'WQLData_2017-03-21_14-13-24.txt', ...
                'WQLData_2017-03-21_14-21-31.txt', ...
                'WQLData_2017-03-21_14-28-55.txt', ...
                'WQLData_2017-03-21_14-36-43.txt', ...
                'WQLData_2017-03-21_14-45-12.txt', ...
                'WQLData_2017-03-21_14-55-03.txt', ...
                'WQLData_2017-03-21_15-04-43.txt', ...
                'WQLData_2017-03-21_15-16-24.txt', ...
                'WQLData_2017-03-21_15-26-20.txt'}
             figure(1); % GVF-10%
             G2 = scatter(mean(GVF), mean(WLR), [], 'm', 'fill');
             
        case {'WQLData_2017-03-21_15-53-24.txt', ...
                'WQLData_2017-03-21_16-01-30.txt', ...
                'WQLData_2017-03-21_16-13-11.txt', ...
                'WQLData_2017-03-21_16-21-37.txt', ...
                'WQLData_2017-03-21_16-30-31.txt', ...
                'WQLData_2017-03-21_16-39-10.txt', ...
                'WQLData_2017-03-21_16-47-13.txt', ...
                'WQLData_2017-03-21_16-56-24.txt', ...
                'WQLData_2017-03-21_17-04-19.txt', ...
                'WQLData_2017-03-21_17-14-25.txt', ...
                'WQLData_2017-03-21_17-26-32.txt'}
             figure(1); % GVF-30%
             G3 = scatter(mean(GVF), mean(WLR), [], 'k', 'fill');
             
        case {'WQLData_2017-03-22_10-02-25.txt', ...
                'WQLData_2017-03-22_10-15-06.txt', ...
                'WQLData_2017-03-22_10-27-43.txt', ...
                'WQLData_2017-03-22_10-37-29.txt', ...
                'WQLData_2017-03-22_10-49-13.txt', ...
                'WQLData_2017-03-22_10-56-21.txt', ...
                'WQLData_2017-03-22_11-02-55.txt', ...
                'WQLData_2017-03-22_11-10-23.txt', ...
                'WQLData_2017-03-22_11-17-38.txt', ...
                'WQLData_2017-03-22_11-27-02.txt', ...
                'WQLData_2017-03-22_11-33-06.txt'}
             figure(1); % GVF-50%
             G4 = scatter(mean(GVF), mean(WLR), [], 'r', 'fill');
             
        case {'WQLData_2017-03-22_13-32-22.txt', ...
                'WQLData_2017-03-22_13-42-09.txt', ...
                'WQLData_2017-03-22_13-50-04.txt', ...
                'WQLData_2017-03-22_13-59-06.txt', ...
                'WQLData_2017-03-22_14-05-40.txt', ...
                'WQLData_2017-03-22_14-12-31.txt', ...
                'WQLData_2017-03-22_14-19-21.txt', ...
                'WQLData_2017-03-22_14-28-16.txt', ...
                'WQLData_2017-03-22_14-38-38.txt', ...
                'WQLData_2017-03-22_14-46-45.txt', ...
                'WQLData_2017-03-22_14-52-33.txt'}
             figure(1); % GVF-70%
             G5 = scatter(mean(GVF), mean(WLR), [], 'g', 'fill');
             
        case {'WQLData_2017-03-22_15-29-33.txt', ...
                'WQLData_2017-03-22_15-43-44.txt', ...
                'WQLData_2017-03-22_15-59-26.txt', ...
                'WQLData_2017-03-22_17-18-01.txt', ...
                'WQLData_2017-03-22_17-27-48.txt', ...
                'WQLData_2017-03-22_17-33-56.txt', ...
                'WQLData_2017-03-22_17-40-59.txt', ...
                'WQLData_2017-03-22_17-48-26.txt', ...
                'WQLData_2017-03-22_17-54-59.txt', ...
                'WQLData_2017-03-22_18-03-37.txt', ...
                'WQLData_2017-03-22_18-10-38.txt'}
             figure(1); % GVF-90%
             G6 = scatter(mean(GVF), mean(WLR), [], 'b', 'fill');   
        
        otherwise
            disp('GVF-Error!');
             
    end
    


    
    switch fileName
        case {'WQLData_2017-03-21_10-22-47.txt', ...
                'WQLData_2017-03-21_15-26-20.txt', ...
                'WQLData_2017-03-21_15-53-24.txt', ...
                'WQLData_2017-03-22_10-02-25.txt', ...
                'WQLData_2017-03-22_14-52-33.txt', ...
                'WQLData_2017-03-22_15-29-33.txt'}
             figure(2); % WLR-0%
             W1 = scatter(mean(GVF), mean(WLR), [], c(1, :), 'fill');
             
        case {'WQLData_2017-03-21_10-34-05.txt', ...
                'WQLData_2017-03-21_15-16-24.txt', ...
                'WQLData_2017-03-21_16-01-30.txt', ...
                'WQLData_2017-03-22_10-15-06.txt', ...
                'WQLData_2017-03-22_14-46-45.txt', ...
                'WQLData_2017-03-22_15-43-44.txt'}
             figure(2); % WLR-10%
             W2 = scatter(mean(GVF), mean(WLR), [], c(6, :), 'fill');
             
        case {'WQLData_2017-03-21_10-40-08.txt', ...
                'WQLData_2017-03-21_15-04-43.txt', ...
                'WQLData_2017-03-21_16-13-11.txt', ...
                'WQLData_2017-03-22_10-27-43.txt', ...
                'WQLData_2017-03-22_14-38-38.txt', ...
                'WQLData_2017-03-22_15-59-26.txt'}
             figure(2); % WLR-20%
             W3 = scatter(mean(GVF), mean(WLR), [], c(11, :), 'fill');
             
        case {'WQLData_2017-03-21_10-46-35.txt', ...
                'WQLData_2017-03-21_14-55-03.txt', ...
                'WQLData_2017-03-21_16-21-37.txt', ...
                'WQLData_2017-03-22_10-37-29.txt', ...
                'WQLData_2017-03-22_14-28-16.txt', ...
                'WQLData_2017-03-22_17-18-01.txt'}
             figure(2); % WLR-30%
             W4 = scatter(mean(GVF), mean(WLR), [], c(16, :), 'fill');
             
        case {'WQLData_2017-03-21_10-52-27.txt', ...
                'WQLData_2017-03-21_14-45-12.txt', ...
                'WQLData_2017-03-21_16-30-31.txt', ...
                'WQLData_2017-03-22_10-49-13.txt', ...
                'WQLData_2017-03-22_14-19-21.txt', ...
                'WQLData_2017-03-22_17-27-48.txt'}
             figure(2); % WLR-40%
             W5 = scatter(mean(GVF), mean(WLR), [], c(21, :), 'fill');
             
        case {'WQLData_2017-03-21_10-58-02.txt', ...
                'WQLData_2017-03-21_14-36-43.txt', ...
                'WQLData_2017-03-21_16-39-10.txt', ...
                'WQLData_2017-03-22_10-56-21.txt', ...
                'WQLData_2017-03-22_14-12-31.txt', ...
                'WQLData_2017-03-22_17-33-56.txt'}
             figure(2); % WLR-50%
             W6 = scatter(mean(GVF), mean(WLR), [], c(26, :), 'fill');
        
        case {'WQLData_2017-03-21_11-02-38.txt', ...
                'WQLData_2017-03-21_14-28-55.txt', ...
                'WQLData_2017-03-21_16-47-13.txt', ...
                'WQLData_2017-03-22_11-02-55.txt', ...
                'WQLData_2017-03-22_14-05-40.txt', ...
                'WQLData_2017-03-22_17-40-59.txt'}
             figure(2); % WLR-60%
             W7 = scatter(mean(GVF), mean(WLR), [], c(31, :), 'fill');
        
        case {'WQLData_2017-03-21_11-08-16.txt', ...
                'WQLData_2017-03-21_14-21-31.txt', ...
                'WQLData_2017-03-21_16-56-24.txt', ...
                'WQLData_2017-03-22_11-10-23.txt', ...
                'WQLData_2017-03-22_13-59-06.txt', ...
                'WQLData_2017-03-22_17-48-26.txt'}
             figure(2); % WLR-70%
             W8 = scatter(mean(GVF), mean(WLR), [], c(36, :), 'fill');
        
        case {'WQLData_2017-03-21_11-13-32.txt', ...
                'WQLData_2017-03-21_14-13-24.txt', ...
                'WQLData_2017-03-21_17-04-19.txt', ...
                'WQLData_2017-03-22_11-17-38.txt', ...
                'WQLData_2017-03-22_13-50-04.txt', ...
                'WQLData_2017-03-22_17-54-59.txt'}
             figure(2); % WLR-80%
             W9 = scatter(mean(GVF), mean(WLR), [], c(41, :), 'fill');
             
        case {'WQLData_2017-03-21_11-22-18.txt', ...
                'WQLData_2017-03-21_14-01-51.txt', ...
                'WQLData_2017-03-21_17-14-25.txt', ...
                'WQLData_2017-03-22_11-27-02.txt', ...
                'WQLData_2017-03-22_13-42-09.txt', ...
                'WQLData_2017-03-22_18-03-37.txt'}
             figure(2); % WLR-90%
             W10 = scatter(mean(GVF), mean(WLR), [], c(46, :), 'fill');
             
        case {'WQLData_2017-03-21_11-27-32.txt', ...
                'WQLData_2017-03-21_13-47-43.txt', ...
                'WQLData_2017-03-21_17-26-32.txt', ...
                'WQLData_2017-03-22_11-33-06.txt', ...
                'WQLData_2017-03-22_13-32-22.txt', ...
                'WQLData_2017-03-22_18-10-38.txt'}
             figure(2); % WLR-100%
             W11 = scatter(mean(GVF), mean(WLR), [], c(51, :), 'fill');
        
        otherwise
            disp('WLR-Error!');
    
    end
 
%     forwardDpVertical = dataMat(:, 13);
%     GVF = gas ./ (oil + water + gas);
%     WLR = water ./ (oil + water);
%     equivalentRho = GVF * rhoGas + (1 - GVF) .* WLR * rhoWater + (1 - GVF) .* (1 - WLR) * rhoOil; %kg/m3
%     sqrtOfDp1Rho_forwardDpVertical = sqrt(forwardDpVertical .* equivalentRho);
   
%     tempMat = [GVF, WLR, sqrtOfDp1Rho_forwardDpVertical]; %GVF, WLR, square_root_of_dp1*rho_vertical
%     plotMat = [plotMat; tempMat];

end

figure(1);
legend([G1, G2, G3, G4, G5, G6], 'GVF-0%', 'GVF-10%', 'GVF-30%', 'GVF-50%', 'GVF-70%', 'GVF-90%');
figure(2);
legend([W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11], 'WLR-0%', 'WLR-10%', 'WLR-20%', 'WLR-30%', 'WLR-40%', 'WLR-50%', ...
           'WLR-60%', 'WLR-70%', 'WLR-80%', 'WLR-90%', 'WLR-100%');

toc;






