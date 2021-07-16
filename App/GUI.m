function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 16-Jul-2021 18:08:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function A_edit_Callback(hObject, eventdata, handles)
% hObject    handle to A_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A_edit as text
%        str2double(get(hObject,'String')) returns contents of A_edit as a double


% --- Executes during object creation, after setting all properties.
function A_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vp1_Callback(hObject, eventdata, handles)
% hObject    handle to vp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vp1 as text
%        str2double(get(hObject,'String')) returns contents of vp1 as a double


% --- Executes during object creation, after setting all properties.
function vp1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vp2_Callback(hObject, eventdata, handles)
% hObject    handle to vp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vp2 as text
%        str2double(get(hObject,'String')) returns contents of vp2 as a double


% --- Executes during object creation, after setting all properties.
function vp2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tstart_Callback(hObject, eventdata, handles)
% hObject    handle to tstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tstart as text
%        str2double(get(hObject,'String')) returns contents of tstart as a double


% --- Executes during object creation, after setting all properties.
function tstart_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A as text
%        str2double(get(hObject,'String')) returns contents of A as a double


% --- Executes during object creation, after setting all properties.
function A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lamda1_Callback(hObject, eventdata, handles)
% hObject    handle to lamda1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lamda1 as text
%        str2double(get(hObject,'String')) returns contents of lamda1 as a double


% --- Executes during object creation, after setting all properties.
function lamda1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lamda1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lamda2_Callback(hObject, eventdata, handles)
% hObject    handle to lamda2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lamda2 as text
%        str2double(get(hObject,'String')) returns contents of lamda2 as a double


% --- Executes during object creation, after setting all properties.
function lamda2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lamda2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phi1_Callback(hObject, eventdata, handles)
% hObject    handle to phi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phi1 as text
%        str2double(get(hObject,'String')) returns contents of phi1 as a double


% --- Executes during object creation, after setting all properties.
function phi1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phi2_Callback(hObject, eventdata, handles)
% hObject    handle to phi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phi2 as text
%        str2double(get(hObject,'String')) returns contents of phi2 as a double


% --- Executes during object creation, after setting all properties.
function phi2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tend_Callback(hObject, eventdata, handles)
% hObject    handle to tend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tend as text
%        str2double(get(hObject,'String')) returns contents of tend as a double


% --- Executes during object creation, after setting all properties.
function tend_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dt_iter_Callback(hObject, eventdata, handles)
% hObject    handle to dt_iter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dt_iter as text
%        str2double(get(hObject,'String')) returns contents of dt_iter as a double


% --- Executes during object creation, after setting all properties.
function dt_iter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dt_iter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xstart_Callback(hObject, eventdata, handles)
% hObject    handle to xstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xstart as text
%        str2double(get(hObject,'String')) returns contents of xstart as a double


% --- Executes during object creation, after setting all properties.
function xstart_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xend_Callback(hObject, eventdata, handles)
% hObject    handle to xend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xend as text
%        str2double(get(hObject,'String')) returns contents of xend as a double


% --- Executes during object creation, after setting all properties.
function xend_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in design_button.
function design_button_Callback(hObject, eventdata, handles)
% hObject    handle to design_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%
% In put
A   = str2double(get(handles.A, 'string'));
vp1 = str2double(get(handles.vp1, 'string'));
lamda_1 = str2double(get(handles.lamda1, 'string'));
phi_01  = str2double(get(handles.phi1, 'string'));
vp2 = str2double(get(handles.vp2, 'string'));
lamda_2 = str2double(get(handles.lamda2, 'string'));
phi_02  = str2double(get(handles.phi2, 'string'));
w1 = vp1*2*pi()/lamda_1; k1 = 2*pi()/lamda_1; 
w2 = vp2*2*pi()/lamda_2; k2 = 2*pi()/lamda_2;  
t_start = str2double(get(handles.tstart, 'string')); 
t_end = str2double(get(handles.tend, 'string'));
dt_iter = str2double(get(handles.dt_iter, 'string'));
t = t_end;
x_start = str2double(get(handles.xstart, 'string'));
x_end   = str2double(get(handles.xend, 'string'));
dx_iter = dt_iter;
x_iter = 0;
%%
% Create vector for x, f1, f2, f3
n = round((x_end-x_start)/dx_iter); 
x = zeros(1,n); f1 = zeros(1,n); f2 = zeros(1,n);f3 = zeros(1,n);
%%
% Set figure
fig = figure('Position',[200 200 800 800]);
x_iter = x_start;
for i=1:n
% Calculation with the wave functions 
    x(i) = x_iter; x_iter = x_iter + dx_iter;
    f1(i) = A*cos(w1*t - k1*x(i) - phi_01); 
    f2(i) = A*cos(w2*t - k2*x(i) - phi_02);
    f3(i) = f1(i) + f2(i);
    enve_f3_positive =  2*A*cos( (w1-w2)/2*t - (k1-k2)/2*x - (phi_01-phi_02)/2 );
    enve_f3_negative = -2*A*cos( (w1-w2)/2*t - (k1-k2)/2*x - (phi_01-phi_02)/2 );
end
% Plot
    subplot(3,1,1)
        axis([0 inf -2 2])
        plot(x(i),f1(i),'k-o','MarkerFaceColor',[1 0 1])
        hold on
        plot(x(1:i),f1(1:i),'r', 'LineWidth', 1);
        xlabel('x','fontweight','bold','fontsize',10); 
        xlim([x_start x_end]);xticks(x_start:10:x_end);
        ylabel('f_{1}','fontweight','bold','fontsize',10); 
        ylim([-3 3]);yticks(-3:1:3);
        title('f_{1}(\phi) = Acos(\omega_{1}t - k_{1}x - \phi_{01}), {\phi}(x)');
    %
    subplot(3,1,2)
        axis([0 inf -2 2])
        plot(x(i),f2(i),'k-o','MarkerFaceColor',[1 0 1])
        hold on
        plot(x(1:i),f2(1:i),'b', 'LineWidth', 1);
        xlabel('x','fontweight','bold','fontsize',10); 
        xlim([x_start x_end]);xticks(x_start:10:x_end);
        ylabel('f_{2}','fontweight','bold','fontsize',10); 
        ylim([-3 3]);yticks(-3:1:3);
        title('f_{2}(\phi) = Acos(\omega_{2}t - k_{2}x - \phi_{02}), {\phi}(x)');
    %
    subplot(3,1,3)
        plot(x(i),f3(i),'k-o','MarkerFaceColor',[1 0 1])
        hold on
        plot(x(1:i),f3(1:i),'k', 'LineWidth', 1);
        plot(x(i),enve_f3_positive(i),'k-o','MarkerFaceColor','g')
        plot(x(1:i),enve_f3_positive(1:i),'r--', 'LineWidth', 0.75);
        plot(x(1:i),enve_f3_negative(1:i),'b--', 'LineWidth', 0.75);
        %
        xlabel('x','fontweight','bold','fontsize',10); 
        xlim([x_start x_end]);xticks(x_start:10:x_end);
        ylabel('f_{3}','fontweight','bold','fontsize',10); 
        ylim([-5 5]);yticks(-5:1:5);
        title('f_{3}(\phi) = f_{2}(\phi) + f_{1}(\phi), {\phi}(x)');
        print(fig,'figure_design','-dpdf');
% --- Executes on button press in simulate_button.
function simulate_button_Callback(hObject, eventdata, handles)
% hObject    handle to simulate_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in reset_button.
function reset_button_Callback(hObject, eventdata, handles)
% hObject    handle to reset_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)