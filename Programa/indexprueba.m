function varargout = indexprueba(varargin)
% INDEXPRUEBA MATLAB code for indexprueba.fig
%      INDEXPRUEBA, by itself, creates a new INDEXPRUEBA or raises the existing
%      singleton*.
%
%      H = INDEXPRUEBA returns the handle to a new INDEXPRUEBA or the handle to
%      the existing singleton*.
%
%      INDEXPRUEBA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INDEXPRUEBA.M with the given input arguments.
%
%      INDEXPRUEBA('Property','Value',...) creates a new INDEXPRUEBA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before indexprueba_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to indexprueba_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help indexprueba

% Last Modified by GUIDE v2.5 03-Mar-2019 11:47:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @indexprueba_OpeningFcn, ...
                   'gui_OutputFcn',  @indexprueba_OutputFcn, ...
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


% --- Executes just before indexprueba is made visible.
function indexprueba_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to indexprueba (see VARARGIN)

% Choose default command line output for indexprueba
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes indexprueba wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = indexprueba_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes on button press in perdidasbutton.
function perdidasbutton_Callback(hObject, eventdata, handles)
% hObject    handle to perdidasbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global perdidasbutton
perdidasbutton = get(handles.perdidasbutton,'value');
if perdidasbutton == 1
    indexperdidas;
end 
close indexprueba



function title_Callback(hObject, eventdata, handles)
% hObject    handle to title (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of title as text
%        str2double(get(hObject,'String')) returns contents of title as a double


% --- Executes during object creation, after setting all properties.
function title_CreateFcn(hObject, eventdata, handles)
% hObject    handle to title (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ruidobutton.
function ruidobutton_Callback(hObject, eventdata, handles)
% hObject    handle to ruidobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ruidoopcion
ruidoopcion = get(handles.ruidobutton,'value');
if ruidoopcion == 1
    indexruido;
end 
close indexprueba

% --- Executes during object creation, after setting all properties.
function header_CreateFcn(hObject, eventdata, handles)
% hObject    handle to header (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
a=imread('header.PNG')
image(a)
axis off

% Hint: place code in OpeningFcn to populate header


% --- Executes on button press in balancebutton.
function balancebutton_Callback(hObject, eventdata, handles)
% hObject    handle to balancebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global balanceopcion
balanceopcion = get(handles.balancebutton,'value');
if balanceopcion == 1
    indexbalance
end 
close indexprueba

% --- Executes on button press in cerrarbutton.
function cerrarbutton_Callback(hObject, eventdata, handles)
% hObject    handle to cerrarbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close indexprueba
