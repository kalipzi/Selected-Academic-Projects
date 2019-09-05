function varargout = b23(varargin)
% B23 MATLAB code for b23.fig
%      B23, by itself, creates a new B23 or raises the existing
%      singleton*.
%
%      H = B23 returns the handle to a new B23 or the handle to
%      the existing singleton*.
%
%      B23('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in B23.M with the given input arguments.
%
%      B23('Property','Value',...) creates a new B23 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before b23_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to b23_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help b23

% Last Modified by GUIDE v2.5 10-May-2016 08:47:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @b23_OpeningFcn, ...
                   'gui_OutputFcn',  @b23_OutputFcn, ...
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


% --- Executes just before b23 is made visible.
function b23_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to b23 (see VARARGIN)

% Choose default command line output for b23
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes b23 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = b23_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
