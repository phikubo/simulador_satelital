function varargout = AtenuacionLluvia(varargin)
% ATENUACIONLLUVIA MATLAB code for AtenuacionLluvia.fig
%      ATENUACIONLLUVIA, by itself, creates a new ATENUACIONLLUVIA or raises the existing
%      singleton*.
%
%      H = ATENUACIONLLUVIA returns the handle to a new ATENUACIONLLUVIA or the handle to
%      the existing singleton*.
%
%      ATENUACIONLLUVIA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ATENUACIONLLUVIA.M with the given input arguments.
%
%      ATENUACIONLLUVIA('Property','Value',...) creates a new ATENUACIONLLUVIA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AtenuacionLluvia_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AtenuacionLluvia_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AtenuacionLluvia

% Last Modified by GUIDE v2.5 04-Mar-2019 07:02:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AtenuacionLluvia_OpeningFcn, ...
                   'gui_OutputFcn',  @AtenuacionLluvia_OutputFcn, ...
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


% --- Executes just before AtenuacionLluvia is made visible.
function AtenuacionLluvia_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AtenuacionLluvia (see VARARGIN)

% Choose default command line output for AtenuacionLluvia
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AtenuacionLluvia wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AtenuacionLluvia_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in recomendacionp839.
function recomendacionp839_Callback(hObject, eventdata, handles)
% hObject    handle to recomendacionp839 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function H0_Callback(hObject, eventdata, handles)
% hObject    handle to H0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H0 as text
%        str2double(get(hObject,'String')) returns contents of H0 as a double


% --- Executes during object creation, after setting all properties.
function H0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcularpaso1.
function calcularpaso1_Callback(hObject, eventdata, handles)
% hObject    handle to calcularpaso1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of calcularpaso1
global hR

h0 = str2double(get(handles.H0,'String'));
hR = h0 + 0.36;
set(handles.HR,'String',num2str(hR));


function HR_Callback(hObject, eventdata, handles)
% hObject    handle to HR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HR as text
%        str2double(get(hObject,'String')) returns contents of HR as a double


% --- Executes during object creation, after setting all properties.
function HR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in RECOMENDACIONLS.
function RECOMENDACIONLS_Callback(hObject, eventdata, handles)
% hObject    handle to RECOMENDACIONLS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('P1511.pdf');


function ANGELEVACION_Callback(hObject, eventdata, handles)
% hObject    handle to ANGELEVACION (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ANGELEVACION as text
%        str2double(get(hObject,'String')) returns contents of ANGELEVACION as a double


% --- Executes during object creation, after setting all properties.
function ANGELEVACION_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ANGELEVACION (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CALCULOPASO2.
function CALCULOPASO2_Callback(hObject, eventdata, handles)
% hObject    handle to CALCULOPASO2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CALCULOPASO2
global hS AE hR lS;

hS = str2double(get(handles.HS,'String'));
AE = str2double(get(handles.ANGELEVACION,'String'));

if AE >= 5
    ls=(hR-hS)/sind(AE);
    set(handles.LS,'String',num2str(ls));
    lS = ls;
elseif AE <5
    Re=8500;
    ls=2*(hR-hS)/((((sind(AE))^2)+2*(hR-hS)/Re)^(1/2)+sind(AE));
    set(handles.LS,'String',num2str(ls));
    lS = ls;
end

if (hR-hS) <= 0
    errordlg ('hR-hS ES MENOR O IGUAL A CERO. LA ATENUACIÓN POR LLUVIA SERÁ IGUAL A 0', 'Error');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2



function LS_Callback(hObject, eventdata, handles)
% hObject    handle to LS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LS as text
%        str2double(get(hObject,'String')) returns contents of LS as a double


% --- Executes during object creation, after setting all properties.
function LS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in MENUP839.
function MENUP839_Callback(hObject, eventdata, handles)
% hObject    handle to MENUP839 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mapa = get(handles.MENUP839,'Value');

if mapa == 1
    winopen('mapa1p839.png');
end

if mapa == 2
    winopen('mapa2p839.png');
end

% Hints: contents = cellstr(get(hObject,'String')) returns MENUP839 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MENUP839


% --- Executes during object creation, after setting all properties.
function MENUP839_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MENUP839 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HS_Callback(hObject, eventdata, handles)
% hObject    handle to HS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HS as text
%        str2double(get(hObject,'String')) returns contents of HS as a double


% --- Executes during object creation, after setting all properties.
function HS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CALCULOPASO3.
function CALCULOPASO3_Callback(hObject, eventdata, handles)
% hObject    handle to CALCULOPASO3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CALCULOPASO3
global lG lS AE;

lG = lS*cosd(AE);
set(handles.LG,'String',num2str(lG));


function LG_Callback(hObject, eventdata, handles)
% hObject    handle to LG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LG as text
%        str2double(get(hObject,'String')) returns contents of LG as a double


% --- Executes during object creation, after setting all properties.
function LG_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CALCULOPASO4.
function CALCULOPASO4_Callback(hObject, eventdata, handles)
% hObject    handle to CALCULOPASO4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CALCULOPASO4
global R001;

R001 = str2double(get(handles.R001,'String'));


function R001_Callback(hObject, eventdata, handles)
% hObject    handle to R001 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R001 as text
%        str2double(get(hObject,'String')) returns contents of R001 as a double


% --- Executes during object creation, after setting all properties.
function R001_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R001 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in RECOMENDACIONP837.
function RECOMENDACIONP837_Callback(hObject, eventdata, handles)
% hObject    handle to RECOMENDACIONP837 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('P837.pdf');


% --- Executes on button press in RECOMENDACIONP838.
function RECOMENDACIONP838_Callback(hObject, eventdata, handles)
% hObject    handle to RECOMENDACIONP838 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('P838.pdf');


function ALPHAUL_Callback(hObject, eventdata, handles)
% hObject    handle to ALPHAUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ALPHAUL as text
%        str2double(get(hObject,'String')) returns contents of ALPHAUL as a double


% --- Executes during object creation, after setting all properties.
function ALPHAUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ALPHAUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CALCULOPASO5.
function CALCULOPASO5_Callback(hObject, eventdata, handles)
% hObject    handle to CALCULOPASO5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CALCULOPASO5

global R001 YRUL YRDL;

Kul = str2double(get(handles.KUL,'String'));
Alphaul = str2double(get(handles.ALPHAUL,'String'));
Kdl = str2double(get(handles.KDL,'String'));
Alphadl = str2double(get(handles.ALPHADL,'String'));

roo1 = R001;
yrup = Kul*(roo1)^(Alphaul);
yrdow = Kdl*(roo1)^(Alphadl);

set(handles.YRUL,'String',num2str(yrup));
set(handles.YRDL,'String',num2str(yrdow));
YRUL = yrup; 
YRDL = yrdow;


function KUL_Callback(hObject, eventdata, handles)
% hObject    handle to KUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KUL as text
%        str2double(get(hObject,'String')) returns contents of KUL as a double


% --- Executes during object creation, after setting all properties.
function KUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function YRUL_Callback(hObject, eventdata, handles)
% hObject    handle to YRUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YRUL as text
%        str2double(get(hObject,'String')) returns contents of YRUL as a double


% --- Executes during object creation, after setting all properties.
function YRUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YRUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function KDL_Callback(hObject, eventdata, handles)
% hObject    handle to KDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KDL as text
%        str2double(get(hObject,'String')) returns contents of KDL as a double


% --- Executes during object creation, after setting all properties.
function KDL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ALPHADL_Callback(hObject, eventdata, handles)
% hObject    handle to ALPHADL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ALPHADL as text
%        str2double(get(hObject,'String')) returns contents of ALPHADL as a double


% --- Executes during object creation, after setting all properties.
function ALPHADL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ALPHADL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function YRDL_Callback(hObject, eventdata, handles)
% hObject    handle to YRDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YRDL as text
%        str2double(get(hObject,'String')) returns contents of YRDL as a double


% --- Executes during object creation, after setting all properties.
function YRDL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YRDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CALCULOPASO7.
function CALCULOPASO7_Callback(hObject, eventdata, handles)
% hObject    handle to CALCULOPASO7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CALCULOPASO7

global lG YRUL YRDL ful fdl r001ul r001dl hR hS AE CUL CDL lat V001UL V001DL LRUL LRDL;

CUL = atand((hR-hS)/(lG*r001ul));
CDL= atand((hR-hS)/(lG*r001dl));

set(handles.CUL,'String',num2str(CUL));
set(handles.CDL,'String',num2str(CDL));

if CUL > 0
    LRUL = lG*r001ul/cosd(AE);
elseif CUL <= 0
    LRUL=(hR-hS)/sind(AE);
end

if CDL > 0
    LRDL = lG*r001dl/cosd(AE);
elseif CDL <= 0
    LRDL = (hR-hS)/sind(AE);
end

if abs(lat)<36
    x = 36-abs(lat);
elseif abs(lat) >=36
    x = 0; 
end


V001UL = (1/(1+sqrt(sind(AE))*(31*(1-exp(-AE/(1+x)))*sqrt(LRUL*YRUL)/(ful^2)-0.45)));
V001DL = (1/(1+sqrt(sind(AE))*(31*(1-exp(-AE/(1+x)))*sqrt(LRDL*YRDL)/(fdl^2)-0.45)));

set(handles.V001UL,'String',num2str(V001UL));
set(handles.V001DL,'String',num2str(V001DL));



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CUL_Callback(hObject, eventdata, handles)
% hObject    handle to CUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CUL as text
%        str2double(get(hObject,'String')) returns contents of CUL as a double


% --- Executes during object creation, after setting all properties.
function CUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CDL_Callback(hObject, eventdata, handles)
% hObject    handle to CDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CDL as text
%        str2double(get(hObject,'String')) returns contents of CDL as a double


% --- Executes during object creation, after setting all properties.
function CDL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V001DL_Callback(hObject, eventdata, handles)
% hObject    handle to V001DL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V001DL as text
%        str2double(get(hObject,'String')) returns contents of V001DL as a double


% --- Executes during object creation, after setting all properties.
function V001DL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V001DL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V001UL_Callback(hObject, eventdata, handles)
% hObject    handle to V001UL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V001UL as text
%        str2double(get(hObject,'String')) returns contents of V001UL as a double


% --- Executes during object creation, after setting all properties.
function V001UL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V001UL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CALCULOPASO6.
function CALCULOPASO6_Callback(hObject, eventdata, handles)
% hObject    handle to CALCULOPASO6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CALCULOPASO6

global lG YRUL YRDL ful fdl r001ul r001dl;

%UPLINK

lg = lG;
yrup = YRUL;
fup = ful;
aux1 = (1+0.78*(sqrt((lg*yrup)/fup))-0.38*(1-exp(-2*lg)));

r001up = (1/aux1);
set(handles.R001UL,'string',num2str(r001up));
r001ul = r001up;

%DOWNLINK

yrdow = YRDL;
frdow = fdl;
aux2 = (1+0.78*sqrt(lg*yrdow/frdow)-0.38*(1-exp(-2*lg)));
r001dow = (1/aux2);
set(handles.R001DL,'String',num2str(r001dow));
r001dl = r001dow;


function R001DL_Callback(hObject, eventdata, handles)
% hObject    handle to R001DL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R001DL as text
%        str2double(get(hObject,'String')) returns contents of R001DL as a double


% --- Executes during object creation, after setting all properties.
function R001DL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R001DL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R001UL_Callback(hObject, eventdata, handles)
% hObject    handle to R001UL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R001UL as text
%        str2double(get(hObject,'String')) returns contents of R001UL as a double


% --- Executes during object creation, after setting all properties.
function R001UL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R001UL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CALCULOPASO8.
function CALCULOPASO8_Callback(hObject, eventdata, handles)
% hObject    handle to CALCULOPASO8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CALCULOPASO8

global LRUL LRDL V001UL V001DL LEUL LEDL;

LEUL = LRUL*V001UL;
LEDL = LRDL*V001DL;

set(handles.LEUL,'String',num2str(LEUL));
set(handles.LEDL,'String',num2str(LEDL));



function LEDL_Callback(hObject, eventdata, handles)
% hObject    handle to LEDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LEDL as text
%        str2double(get(hObject,'String')) returns contents of LEDL as a double


% --- Executes during object creation, after setting all properties.
function LEDL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LEDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function LEUL_Callback(hObject, eventdata, handles)
% hObject    handle to LEUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LEUL as text
%        str2double(get(hObject,'String')) returns contents of LEUL as a double


% --- Executes during object creation, after setting all properties.
function LEUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LEUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CALCULOPASO9.
function CALCULOPASO9_Callback(hObject, eventdata, handles)
% hObject    handle to CALCULOPASO9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CALCULOPASO9

global LEUL LEDL YRUL YRDL A001UL A001DL hR hS;

A001UL = LEUL*YRUL;
A001DL = LEDL*YRDL;

if hR-hS < 0
A001UL = 0;
A001DL = 0;
end

set(handles.ULA001,'String',num2str(A001UL));
set(handles.DLA001,'String',num2str(A001DL));



function DLA001_Callback(hObject, eventdata, handles)
% hObject    handle to DLA001 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DLA001 as text
%        str2double(get(hObject,'String')) returns contents of DLA001 as a double


% --- Executes during object creation, after setting all properties.
function DLA001_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DLA001 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ULA001_Callback(hObject, eventdata, handles)
% hObject    handle to ULA001 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ULA001 as text
%        str2double(get(hObject,'String')) returns contents of ULA001 as a double


% --- Executes during object creation, after setting all properties.
function ULA001_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ULA001 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CALCULOPASO10.
function CALCULOPASO10_Callback(hObject, eventdata, handles)
% hObject    handle to CALCULOPASO10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CALCULOPASO10

global lat AE BETA BETAX A001UL A001DL;

p = str2double(get(handles.P,'String'));

if p<1 || abs(lat)>=36
    BETA = 0;   
elseif p >=1 && abs(lat)<36 && AE>= 25
    BETA = (-0.005*(abs(lat)-36)); 
else
    BETA = (-0.005*(abs(lat)-36))+1.8-4.25*(sind(AE)); 
end
if p<1 || abs(lat)>=36
    BETAX = 0;   
elseif p >= 1 && abs(lat)<36 && O >= 25
    BETAX = (-0.005*(abs(lat)-36)); 
else
    BETAX = (-0.005*(abs(lat)-36))+1.8-4.25*(sind(AE)); 
end

ApUL = A001UL*((p)/0.01)^-(0.655+0.033*log(p)-0.045*log(A001UL)-BETA*(1-p)*sind(AE));

ApDL = A001DL*((p)/0.01)^-(0.655+0.033*log(p)-0.045*log(A001DL)-BETAX*(1-p)*sind(AE));
%----------------------------------------------
set(handles.ULAP,'String',num2str(ApUL));
set(handles.DLAP,'String',num2str(ApDL));
% VAR GLOBALES -> balance del enlace
global Lluviaul Lluviadl; 
Lluviaul = ApUL;
Lluviadl = ApDL;



function P_Callback(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of P as text
%        str2double(get(hObject,'String')) returns contents of P as a double


% --- Executes during object creation, after setting all properties.
function P_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DLAP_Callback(hObject, eventdata, handles)
% hObject    handle to DLAP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DLAP as text
%        str2double(get(hObject,'String')) returns contents of DLAP as a double


% --- Executes during object creation, after setting all properties.
function DLAP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DLAP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ULAP_Callback(hObject, eventdata, handles)
% hObject    handle to ULAP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ULAP as text
%        str2double(get(hObject,'String')) returns contents of ULAP as a double


% --- Executes during object creation, after setting all properties.
function ULAP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ULAP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
