function varargout = indexperdidas(varargin)
% INDEXPERDIDAS MATLAB code for indexperdidas.fig
%      INDEXPERDIDAS, by itself, creates a new INDEXPERDIDAS or raises the existing
%      singleton*.
%
%      H = INDEXPERDIDAS returns the handle to a new INDEXPERDIDAS or the handle to
%      the existing singleton*.
%
%      INDEXPERDIDAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INDEXPERDIDAS.M with the given input arguments.
%
%      INDEXPERDIDAS('Property','Value',...) creates a new INDEXPERDIDAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before indexperdidas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to indexperdidas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help indexperdidas

% Last Modified by GUIDE v2.5 03-Mar-2019 21:53:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @indexperdidas_OpeningFcn, ...
                   'gui_OutputFcn',  @indexperdidas_OutputFcn, ...
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


% --- Executes just before indexperdidas is made visible.
function indexperdidas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to indexperdidas (see VARARGIN)

% Choose default command line output for indexperdidas
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes indexperdidas wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = indexperdidas_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in perdidasmenu.
function perdidasmenu_Callback(hObject, eventdata, handles)
% hObject    handle to perdidasmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns perdidasmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from perdidasmenu


% --- Executes during object creation, after setting all properties.
function perdidasmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to perdidasmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function perdidastitle_Callback(hObject, eventdata, handles)
% hObject    handle to perdidastitle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of perdidastitle as text
%        str2double(get(hObject,'String')) returns contents of perdidastitle as a double


% --- Executes during object creation, after setting all properties.
function perdidastitle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to perdidastitle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editfdl_Callback(hObject, eventdata, handles)
% hObject    handle to editfdl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editfdl as text
%        str2double(get(hObject,'String')) returns contents of editfdl as a double


% --- Executes during object creation, after setting all properties.
function editfdl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editfdl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editful_Callback(hObject, eventdata, handles)
% hObject    handle to editful (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editful as text
%        str2double(get(hObject,'String')) returns contents of editful as a double


% --- Executes during object creation, after setting all properties.
function editful_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editful (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in guardar.
function guardar_Callback(hObject, eventdata, handles)
% hObject    handle to guardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ful fdl lat lon dist; 
Frul = str2double(get(handles.textful,'String'));
Frdl = str2double(get(handles.textfdl,'String'));
latitud = str2double(get(handles.textlat,'String'));
longitud = str2double(get(handles.textlon,'String'));
distancia = str2double(get(handles.textdist,'String'));
ful=Frul;
fdl=Frdl;
lat=latitud; 
lon=longitud;
dist=distancia;




function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in home.
function home_Callback(hObject, eventdata, handles)
% hObject    handle to home (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
indexprueba
close indexperdidas


function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textfdl_Callback(hObject, eventdata, handles)
% hObject    handle to textfdl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textfdl as text
%        str2double(get(hObject,'String')) returns contents of textfdl as a double


% --- Executes during object creation, after setting all properties.
function textfdl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textfdl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textful_Callback(hObject, eventdata, handles)
% hObject    handle to textful (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textful as text
%        str2double(get(hObject,'String')) returns contents of textful as a double


% --- Executes during object creation, after setting all properties.
function textful_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textful (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textlat_Callback(hObject, eventdata, handles)
% hObject    handle to textlat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textlat as text
%        str2double(get(hObject,'String')) returns contents of textlat as a double


% --- Executes during object creation, after setting all properties.
function textlat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textlat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textlon_Callback(hObject, eventdata, handles)
% hObject    handle to textlon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textlon as text
%        str2double(get(hObject,'String')) returns contents of textlon as a double


% --- Executes during object creation, after setting all properties.
function textlon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textlon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textdist_Callback(hObject, eventdata, handles)
% hObject    handle to textdist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textdist as text
%        str2double(get(hObject,'String')) returns contents of textdist as a double


% --- Executes during object creation, after setting all properties.
function textdist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textdist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in reiniciar.
function reiniciar_Callback(hObject, eventdata, handles)
% hObject    handle to reiniciar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.textful,'String','');
set(handles.textfdl,'String','');
set(handles.textlon,'String','');
set(handles.textlat,'String','');
set(handles.textdist,'String','');


% --- Executes on button press in lfs.
function lfs_Callback(hObject, eventdata, handles)
% hObject    handle to lfs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of lfs

%global ful fdl dist;

%fup = ful;
%fdown = fdl;
%d = dist;

%UPLINK
%%set(handles.ulres,'String',num2str(lfsul));

%DOWNLINK
%lfsdl = 32.45 + 20*log10(fdown*(10^3)) + 20*log10(d);
%set(handles.dlres,'String',num2str(lfsdl));



function ulres_Callback(hObject, eventdata, handles)
% hObject    handle to ulres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ulres as text
%        str2double(get(hObject,'String')) returns contents of ulres as a double


% --- Executes during object creation, after setting all properties.
function ulres_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ulres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dlres_Callback(hObject, eventdata, handles)
% hObject    handle to dlres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dlres as text
%        str2double(get(hObject,'String')) returns contents of dlres as a double


% --- Executes during object creation, after setting all properties.
function dlres_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dlres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fmenor50.
function fmenor50_Callback(hObject, eventdata, handles)
% hObject    handle to fmenor50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('AGmenor50.png');


% --- Executes on button press in atenuaciongases.
function atenuaciongases_Callback(hObject, eventdata, handles)
% hObject    handle to atenuaciongases (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of atenuaciongases


% --- Executes on button press in fmayor50.
function fmayor50_Callback(hObject, eventdata, handles)
% hObject    handle to fmayor50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('AGmayor50.png');


% --- Executes on button press in desapuntamiento.
function desapuntamiento_Callback(hObject, eventdata, handles)
% hObject    handle to desapuntamiento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of desapuntamiento


% --- Executes on button press in centelleo.
function centelleo_Callback(hObject, eventdata, handles)
% hObject    handle to centelleo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of centelleo


% --- Executes during object creation, after setting all properties.
function home_CreateFcn(hObject, eventdata, handles)
% hObject    handle to home (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object deletion, before destroying properties.
function home_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to home (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in closeperdidas.
function closeperdidas_Callback(hObject, eventdata, handles)
% hObject    handle to closeperdidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close indexperdidas


% --- Executes on selection change in opcionperdidas.
function opcionperdidas_Callback(hObject, eventdata, handles)
% hObject    handle to opcionperdidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns opcionperdidas contents as cell array
%        contents{get(hObject,'Value')} returns selected item from opcionperdidas
global seleccion
opcion = get(hObject,'Value');
seleccion = opcion;



% --- Executes during object creation, after setting all properties.
function opcionperdidas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to opcionperdidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in seleccionperdidas.
function seleccionperdidas_Callback(hObject, eventdata, handles)
% hObject    handle to seleccionperdidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of seleccionperdidas
global seleccion 
if seleccion == 1
    lfs
end
if seleccion == 2
    desapuntamiento
end
if seleccion == 3
    centelleo
end
if seleccion == 4
    AtenuacionLluvia
end
if seleccion == 5
    AtenuacionGases
end
