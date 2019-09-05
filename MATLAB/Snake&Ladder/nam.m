function varargout = nam(varargin)
% NAM MATLAB code for nam.fig
%      NAM, by itself, creates a new NAM or raises the existing
%      singleton*.
%
%      H = NAM returns the handle to a new NAM or the handle to
%      the existing singleton*.
%
%      NAM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NAM.M with the given input arguments.
%
%      NAM('Property','Value',...) creates a new NAM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before nam_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to nam_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help nam

% Last Modified by GUIDE v2.5 16-May-2016 15:33:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @nam_OpeningFcn, ...
                   'gui_OutputFcn',  @nam_OutputFcn, ...
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


% --- Executes just before nam is made visible.
function nam_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to nam (see VARARGIN)

% Choose default command line output for nam
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes nam wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = nam_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function tt1_Callback(hObject, eventdata, handles)
% hObject    handle to tt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tt1 as text
%        str2double(get(hObject,'String')) returns contents of tt1 as a double


% --- Executes during object creation, after setting all properties.
function tt1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tt2_Callback(hObject, eventdata, handles)
% hObject    handle to tt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tt2 as text
%        str2double(get(hObject,'String')) returns contents of tt2 as a double


% --- Executes during object creation, after setting all properties.
function tt2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tt3_Callback(hObject, eventdata, handles)
% hObject    handle to tt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tt3 as text
%        str2double(get(hObject,'String')) returns contents of tt3 as a double


% --- Executes during object creation, after setting all properties.
function tt3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tt4_Callback(hObject, eventdata, handles)
% hObject    handle to tt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tt4 as text
%        str2double(get(hObject,'String')) returns contents of tt4 as a double


% --- Executes during object creation, after setting all properties.
function tt4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tt6_Callback(hObject, eventdata, handles)
% hObject    handle to tt6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tt6 as text
%        str2double(get(hObject,'String')) returns contents of tt6 as a double


% --- Executes during object creation, after setting all properties.
function tt6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tt5_Callback(hObject, eventdata, handles)
% hObject    handle to tt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tt5 as text
%        str2double(get(hObject,'String')) returns contents of tt5 as a double


% --- Executes during object creation, after setting all properties.
function tt5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.tt1, 'string') ;
b=get(handles.tt2, 'string') ;
c=get(handles.tt3, 'string') ;
d=get(handles.tt4, 'string') ;
set(handles.tt5, 'string' , 'high and welcome: player1')%,a,'your color:',c%) ;
   
set(handles.tt6, 'string' , 'high and welcome: player2')%,b,'your color:',d%) ;
pause(1)
close(nam)
open(tas)
% --- Executes on key press with focus on pushbutton1 and none of its controls.
function pushbutton1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
axes(hObject)
imshow('C:\Users\RAYAN.TECH\Documents\MATLAB\yek.png')


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
axes(hObject)
imshow('C:\Users\RAYAN.TECH\Documents\MATLAB\do.jpg')
