function varargout = AtLluvia(varargin)
% ATLLUVIA MATLAB code for AtLluvia.fig
%      ATLLUVIA, by itself, creates a new ATLLUVIA or raises the existing
%      singleton*.
%
%      H = ATLLUVIA returns the handle to a new ATLLUVIA or the handle to
%      the existing singleton*.
%
%      ATLLUVIA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ATLLUVIA.M with the given input arguments.
%
%      ATLLUVIA('Property','Value',...) creates a new ATLLUVIA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AtLluvia_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AtLluvia_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AtLluvia

% Last Modified by GUIDE v2.5 06-Dec-2018 00:04:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AtLluvia_OpeningFcn, ...
                   'gui_OutputFcn',  @AtLluvia_OutputFcn, ...
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


% --- Executes just before AtLluvia is made visible.
function AtLluvia_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AtLluvia (see VARARGIN)

% Choose default command line output for AtLluvia
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AtLluvia wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AtLluvia_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

winopen('P839.png');

function edit1_Callback(hObject, eventdata, handles)

global hR
h0 = str2double(get(handles.edit1,'string'));
hR= h0+0.36;
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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double



% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CalP1.
function CalP1_Callback(hObject, eventdata, handles)
% hObject    handle to CalP1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global hR
set(handles.edit2,'string',num2str(hR));


% --- Executes on button press in CalP2YP3.
function CalP2YP3_Callback(hObject, eventdata, handles)
% hObject    handle to CalP2YP3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global hs El hR LG 

if El >=5 
    Ls=(hR-hs)/sind(El);
    set(handles.editP23,'string',num2str(Ls));
elseif El <5
    Re=8500;
    Ls=2*(hR-hs)/((((sind(El))^2)+2*(hR-hs)/Re)^(1/2)+sind(El));
    set(handles.editP23,'string',num2str(Ls));

end
if (hR-hs) <= 0
        errordlg ('Hr-Hs ES MENOR O IGUAL A CERO LA ATENUACIÓN POR LLUVIA SERA IGUAL A 0, ESTÁ SEGURO ?', 'Error');
        
end
LG= Ls*cosd(El);
set(handles.editP31, 'string',num2str(LG));
function editP23_Callback(hObject, eventdata, handles)
% hObject    handle to editP23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP23 as text
%        str2double(get(hObject,'String')) returns contents of editP23 as a double


% --- Executes during object creation, after setting all properties.
function editP23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP21_Callback(hObject, eventdata, handles)
% hObject    handle to editP21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP21 as text
%        str2double(get(hObject,'String')) returns contents of editP21 as a double
global hs 
hs = str2double(get(handles.editP21,'string'));


% --- Executes during object creation, after setting all properties.
function editP21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in AlLs.
function AlLs_Callback(hObject, eventdata, handles)
% hObject    handle to AlLs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('AlturaParaLs.pdf');


function editP22_Callback(hObject, eventdata, handles)
% hObject    handle to editP22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP22 as text
%        str2double(get(hObject,'String')) returns contents of editP22 as a double
global El 

El = str2double(get(handles.editP22,'string'));

% --- Executes during object creation, after setting all properties.
function editP22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP31_Callback(hObject, eventdata, handles)
% hObject    handle to editP31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP31 as text
%        str2double(get(hObject,'String')) returns contents of editP31 as a double


% --- Executes during object creation, after setting all properties.
function editP31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP41_Callback(hObject, eventdata, handles)

global ROO 

ROO = str2double(get(handles.editP41,'string'));
% hObject    handle to editP41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP41 as text
%        str2double(get(hObject,'String')) returns contents of editP41 as a double


% --- Executes during object creation, after setting all properties.
function editP41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in P837.
function P837_Callback(hObject, eventdata, handles)
% hObject    handle to P837 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('P837.pdf');



function editP53M_Callback(hObject, eventdata, handles)
% hObject    handle to editP53M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP53M as text
%        str2double(get(hObject,'String')) returns contents of editP53M as a double


% --- Executes during object creation, after setting all properties.
function editP53M_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP53M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in P838.
function P838_Callback(hObject, eventdata, handles)
% hObject    handle to P838 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('P838.pdf');


function editP51_Callback(hObject, eventdata, handles)
% hObject    handle to editP51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP51 as text
%        str2double(get(hObject,'String')) returns contents of editP51 as a double


% --- Executes during object creation, after setting all properties.
function editP51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CalP5.
function CalP5_Callback(hObject, eventdata, handles)
% hObject    handle to CalP5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ROO yRUp yRDow;
KUp = str2double(get(handles.editP51,'string'));
AfUp = str2double(get(handles.editP52,'string'));
KDow = str2double(get(handles.editP54,'string'));
ADow = str2double(get(handles.editP55,'string'));
roo=ROO;
yrup= KUp*(roo)^(AfUp);
yrdow= KDow*(roo)^(ADow);

set(handles.editP53M,'string',num2str(yrup));
set(handles.editP56M,'string',num2str(yrdow));
yRUp=yrup; 
yRDow=yrdow;
function editP52_Callback(hObject, eventdata, handles)
% hObject    handle to editP52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP52 as text
%        str2double(get(hObject,'String')) returns contents of editP52 as a double


% --- Executes during object creation, after setting all properties.
function editP52_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP56M_Callback(hObject, eventdata, handles)
% hObject    handle to editP56M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP56M as text
%        str2double(get(hObject,'String')) returns contents of editP56M as a double


% --- Executes during object creation, after setting all properties.
function editP56M_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP56M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP54_Callback(hObject, eventdata, handles)
% hObject    handle to editP54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP54 as text
%        str2double(get(hObject,'String')) returns contents of editP54 as a double


% --- Executes during object creation, after setting all properties.
function editP54_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP55_Callback(hObject, eventdata, handles)
% hObject    handle to editP55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP55 as text
%        str2double(get(hObject,'String')) returns contents of editP55 as a double


% --- Executes during object creation, after setting all properties.
function editP55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP62M_Callback(hObject, eventdata, handles)
% hObject    handle to editP62M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP62M as text
%        str2double(get(hObject,'String')) returns contents of editP62M as a double


% --- Executes during object creation, after setting all properties.
function editP62M_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP62M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CalP6.
function CalP6_Callback(hObject, eventdata, handles)
% hObject    handle to CalP6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global LG yRUp yRDow FrUP FrDow r001Up r001Dow; 
%up--------------------------------------------------------
lg=LG;
yrup=yRUp;
fup=FrUP;
aux1=(1+0.78*(sqrt((lg*yrup)/fup))-0.38*(1-exp(-2*lg)));

r001up= (1/aux1);
set(handles.editP61M,'string',num2str(r001up));
r001Up=r001up;
%Down--------------------------------------------------------------
yrdow=yRDow;
frdow=FrDow;
aux2=(1+0.78*sqrt(lg*yrdow/frdow)-0.38*(1-exp(-2*lg)));
r001dow=(1/aux2);
set(handles.editP62M,'string',num2str(r001dow));
r001Dow=r001dow;
function editP61M_Callback(hObject, eventdata, handles)
% hObject    handle to editP61M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP61M as text
%        str2double(get(hObject,'String')) returns contents of editP61M as a double


% --- Executes during object creation, after setting all properties.
function editP61M_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP61M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP63_Callback(hObject, eventdata, handles)
% hObject    handle to editP63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP63 as text
%        str2double(get(hObject,'String')) returns contents of editP63 as a double


% --- Executes during object creation, after setting all properties.
function editP63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP61_Callback(hObject, eventdata, handles)
% hObject    handle to editP61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP61 as text
%        str2double(get(hObject,'String')) returns contents of editP61 as a double


% --- Executes during object creation, after setting all properties.
function editP61_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CalP7.
function CalP7_Callback(hObject, eventdata, handles)
% hObject    handle to CalP7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global  LG yRUp yRDow FrUP FrDow r001Up r001Dow hR hs El CUp CDow LRUp LRDow Lat v001UP v001Dow;


CUp= atand((hR-hs)/(LG*r001Up));
CDow= atand((hR-hs)/(LG*r001Dow));

set(handles.editP61,'string',num2str(CUp));
set(handles.editP62,'string',num2str(CDow));

if CUp > 0
    LRUp=LG*r001Up/cosd(El);
elseif CUp <= 0
    LRUp=(hR-hs)/sind(El);
end

if CDow > 0
    LRDow=LG*r001Dow/cosd(El);
elseif CDow <= 0
    LRDow=(hR-hs)/sind(El);
end

if abs(Lat)<36
    x=36-abs(Lat);
elseif abs(Lat) >=36
    x=0; 
end


v001UP=(1/(1+sqrt(sind(El))*(31*(1-exp(-El/(1+x)))*sqrt(LRUp*yRUp)/(FrUP^2)-0.45)));
v001Dow=(1/(1+sqrt(sind(El))*(31*(1-exp(-El/(1+x)))*sqrt(LRDow*yRDow)/(FrDow^2)-0.45)));

set(handles.editP63,'string',num2str(v001UP));
set(handles.editP64,'string',num2str(v001Dow));

function editP62_Callback(hObject, eventdata, handles)
% hObject    handle to editP62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP62 as text
%        str2double(get(hObject,'String')) returns contents of editP62 as a double


% --- Executes during object creation, after setting all properties.
function editP62_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP64_Callback(hObject, eventdata, handles)
% hObject    handle to editP64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP64 as text
%        str2double(get(hObject,'String')) returns contents of editP64 as a double


% --- Executes during object creation, after setting all properties.
function editP64_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP81_Callback(hObject, eventdata, handles)
% hObject    handle to editP81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP81 as text
%        str2double(get(hObject,'String')) returns contents of editP81 as a double


% --- Executes during object creation, after setting all properties.
function editP81_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CalP8.
function CalP8_Callback(hObject, eventdata, handles)
% hObject    handle to CalP8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global LRUp LRDow v001UP v001Dow LEUp LEDow;

LEUp = LRUp*v001UP;
LEDow = LRDow*v001Dow;

set(handles.editP81,'string',num2str(LEUp));
set(handles.editP82,'string',num2str(LEDow));

function editP82_Callback(hObject, eventdata, handles)
% hObject    handle to editP82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP82 as text
%        str2double(get(hObject,'String')) returns contents of editP82 as a double


% --- Executes during object creation, after setting all properties.
function editP82_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP91_Callback(hObject, eventdata, handles)
% hObject    handle to editP91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP91 as text
%        str2double(get(hObject,'String')) returns contents of editP91 as a double


% --- Executes during object creation, after setting all properties.
function editP91_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CalP9.
function CalP9_Callback(hObject, eventdata, handles)
% hObject    handle to CalP9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global LEUp LEDow yRUp yRDow A001Up A001Dow hR hs; 
A001Up = LEUp*yRUp;
A001Dow = LEDow*yRDow;

if hR-hs < 0
A001Up = 0;
A001Dow = 0;
end
set(handles.editP91,'string',num2str(A001Up));
set(handles.editP92,'string',num2str(A001Dow));


function editP92_Callback(hObject, eventdata, handles)
% hObject    handle to editP92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP92 as text
%        str2double(get(hObject,'String')) returns contents of editP92 as a double


% --- Executes during object creation, after setting all properties.
function editP92_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP102_Callback(hObject, eventdata, handles)
% hObject    handle to editP102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP102 as text
%        str2double(get(hObject,'String')) returns contents of editP102 as a double


% --- Executes during object creation, after setting all properties.
function editP102_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Calp10.
function Calp10_Callback(hObject, eventdata, handles)
% hObject    handle to Calp10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Lat El Beta Betax A001Up A001Dow;

p = str2double(get(handles.editP101,'string'));

if p<1 || abs(Lat)>=36
    Beta=0;   
elseif p>=1 && abs(Lat)<36 && El>= 25
    Beta=(-0.005*(abs(Lat)-36)); 
else
    Beta=(-0.005*(abs(Lat)-36))+1.8-4.25*(sind(El)); 
end
if p<1 || abs(Lat)>=36
    Betax=0;   
elseif p>=1 && abs(Lat)<36 && O>= 25
    Betax=(-0.005*(abs(Lat)-36)); 
else
    Betax=(-0.005*(abs(Lat)-36))+1.8-4.25*(sind(El)); 
end

ApUP=A001Up*((p)/0.01)^-(0.655+0.033*log(p)-0.045*log(A001Up)-Beta*(1-p)*sind(El));

ApDow=A001Dow*((p)/0.01)^-(0.655+0.033*log(p)-0.045*log(A001Dow)-Betax*(1-p)*sind(El));
%----------------------------------------------
set(handles.editP102,'string',num2str(ApUP));
set(handles.editP103,'string',num2str(ApDow));
%----------------------------------------------
%variables globales para usar en balance del enlace
global Llluviup LlluviaDow; 
Llluviup=ApUP;
LlluviaDow=ApDow;

function editP103_Callback(hObject, eventdata, handles)
% hObject    handle to editP103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP103 as text
%        str2double(get(hObject,'String')) returns contents of editP103 as a double


% --- Executes during object creation, after setting all properties.
function editP103_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editP101_Callback(hObject, eventdata, handles)
% hObject    handle to editP101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP101 as text
%        str2double(get(hObject,'String')) returns contents of editP101 as a double


% --- Executes during object creation, after setting all properties.
function editP101_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in INICIO.
function INICIO_Callback(hObject, eventdata, handles)
% hObject    handle to INICIO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
INICIO

% --- Executes on button press in SALIR.
function SALIR_Callback(hObject, eventdata, handles)
% hObject    handle to SALIR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.output);