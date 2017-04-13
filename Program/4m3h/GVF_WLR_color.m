tic;

clear;
clc;
file = dir('./Data/');
figure(1);
hold on;
title('WLR v.s. GVF with 4m^3/h');
xlabel('GVF');
ylabel('WLR');
figure(2);
hold on;
title('WLR v.s. GVF with 4m^3/h');
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
        case {'WQLData_2017-03-18_10-54-40.txt', ...
                'WQLData_2017-03-18_12-18-00.txt', ...
                'WQLData_2017-03-18_12-26-54.txt', ...
                'WQLData_2017-03-18_14-15-01.txt', ...
                'WQLData_2017-03-18_14-22-57.txt', ...
                'WQLData_2017-03-18_14-31-41.txt', ...
                'WQLData_2017-03-18_14-43-02.txt', ...
                'WQLData_2017-03-18_14-55-19.txt', ...
                'WQLData_2017-03-18_15-07-25.txt', ...
                'WQLData_2017-03-18_15-18-14.txt', ...
                'WQLData_2017-03-18_10-34-16.txt'}
             figure(1); % GVF-0%
             G1 = scatter(GVF, WLR, 7, 'y', 'fill');
             
        case {'WQLData_2017-03-18_16-26-40.txt', ...
                'WQLData_2017-03-18_16-52-07.txt', ...
                'WQLData_2017-03-18_17-14-38.txt', ...
                'WQLData_2017-03-18_17-37-15.txt', ...
                'WQLData_2017-03-18_17-47-44.txt', ...
                'WQLData_2017-03-18_18-03-25.txt', ...
                'WQLData_2017-03-18_18-20-10.txt', ...
                'WQLData_2017-03-18_18-40-35.txt', ...
                'WQLData_2017-03-18_18-56-30.txt', ...
                'WQLData_2017-03-18_19-19-36.txt', ...
                'WQLData_2017-03-18_19-36-25.txt'}
             figure(1); % GVF-10%
             G2 = scatter(GVF, WLR, 7, 'm', 'fill');
             
        case {'WQLData_2017-03-19_11-05-41.txt', ...
                'WQLData_2017-03-19_11-23-26.txt', ...
                'WQLData_2017-03-19_11-38-33.txt', ...
                'WQLData_2017-03-19_12-05-34.txt', ...
                'WQLData_2017-03-19_12-19-27.txt', ...
                'WQLData_2017-03-19_12-36-58.txt', ...
                'WQLData_2017-03-19_14-35-32.txt', ...
                'WQLData_2017-03-19_14-50-59.txt', ...
                'WQLData_2017-03-19_15-08-37.txt', ...
                'WQLData_2017-03-19_15-36-04.txt', ...
                'WQLData_2017-03-19_15-52-10.txt'}
             figure(1); % GVF-30%
             G3 = scatter(GVF, WLR, 7, 'k', 'fill');
             
        case {'WQLData_2017-03-19_16-43-07.txt', ...
                'WQLData_2017-03-19_17-00-59.txt', ...
                'WQLData_2017-03-19_17-14-23.txt', ...
                'WQLData_2017-03-19_17-25-35.txt', ...
                'WQLData_2017-03-19_17-36-55.txt', ...
                'WQLData_2017-03-19_17-52-27.txt', ...
                'WQLData_2017-03-19_18-13-21.txt', ...
                'WQLData_2017-03-19_18-25-40.txt', ...
                'WQLData_2017-03-19_18-39-55.txt', ...
                'WQLData_2017-03-19_18-52-50.txt', ...
                'WQLData_2017-03-19_19-34-49.txt'}
             figure(1); % GVF-50%
             G4 = scatter(GVF, WLR, 7, 'r', 'fill');
             
        case {'WQLData_2017-03-20_10-39-21.txt', ...
                'WQLData_2017-03-20_10-55-25.txt', ...
                'WQLData_2017-03-20_11-08-41.txt', ...
                'WQLData_2017-03-20_11-21-11.txt', ...
                'WQLData_2017-03-20_11-33-40.txt', ...
                'WQLData_2017-03-20_11-47-25.txt', ...
                'WQLData_2017-03-20_12-00-22.txt', ...
                'WQLData_2017-03-20_12-13-12.txt', ...
                'WQLData_2017-03-20_12-27-32.txt', ...
                'WQLData_2017-03-20_12-43-39.txt', ...
                'WQLData_2017-03-20_12-54-07.txt'}
             figure(1); % GVF-70%
             G5 = scatter(GVF, WLR, 7, 'g', 'fill');
             
        case {'WQLData_2017-03-20_14-26-48.txt', ...
                'WQLData_2017-03-20_14-41-34.txt', ...
                'WQLData_2017-03-20_15-17-39.txt', ...
                'WQLData_2017-03-20_15-33-14.txt', ...
                'WQLData_2017-03-20_15-46-44.txt', ...
                'WQLData_2017-03-20_16-01-12.txt', ...
                'WQLData_2017-03-20_16-17-00.txt', ...
                'WQLData_2017-03-20_16-34-38.txt', ...
                'WQLData_2017-03-20_16-58-01.txt', ...
                'WQLData_2017-03-20_17-12-01.txt', ...
                'WQLData_2017-03-20_17-25-39.txt'}
             figure(1); % GVF-90%
             G6 = scatter(GVF, WLR, 7, 'b', 'fill');   
        
        otherwise
            disp('GVF-Error!');
             
    end
    


    
    switch fileName
        case {'WQLData_2017-03-18_10-54-40.txt', ...
                'WQLData_2017-03-18_16-26-40.txt', ...
                'WQLData_2017-03-19_11-05-41.txt', ...
                'WQLData_2017-03-19_16-43-07.txt', ...
                'WQLData_2017-03-20_10-39-21.txt', ...
                'WQLData_2017-03-20_14-26-48.txt'}
             figure(2); % WLR-0%
             W1 = scatter(GVF, WLR, 7, c(1, :), 'fill');
             
        case {'WQLData_2017-03-18_12-18-00.txt', ...
                'WQLData_2017-03-18_16-52-07.txt', ...
                'WQLData_2017-03-19_11-23-26.txt', ...
                'WQLData_2017-03-19_17-00-59.txt', ...
                'WQLData_2017-03-20_10-55-25.txt', ...
                'WQLData_2017-03-20_14-41-34.txt'}
             figure(2); % WLR-10%
             W2 = scatter(GVF, WLR, 7, c(6, :), 'fill');
             
        case {'WQLData_2017-03-18_12-26-54.txt', ...
                'WQLData_2017-03-18_17-14-38.txt', ...
                'WQLData_2017-03-19_11-38-33.txt', ...
                'WQLData_2017-03-19_17-14-23.txt', ...
                'WQLData_2017-03-20_11-08-41.txt', ...
                'WQLData_2017-03-20_15-17-39.txt'}
             figure(2); % WLR-20%
             W3 = scatter(GVF, WLR, 7, c(11, :), 'fill');
             
        case {'WQLData_2017-03-18_14-15-01.txt', ...
                'WQLData_2017-03-18_17-37-15.txt', ...
                'WQLData_2017-03-19_12-05-34.txt', ...
                'WQLData_2017-03-19_17-25-35.txt', ...
                'WQLData_2017-03-20_11-21-11.txt', ...
                'WQLData_2017-03-20_15-33-14.txt'}
             figure(2); % WLR-30%
             W4 = scatter(GVF, WLR, 7, c(16, :), 'fill');
             
        case {'WQLData_2017-03-18_14-22-57.txt', ...
                'WQLData_2017-03-18_17-47-44.txt', ...
                'WQLData_2017-03-19_12-19-27.txt', ...
                'WQLData_2017-03-19_17-36-55.txt', ...
                'WQLData_2017-03-20_11-33-40.txt', ...
                'WQLData_2017-03-20_15-46-44.txt'}
             figure(2); % WLR-40%
             W5 = scatter(GVF, WLR, 7, c(21, :), 'fill');
             
        case {'WQLData_2017-03-18_14-31-41.txt', ...
                'WQLData_2017-03-18_18-03-25.txt', ...
                'WQLData_2017-03-19_12-36-58.txt', ...
                'WQLData_2017-03-19_17-52-27.txt', ...
                'WQLData_2017-03-20_11-47-25.txt', ...
                'WQLData_2017-03-20_16-01-12.txt'}
             figure(2); % WLR-50%
             W6 = scatter(GVF, WLR, 7, c(26, :), 'fill');
        
        case {'WQLData_2017-03-18_14-43-02.txt', ...
                'WQLData_2017-03-18_18-20-10.txt', ...
                'WQLData_2017-03-19_14-35-32.txt', ...
                'WQLData_2017-03-19_18-13-21.txt', ...
                'WQLData_2017-03-20_12-00-22.txt', ...
                'WQLData_2017-03-20_16-17-00.txt'}
             figure(2); % WLR-60%
             W7 = scatter(GVF, WLR, 7, c(31, :), 'fill');
        
        case {'WQLData_2017-03-18_14-55-19.txt', ...
                'WQLData_2017-03-18_18-40-35.txt', ...
                'WQLData_2017-03-19_14-50-59.txt', ...
                'WQLData_2017-03-19_18-25-40.txt', ...
                'WQLData_2017-03-20_12-13-12.txt', ...
                'WQLData_2017-03-20_16-34-38.txt'}
             figure(2); % WLR-70%
             W8 = scatter(GVF, WLR, 7, c(36, :), 'fill');
        
        case {'WQLData_2017-03-18_15-07-25.txt', ...
                'WQLData_2017-03-18_18-56-30.txt', ...
                'WQLData_2017-03-19_15-08-37.txt', ...
                'WQLData_2017-03-19_18-39-55.txt', ...
                'WQLData_2017-03-20_12-27-32.txt', ...
                'WQLData_2017-03-20_16-58-01.txt'}
             figure(2); % WLR-80%
             W9 = scatter(GVF, WLR, 7, c(41, :), 'fill');
             
        case {'WQLData_2017-03-18_15-18-14.txt', ...
                'WQLData_2017-03-18_19-19-36.txt', ...
                'WQLData_2017-03-19_15-36-04.txt', ...
                'WQLData_2017-03-19_18-52-50.txt', ...
                'WQLData_2017-03-20_12-43-39.txt', ...
                'WQLData_2017-03-20_17-12-01.txt'}
             figure(2); % WLR-90%
             W10 = scatter(GVF, WLR, 7, c(46, :), 'fill');
             
        case {'WQLData_2017-03-18_10-34-16.txt', ...
                'WQLData_2017-03-18_19-36-25.txt', ...
                'WQLData_2017-03-19_15-52-10.txt', ...
                'WQLData_2017-03-19_19-34-49.txt', ...
                'WQLData_2017-03-20_12-54-07.txt', ...
                'WQLData_2017-03-20_17-25-39.txt'}
             figure(2); % WLR-100%
             W11 = scatter(GVF, WLR, 7, c(51, :), 'fill');
        
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





