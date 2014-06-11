function a = fouriergui()
% This is the machine-generated representation of a Handle Graphics object
% and its children.  Note that handle values may change when these objects
% are re-created. This may cause problems with any callbacks written to
% depend on the value of the handle at the time the object was saved.
%
% To reopen this object, just type the name of the M-file at the MATLAB
% prompt. The M-file and its associated MAT-file must be on your path.
%
% JMc, 25-Nov-2011 - Made T=10s the default period; 0.1 fundamental freq

% to create the figure
figcolor = [0.8 0.8 0.8];
a = figure('Color',figcolor, ...
    'MenuBar','none', ...
    'CreateFcn','fouriergui_callbacks SetFigureSize', ...
    'Name','Fourier Series Demo', ...
    'NumberTitle','off', ...
    'DoubleBuffer','on', ...
    'WindowButtonMotionFcn','', ...
    'Tag','FOURDEMO');

% this creates the menu bar
b = uimenu('Parent',a, ...
    'Label','&File', ...
    'Tag','File');    
b1 = uimenu('Parent',b, ...
    'Callback','fouriergui_callbacks Close', ...
    'Label','&Exit','Tag','Exit');
c = uimenu('Parent',a, ...
    'Label','&Plot Options', ...
    'Tag','Plot Options');
d = uimenu('Parent',c, ...
    'Callback','fouriergui_callbacks LineWidth', ...
    'Enable','on', ...
    'Label','&Set Line Width ...', ...
    'Tag','LineWidth');

h1 = uimenu('Parent',a, ...
    'Label','&Help', ...
    'Tag','Help');
h2 = uimenu('Parent',h1, ...
    'Callback','fouriergui_callbacks Help', ...
    'Label','&Contents', ...
    'Tag','Contents');

% creating the axes
%-----------------------------------------------

% the waveform axes
b = uicontrol('Parent',a, ...
    'Units','normalized', ...
    'BackgroundColor',[0.5 0.6 0.5], ...
    'FontSize',5.764705882352942, ...
    'FontWeight','bold', ...
    'ForegroundColor',[1 1 1], ...
    'ListboxTop',0, ...
    'Position',[0.07 0.913 0.165 0.033], ...
    'String','Waveform of the signal', ...
    'Style','text', ...
    'Tag','TextforWaveform');

b = axes('Parent',a, ...
    'Units','normalized', ...
    'Box','on', ...
    'CameraUpVector',[0 1 0], ...
    'CameraUpVectorMode','manual', ...
    'Color',[1 1 1], ...
    'FontSize',14, ...
    'FontName','Symbol', ...
    'FontWeight','bold', ...
    'XLim',[-30 30], ...
    'YLim',[-1.5 1.5], ...
    'NextPlot','replacechildren', ...
    'Position',[0.07 0.713333 0.51 0.20], ...
    'Tag','WaveformAxis', ...
    'XColor',[0 0 0], ...
    'YColor',[0 0 0], ...
    'ZColor',[0 0 0]);

c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','center', ...
    'String','Time (seconds)', ...
    'Position',[-0.152439 -0.20339 0], ...
    'Tag','WaveformAxisXLabel', ...
    'VerticalAlignment','cap');
set(get(c,'Parent'),'XLabel',c);
c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'FontWeight','bold', ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','center', ...
    'Position',[-29.4207 0.491525 0], ...
    'Rotation',90, ...
    'String','Amplitude', ...
    'Tag','WaveformAxisYLabel', ...
    'VerticalAlignment','baseline');
set(get(c,'Parent'),'YLabel',c);
c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','right', ...
    'Position',[-26.8293 1.08475 0], ...
    'Tag','WaveformAxisZLabel', ...
    'Visible','off');
set(get(c,'Parent'),'ZLabel',c);
c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','center', ...
    'Position',[-0.152439 1.05932 0], ...
    'Tag','WaveformAxisTitle', ...
    'VerticalAlignment','bottom');
set(get(c,'Parent'),'Title',c);

%-----------------------------------------------
% the magnitude axis

b = uicontrol('Parent',a, ...
    'Units','normalized', ...
    'BackgroundColor',[0.5 0.60 0.5], ...
    'FontSize',5.764705882352942, ...
    'FontWeight','bold', ...
    'ForegroundColor',[1 1 1], ...
    'ListboxTop',0, ...
    'Position',[0.07 0.596 0.165 0.033], ...
    'String','Magnitude spectrum', ...
    'Style','text', ...
    'Tag','TextforMagnitude');

b = axes('Parent',a, ...
    'Units','normalized', ...
    'Box','on', ...
    'CameraUpVector',[0 1 0], ...
    'CameraUpVectorMode','manual', ...
    'Color',[1 1 1], ...
    'FontSize',14, ...
    'FontName','Symbol', ...
    'FontWeight','bold', ...
    'XLim',[-15 15], ...
    'YLim',[0 0.78], ...
    'NextPlot','replacechildren', ...
    'Position',[0.07 0.39667 0.51 0.20], ...
    'Tag','MagnitudeAxis', ...
    'XColor',[0 0 0], ...
    'YColor',[0 0 0], ...
    'ZColor',[0 0 0]);

c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','center', ...
    'Interruptible','off', ...
    'Position',[-0.0764526 -0.205128 0], ...
    'String','Number of Fourier Coefficients', ...
    'Tag','MagnitudeAxisXLabel', ...
    'VerticalAlignment','cap');
set(get(c,'Parent'),'XLabel',c);
c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'FontWeight','bold', ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','center', ...
    'Interruptible','off', ...
    'Position',[-29.4343 0.487179 0], ...
    'Rotation',90, ...
    'String','Amplitude', ...
    'Tag','MagnitudeAxisYLabel', ...
    'VerticalAlignment','baseline');
set(get(c,'Parent'),'YLabel',c);
c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','right', ...
    'Interruptible','off', ...
    'Position',[-26.8349 2.33333 0], ...
    'Tag','MagnitudeAxisZLabel', ...
    'Visible','off');
set(get(c,'Parent'),'ZLabel',c);
c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','center', ...
    'Interruptible','off', ...
    'Position',[-0.0764526 1.05983 0], ...
    'Tag','MagnitudeAxisTitle', ...
    'VerticalAlignment','bottom');
set(get(c,'Parent'),'Title',c);

%------------------------------------------------
% the phase axis

b = uicontrol('Parent',a, ...
    'Units','normalized', ...
    'BackgroundColor',[0.5 0.6 0.5], ...
    'FontSize',5.764705882352942, ...
    'FontWeight','bold', ...
    'ForegroundColor',[1 1 1], ...
    'ListboxTop',0, ...
    'Position',[0.07 0.285 0.165 0.033], ...
    'String','Phase spectrum', ...
    'Style','text', ...
    'Tag','TextforPhase');

b = axes('Parent',a, ...
    'Units','normalized', ...
    'Box','on', ...
    'CameraUpVector',[0 1 0], ...
    'CameraUpVectorMode','manual', ...
    'Color',[1 1 1], ...
    'FontSize',14, ...
    'FontName','Symbol', ...
    'FontWeight','bold', ...
    'Ytick',[-pi -pi/2 0 pi/2 pi], ...
    'Yticklabel',{'-p';'';0;'';'p'}, ...
    'XLim',[-15 15], ...
    'YLim',[-4.1 4.1], ...
    'NextPlot','replacechildren', ...
    'Position',[0.07 0.085 0.51 0.20], ...
    'Tag','PhaseAxis', ...
    'XColor',[0 0 0], ...
    'YColor',[0 0 0], ...
    'ZColor',[0 0 0]);

c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','center', ...
    'Interruptible','off', ...
    'Position',[-0.0764526 -0.205128 0], ...
    'String','Number of Fourier Coefficients', ...
    'Tag','PhaseAxisXLabel', ...
    'VerticalAlignment','cap');
set(get(c,'Parent'),'XLabel',c);
c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'FontWeight','bold', ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','center', ...
    'Interruptible','off', ...
    'Position',[-29.4343 0.487179 0], ...
    'Rotation',90, ...
    'Tag','PhaseAxisYLabel', ...
    'String','Phase', ...
    'VerticalAlignment','baseline');
set(get(c,'Parent'),'YLabel',c);
c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','right', ...
    'Interruptible','off', ...
    'Position',[-27.2936 3.57265 0], ...
    'Tag','PhaseAxisZLabel', ...
    'Visible','off');
set(get(c,'Parent'),'ZLabel',c);
c = text('Parent',b, ...
    'Color',[0 0 0], ...
    'HandleVisibility','callback', ...
    'HorizontalAlignment','center', ...
    'Interruptible','off', ...
    'Position',[-0.0764526 1.05983 0], ...
    'Tag','PhaseAxisTitle', ...
    'VerticalAlignment','bottom');
set(get(c,'Parent'),'Title',c);

%%--------------POP UP MENU----------------
% This is for the popup menu title text
b = uicontrol('Parent',a, ...
    'Units','normalized', ...
    'BackgroundColor',[0.5 0.6 0.5], ...
    'FontSize',5.764705882352942, ...
    'FontWeight','bold', ...
    'ForegroundColor',[1 1 1], ...
    'ListboxTop',0, ...
    'Position',[0.65 0.91 0.3 0.035], ...
    'String','Choose the signal type: ', ...
    'Style','text', ...
    'Tag','TextforSignal');

% This is for the popup menu
b = uicontrol('Parent',a, ...
    'Units','normalized', ...
    'BackgroundColor',[1 1 1], ...
    'Callback','fouriergui_callbacks SignalType', ...
    'FontSize',5.7375, ...
    'FontWeight','bold', ...
    'ListboxTop',0, ...
    'Position',[.65 .87 .2 .028], ...
    'Style','popupmenu', ...
    'String','Square|Triangle|Ramp or Sawtooth|Full-Wave Rectified Sine|Full-Wave Rectified Cosine|Half-Wave Rectified Sine|Half-Wave Rectified Cosine',...
    'Tag','SignalPopUp', ...
    'Value',1);

%%--------------SLIDER----------------
% This is for the slider title text
b = uicontrol('Parent',a, ...
    'Units','normalized', ...
    'BackgroundColor',[0.5 0.6 0.5], ...
    'FontSize',5.764705882352942, ...
    'FontWeight','bold', ...
    'ForegroundColor',[1 1 1], ...
    'ListboxTop',0, ...
    'Position',[0.65 0.52 0.3 0.15], ...
    'String','Choose the number of fourier coefficients by entering a number between 0 and 15 in the edit box or use the slider.', ...
    'Style','text', ...
    'Tag','TextforCoeff');

b = uicontrol('Parent',a, ...
    'Units','normalized', ...
    'BackgroundColor',[0.5 0.6 0.5], ...
    'FontSize',5.764705882352942, ...
    'FontWeight','bold', ...
    'ForegroundColor',[1 1 1], ...
    'ListboxTop',0, ...
    'Position',[0.65 0.45 0.3 0.035], ...
    'String','The number of Coefficient is = 0', ...
    'Style','text', ...
    'Tag','TextforSlider');

% This is for the slider, capable of 15 steps.

b = uicontrol('Parent',a, ...
    'Units','normalized', ...
    'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
    'Callback','fouriergui_callbacks FourCoeff1', ...
    'ListboxTop',0, ...
    'Min',0, ...
    'Max',15.0, ...
    'Position',[0.65 0.4 0.2 0.028], ...
    'SliderStep',[0.06666666666666667 0.133333333333333333], ...
    'Style','slider', ...
    'Tag','FourCoeffSlider', ...
    'Value',0);

% This is for the edit box to put number of fourier coefficients.
b = uicontrol('Parent',a, ...
    'Units','normalized', ...
    'BackgroundColor',[1 1 1], ...
    'Callback','fouriergui_callbacks FourCoeff2', ...
    'FontSize',4.207500000000001, ...
    'FontWeight','bold', ...
    'ListboxTop',0, ...
    'Position',[0.90 0.4 0.05 0.028], ...
    'String','0', ...
    'Style','edit', ...
    'Tag','FourCoeffEdit');
%-----------------

% to create the close and help button.
% b = uicontrol('Parent',a, ...
%    'Units','normalized', ...
%    'Callback','fouriergui_callbacks Close', ...
%    'FontWeight','bold', ...
%    'Position',[0.65 0.05 0.145 0.08], ...
%    'String','Close', ...
%    'Style','pushbutton', ...
%    'Tag','CloseButton');
% b = uicontrol('Parent',a, ...
%    'Units','normalized', ...
%    'Callback','fouriergui_callbacks Help', ...
%    'FontWeight','bold', ...
%    'Position',[0.815 0.05 0.145 0.08], ...
%    'String','Help', ...
%    'Style','pushbutton', ...
%    'Tag','HelpButton');
%-----------------

% to create radiocheck button.
b = uicontrol('Parent',a, ...
    'back',figcolor, ...
    'Units','normalized', ...
    'Callback','fouriergui_callbacks changex', ...
    'Position',[0.48 0.32 0.1 0.04], ...
    'String','coeff / freq', ...
    'Style','radiobutton', ...
    'Tag','changex');
%-----------------
% to create radiocheck button - 'ShowError'
% toggle between signals and error
b = uicontrol('Parent',a, ...
    'back',figcolor, ...
    'Units','normalized', ...
    'Callback','fouriergui_callbacks ShowError', ...
    'Position',[0.48 0.64 0.1 0.04], ...
    'String','Show Error', ...
    'Style','radiobutton', ...
    'Tag','showerror');

%%--------------Period SLIDER----------------
% This is for the slider title text
b = uicontrol('Parent',a, ...
    'Units','normalized', ...
    'BackgroundColor',[0.5 0.6 0.5], ...
    'FontSize',5.764705882352942, ...
    'FontWeight','bold', ...
    'ForegroundColor',[1 1 1], ...
    'ListboxTop',0, ...
    'Position',[0.65 0.76 0.3 0.035], ...
    'String','Choose the Signal Period: T = 10', ...
    'Style','text', ...
    'Tag','TextforPeriodSignal');

% This is for the period slider, varies from T0 = 5 to 25
g = uicontrol('Parent',a, ...
    'Units','normalized', ...
    'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
    'Callback','fouriergui_callbacks ChangePeriod', ...
    'ListboxTop',0, ...
    'Min',5, ...
    'Max',25, ...
    'Position',[0.65 0.71 0.2 0.028], ...
    'SliderStep',[0.05 0.1], ...
    'Style','slider', ...
    'Tag','PeriodSlider', ...
    'Value',10);   %- default period is now 10 (JMc, 25-Nov-2011)