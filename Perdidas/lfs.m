function varargout = lfs(varargin)
% LFS MATLAB code for lfs.fig
%      LFS, by itself, creates a new LFS or raises the existing
%      singleton*.
%
%      H = LFS returns the handle to a new LFS or the handle to
%      the existing singleton*.
%
%      LFS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LFS.M with the given input arguments.
%
%      LFS('Property','Value',...) creates a new LFS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lfs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lfs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lfs

% Last Modified by GUIDE v2.5 04-Mar-2019 09:25:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lfs_OpeningFcn, ...
                   'gui_OutputFcn',  @lfs_OutputFcn, ...
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


% --- Executes just before lfs is made visible.
function lfs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lfs (see VARARGIN)

% Choose default command line output for lfs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lfs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lfs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in calcularlfs.
function calcularlfs_Callback(hObject, eventdata, handles)
% hObject    handle to calcularlfs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of calcularlfs
global ful fdl dist;
global FLFSUL FLFSDL;

fup = ful;
fdown = fdl;
d = dist;

%UPLINK

%UPLINK
lfsul = 32.45 + 20*log10(fup*(10^3)) + 20*log10(d);
set(handles.ulres,'String',num2str(lfsul));
FLFSUL = lfsul;

%DOWNLINK
lfsdl = 32.45 + 20*log10(fdown*(10^3)) + 20*log10(d);
set(handles.dlres,'String',num2str(lfsdl));
FLFSDL = lfsdl;
