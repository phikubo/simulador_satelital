function varargout = indexbalance(varargin)
% INDEXBALANCE MATLAB code for indexbalance.fig
%      INDEXBALANCE, by itself, creates a new INDEXBALANCE or raises the existing
%      singleton*.
%
%      H = INDEXBALANCE returns the handle to a new INDEXBALANCE or the handle to
%      the existing singleton*.
%
%      INDEXBALANCE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INDEXBALANCE.M with the given input arguments.
%
%      INDEXBALANCE('Property','Value',...) creates a new INDEXBALANCE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before indexbalance_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to indexbalance_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help indexbalance

% Last Modified by GUIDE v2.5 12-Mar-2019 14:29:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @indexbalance_OpeningFcn, ...
                   'gui_OutputFcn',  @indexbalance_OutputFcn, ...
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


% --- Executes just before indexbalance is made visible.
function indexbalance_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to indexbalance (see VARARGIN)

% Choose default command line output for indexbalance
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes indexbalance wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = indexbalance_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in menusistema.
function menusistema_Callback(hObject, eventdata, handles)
% hObject    handle to menusistema (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menusistema contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menusistema

global FLFSUL FLFSDL Lluviaul Lluviadl diametrotx diametrorx LDup LDdow TDL ful fdl;

lfsup = FLFSUL;
lfsdow = FLFSDL;
lluviaul = Lluviaul;
lluviadl = Lluviadl;

ldup = LDup;
lddow = LDdow;
tdow = TDL;
val = get (handles.menusistema,'value');

%SISTEMA-------------------------------------

perdidasup = lfsup+lluviaul+ldup;
set(handles.perdidasul,'String',num2str(perdidasup), 'Enable', 'Off');
perdidasdow = lfsdow+lluviadl+lddow;
set(handles.perdidasdl,'String',num2str(perdidasdow), 'Enable', 'Off');
bw = str2double(get(handles.BW,'string'));
Vb = str2double(get(handles.VB,'string'));
k=1.3806*(10^-23);

switch val
    case 1
        errordlg ('Por favor escoja una opción valida', 'Error');
    case 2 %FDMA
    %up*********************************************
        pet = str2double(get(handles.PET,'string'));
        %%boet= str2double(get(handles.BOET,'string'));
        biet = str2double(get(handles.BIET,'string'));
        efiet = str2double(get(handles.NET,'string'));
        gtet= str2double(get(handles.GTSAT,'string'));
        landaup=3/(ful*10)
        HOLI = pi*diametrotx;
        gup1=(efiet)*((HOLI)/landaup)^2;
        gup=10*log10(gup1);
        %gtet = gup/tup;
        %set(handles.editGTET,'String',num2str(gtet));
        PIRE1 = pet+gup;
        cnoup=PIRE1-biet-perdidasup+(gtet)-(10*log10(k));
        set(handles.CNOUL,'String',num2str(cnoup));
        cnTOup=cnoup-(10*log10(bw));
        set(handles.CNTUL,'String',num2str(cnTOup));
        ebnoup=cnoup*(1/Vb);
        set(handles.EBNOUL,'String',num2str(ebnoup));
        
        %dow***********************************************
        pdw = str2double(get(handles.PES,'string'));
        bodw= str2double(get(handles.BOES,'string'));
        %bidw = str2double(get(handles.BIES,'string'));
        efidw = str2double(get(handles.NES,'string'));
        landadw=3/(fdl*10)
        gdow=(efidw)*((pi*diametrorx)/landadw)^2;   
        gtdow = 10*(log10(gdow/tdow));
        %set(handles.editGTSAT,'String',num2str(gtdow));
        PIRE2 = pdw+(10*log10(gdow));
        cnodw=PIRE2-bodw-perdidasdow+(gtdow)-(10*log10(k));
        set(handles.CNODL,'String',num2str(cnodw));
        cnTOdw=cnodw-(10*log10(bw));
        set(handles.CNTDL,'String',num2str(cnTOdw));
        ebnodw=cnodw*(1/Vb);
        set(handles.EBNODL,'String',num2str(ebnodw));
        
   case 3%TDMA    
       %up*********************************************
        pet = str2double(get(handles.PET,'string'));
        %boet= str2double(get(handles.editBOET,'string'));
        biet = str2double(get(handles.BIET,'string'));
        efiet = str2double(get(handles.NET,'string'));
        gtet= str2double(get(handles.GTET,'string'));
        landaup=3/(ful*10)
        gup1=(efiet)*((pi*diametrotx)/landaup)^2;
        gup=10*log10(gup1);
        %gtet = gup/tup;
        %set(handles.editGTET,'String',num2str(gtet));
        PIRE1 = pet+gup;
        cnoup=PIRE1+biet-perdidasup+(gtet)-(10*log10(k));
        set(handles.CNOUL,'String',num2str(cnoup));
        cnTOup=cnoup-(10*log10(bw));
        set(handles.CNTUL,'String',num2str(cnTOup));
        ebnoup=cnoup*(1/Vb);
        set(handles.EBNOUL,'String',num2str(ebnoup));
    %dow***********************************************
        pdw = str2double(get(handles.PES,'string'));
        bodw= str2double(get(handles.BOES,'string'));
        %bidw = str2double(get(handles.BIES,'string'));
        efidw = str2double(get(handles.NES,'string'));
        landadw=3/(fdl*10)
        gdow=(efidw)*((pi*diametrorx)/landadw)^2;   
        gtdow = 10*(log10(gdow/tdow));
        %set(handles.editGTSAT,'String',num2str(gtdow));
        PIRE2 = pdw+(10*log10(gdow));
        cnodw=PIRE2+bodw-perdidasdow+(gtdow)-(10*log10(k));
        set(handles.CNODL,'String',num2str(cnodw));
        cnTOdw=cnodw-(10*log10(bw));
        set(handles.CNTDL,'String',num2str(cnTOdw));
        ebnodw=cnodw*(1/Vb);
        set(handles.EBNODL,'String',num2str(ebnodw));
end

%enlace total
CTOTAL=(1)/((1/cnTOup)+(1/cnTOdw));
EBNOTOTAL=(1/ebnodw)+(1/ebnoup);
set(handles.CNOTOTAL,'String',num2str(CTOTAL));
set(handles.EBNOTOTAL,'String',num2str(EBNOTOTAL));

% --- Executes during object creation, after setting all properties.
function menusistema_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menusistema (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function perdidasul_Callback(hObject, eventdata, handles)
% hObject    handle to perdidasul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of perdidasul as text
%        str2double(get(hObject,'String')) returns contents of perdidasul as a double


% --- Executes during object creation, after setting all properties.
function perdidasul_CreateFcn(hObject, eventdata, handles)
% hObject    handle to perdidasul (see GCBO)
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



function BW_Callback(hObject, eventdata, handles)
% hObject    handle to BW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW as text
%        str2double(get(hObject,'String')) returns contents of BW as a double


% --- Executes during object creation, after setting all properties.
function BW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VB_Callback(hObject, eventdata, handles)
% hObject    handle to VB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VB as text
%        str2double(get(hObject,'String')) returns contents of VB as a double


% --- Executes during object creation, after setting all properties.
function VB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PES_Callback(hObject, eventdata, handles)
% hObject    handle to PES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PES as text
%        str2double(get(hObject,'String')) returns contents of PES as a double


% --- Executes during object creation, after setting all properties.
function PES_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BIES_Callback(hObject, eventdata, handles)
% hObject    handle to BIES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BIES as text
%        str2double(get(hObject,'String')) returns contents of BIES as a double


% --- Executes during object creation, after setting all properties.
function BIES_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BIES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BOES_Callback(hObject, eventdata, handles)
% hObject    handle to BOES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BOES as text
%        str2double(get(hObject,'String')) returns contents of BOES as a double


% --- Executes during object creation, after setting all properties.
function BOES_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BOES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NES_Callback(hObject, eventdata, handles)
% hObject    handle to NES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NES as text
%        str2double(get(hObject,'String')) returns contents of NES as a double


% --- Executes during object creation, after setting all properties.
function NES_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GTES_Callback(hObject, eventdata, handles)
% hObject    handle to GTES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GTES as text
%        str2double(get(hObject,'String')) returns contents of GTES as a double


% --- Executes during object creation, after setting all properties.
function GTES_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GTES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PET_Callback(hObject, eventdata, handles)
% hObject    handle to PET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PET as text
%        str2double(get(hObject,'String')) returns contents of PET as a double


% --- Executes during object creation, after setting all properties.
function PET_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BIET_Callback(hObject, eventdata, handles)
% hObject    handle to BIET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BIET as text
%        str2double(get(hObject,'String')) returns contents of BIET as a double


% --- Executes during object creation, after setting all properties.
function BIET_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BIET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BOET_Callback(hObject, eventdata, handles)
% hObject    handle to BOET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BOET as text
%        str2double(get(hObject,'String')) returns contents of BOET as a double


% --- Executes during object creation, after setting all properties.
function BOET_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BOET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NET_Callback(hObject, eventdata, handles)
% hObject    handle to NET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NET as text
%        str2double(get(hObject,'String')) returns contents of NET as a double


% --- Executes during object creation, after setting all properties.
function NET_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in closebalance.
function closebalance_Callback(hObject, eventdata, handles)
% hObject    handle to closebalance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close indexbalance


% --- Executes on button press in home2.
function home2_Callback(hObject, eventdata, handles)
% hObject    handle to home2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
indexprueba
close indexbalance



function EBNOTOTAL_Callback(hObject, eventdata, handles)
% hObject    handle to EBNOTOTAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EBNOTOTAL as text
%        str2double(get(hObject,'String')) returns contents of EBNOTOTAL as a double


% --- Executes during object creation, after setting all properties.
function EBNOTOTAL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EBNOTOTAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CNOTOTAL_Callback(hObject, eventdata, handles)
% hObject    handle to CNOTOTAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNOTOTAL as text
%        str2double(get(hObject,'String')) returns contents of CNOTOTAL as a double


% --- Executes during object creation, after setting all properties.
function CNOTOTAL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNOTOTAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CNODL_Callback(hObject, eventdata, handles)
% hObject    handle to CNODL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNODL as text
%        str2double(get(hObject,'String')) returns contents of CNODL as a double


% --- Executes during object creation, after setting all properties.
function CNODL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNODL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CNTDL_Callback(hObject, eventdata, handles)
% hObject    handle to CNTDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNTDL as text
%        str2double(get(hObject,'String')) returns contents of CNTDL as a double


% --- Executes during object creation, after setting all properties.
function CNTDL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNTDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EBNODL_Callback(hObject, eventdata, handles)
% hObject    handle to EBNODL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EBNODL as text
%        str2double(get(hObject,'String')) returns contents of EBNODL as a double


% --- Executes during object creation, after setting all properties.
function EBNODL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EBNODL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CNOUL_Callback(hObject, eventdata, handles)
% hObject    handle to CNOUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNOUL as text
%        str2double(get(hObject,'String')) returns contents of CNOUL as a double


% --- Executes during object creation, after setting all properties.
function CNOUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNOUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CNTUL_Callback(hObject, eventdata, handles)
% hObject    handle to CNTUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNTUL as text
%        str2double(get(hObject,'String')) returns contents of CNTUL as a double


% --- Executes during object creation, after setting all properties.
function CNTUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNTUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EBNOUL_Callback(hObject, eventdata, handles)
% hObject    handle to EBNOUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EBNOUL as text
%        str2double(get(hObject,'String')) returns contents of EBNOUL as a double


% --- Executes during object creation, after setting all properties.
function EBNOUL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EBNOUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
