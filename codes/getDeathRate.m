function [fitresult, gof] = getDeathRate(patients, patients_death)
%CREATEFIT(PATIENTS,PATIENTS_DEATH)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : patients
%      Y Output: patients_death
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 26-May-2020 14:23:37 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( patients, patients_death );

% Set up fittype and options.
ft = fittype( 'poly1' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
%figure( 'Name', 'untitled fit 1' );
%h = plot( fitresult, xData, yData );
%legend( h, 'patients_death vs. patients', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
%xlabel patients
%ylabel patients_death
%grid on


