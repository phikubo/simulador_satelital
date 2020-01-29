function varargout = desapuntamiento(varargin)
% DESAPUNTAMIENTO MATLAB code for desapuntamiento.fig
%      DESAPUNTAMIENTO, by itself, creates a new DESAPUNTAMIENTO or raises the existing
%      singleton*.
%
%      H = DESAPUNTAMIENTO returns the handle to a new DESAPUNTAMIENTO or the handle to
%      the existing singleton*.
%
%      DESAPUNTAMIENTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DESAPUNTAMIENTO.M with the given input arguments.
%
%      DESAPUNTAMIENTO('Property','Value',...) creates a new DESAPUNTAMIENTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before desapuntamiento_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to desapuntamiento_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help desapuntamiento

% Last Modified by GUIDE v2.5 04-Mar-2019 07:11:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @desapuntamiento_OpeningFcn, ...
                   'gui_OutputFcn',  @desapuntamiento_OutputFcn, ...
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


% --- Executes just before desapuntamiento is made visible.
function desapuntamiento_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to desapuntamiento (see VARARGIN)

% Choose default command line output for desapuntamiento
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes desapuntamiento wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = desapuntamiento_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DTX_Callback(hObject, eventdata, handles)
% hObject    handle to DTX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DTX as text
%        str2double(get(hObject,'String')) returns contents of DTX as a double


% --- Executes during object creation, after setting all properties.
function DTX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DTX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DRX_Callback(hObject, eventdata, handles)
% hObject    handle to DRX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DRX as text
%        str2double(get(hObject,'String')) returns contents of DRX as a double


% --- Executes during object creation, after setting all properties.
function DRX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DRX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DESAPTXUL_Callback(hObject, eventdata, handles)
% hObject    handle to DESAPTXUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DESAPTXUL as text
%        str2double(get(hObject,'String')) returns contents of DESAPTXUL as a double


% --- Executes during object creation, after setting all properties.
function DESAPTXUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DESAPTXUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DESAPRXUL_Callback(hObject, eventdata, handles)
% hObject    handle to DESAPRXUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DESAPRXUL as text
%        str2double(get(hObject,'String')) returns contents of DESAPRXUL as a double


% --- Executes during object creation, after setting all properties.
function DESAPRXUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DESAPRXUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DESAPTXDL_Callback(hObject, eventdata, handles)
% hObject    handle to DESAPTXDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DESAPTXDL as text
%        str2double(get(hObject,'String')) returns contents of DESAPTXDL as a double


% --- Executes during object creation, after setting all properties.
function DESAPTXDL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DESAPTXDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DESAPRXDL_Callback(hObject, eventdata, handles)
% hObject    handle to DESAPRXDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DESAPRXDL as text
%        str2double(get(hObject,'String')) returns contents of DESAPRXDL as a double


% --- Executes during object creation, after setting all properties.
function DESAPRXDL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DESAPRXDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DESAPTOTAL_Callback(hObject, eventdata, handles)
% hObject    handle to DESAPTOTAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DESAPTOTAL as text
%        str2double(get(hObject,'String')) returns contents of DESAPTOTAL as a double


% --- Executes during object creation, after setting all properties.
function DESAPTOTAL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DESAPTOTAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DESAPDL_Callback(hObject, eventdata, handles)
% hObject    handle to DESAPDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DESAPDL as text
%        str2double(get(hObject,'String')) returns contents of DESAPDL as a double


% --- Executes during object creation, after setting all properties.
function DESAPDL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DESAPDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DESAPUL_Callback(hObject, eventdata, handles)
% hObject    handle to DESAPUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DESAPUL as text
%        str2double(get(hObject,'String')) returns contents of DESAPUL as a double


% --- Executes during object creation, after setting all properties.
function DESAPUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DESAPUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HAZDL_Callback(hObject, eventdata, handles)
% hObject    handle to HAZDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HAZDL as text
%        str2double(get(hObject,'String')) returns contents of HAZDL as a double


% --- Executes during object creation, after setting all properties.
function HAZDL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HAZDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HAZUL_Callback(hObject, eventdata, handles)
% hObject    handle to HAZUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HAZUL as text
%        str2double(get(hObject,'String')) returns contents of HAZUL as a double


% --- Executes during object creation, after setting all properties.
function HAZUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HAZUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculardesapuntamiento.
function calculardesapuntamiento_Callback(hObject, eventdata, handles)
% hObject    handle to calculardesapuntamiento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of calculardesapuntamiento

global ful fdl;
global diametrorx diametrotx desaptotal desapul desapdl;

dtx = str2double(get(handles.DTX,'String'));
drx = str2double(get(handles.DRX,'String'));

desaptxul = str2double(get(handles.DESAPTXUL,'String'));
desaprxul = str2double(get(handles.DESAPRXUL,'String'));
desaptxdl = str2double(get(handles.DESAPTXDL,'String'));
desaprxdl = str2double(get(handles.DESAPRXDL,'String'));

fu = ful;
fd = fdl;
diametrotx = dtx;
diametrorx = drx;

lambdaul = 3/(fu*10);
lambdadl = 3/(fd*10);

hazul = 65*(lambdaul/dtx);
hazdl = 65*(lambdadl/drx);
set(handles.HAZUL,'String',num2str(hazul));
set(handles.HAZDL,'String',num2str(hazdl));

lul= (12*(desaptxul/hazul)^2) + (12*(desaprxul/hazul)^2);
ldl= (12*(desaptxdl/hazdl)^2) + (12*(desaprxdl/hazdl)^2);
set(handles.DESAPUL,'String',num2str(lul));
set(handles.DESAPDL,'String',num2str(ldl));

total = lul + ldl;
set(handles.DESAPTOTAL,'String',num2str(total));

desaptotal = total;
desapul = lul;
desapdl = ldl;
