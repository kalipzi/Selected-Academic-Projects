function varargout = bazi1(varargin)
% BAZI1 MATLAB code for bazi1.fig
%      BAZI1, by itself, creates a new BAZI1 or raises the existing
%      singleton*.
%
%      H = BAZI1 returns the handle to a new BAZI1 or the handle to
%      the existing singleton*.
%
%      BAZI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BAZI1.M with the given input arguments.
%
%      BAZI1('Property','Value',...) creates a new BAZI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bazi1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bazi1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bazi1

% Last Modified by GUIDE v2.5 02-May-2016 16:46:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bazi1_OpeningFcn, ...
                   'gui_OutputFcn',  @bazi1_OutputFcn, ...
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


% --- Executes just before bazi1 is made visible.
function bazi1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bazi1 (see VARARGIN)

% Choose default command line output for bazi1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bazi1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bazi1_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes when selected object is changed in b1.
function b1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in b1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

l1=get(handles.t1,'value');
l2=get(handles.t2,'value');


if l1==1
    n=1
    
    set(handles.j,'string',num2str(l1))
    
elseif l2==2
    n=2
    set(handles.j,'string',l2.string)
 
end




% --- Executes on button press in push1.
function push1_Callback(hObject, eventdata, handles)
% hObject    handle to push1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on push1 and none of its controls.
function push1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to push1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
