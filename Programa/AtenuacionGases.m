function varargout = AtenuacionGases(varargin)
% ATENUACIONGASES MATLAB code for AtenuacionGases.fig
%      ATENUACIONGASES, by itself, creates a new ATENUACIONGASES or raises the existing
%      singleton*.
%
%      H = ATENUACIONGASES returns the handle to a new ATENUACIONGASES or the handle to
%      the existing singleton*.
%
%      ATENUACIONGASES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ATENUACIONGASES.M with the given input arguments.
%
%      ATENUACIONGASES('Property','Value',...) creates a new ATENUACIONGASES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AtenuacionGases_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AtenuacionGases_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AtenuacionGases

% Last Modified by GUIDE v2.5 06-Feb-2019 10:50:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AtenuacionGases_OpeningFcn, ...
                   'gui_OutputFcn',  @AtenuacionGases_OutputFcn, ...
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


% --- Executes just before AtenuacionGases is made visible.
function AtenuacionGases_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AtenuacionGases (see VARARGIN)

% Choose default command line output for AtenuacionGases
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AtenuacionGases wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AtenuacionGases_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in Fmenor50.
function Fmenor50_Callback(hObject, eventdata, handles)
% hObject    handle to Fmenor50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('AGmenor50.png');

% --- Executes on button press in Fmayor50.
function Fmayor50_Callback(hObject, eventdata, handles)
% hObject    handle to Fmayor50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('AGmayor50.png');