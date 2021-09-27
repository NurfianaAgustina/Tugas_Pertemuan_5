function varargout = OperasiPenskalaan(varargin)
% OPERASIPENSKALAAN MATLAB code for OperasiPenskalaan.fig
%      OPERASIPENSKALAAN, by itself, creates a new OPERASIPENSKALAAN or raises the existing
%      singleton*.
%
%      H = OPERASIPENSKALAAN returns the handle to a new OPERASIPENSKALAAN or the handle to
%      the existing singleton*.
%
%      OPERASIPENSKALAAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPERASIPENSKALAAN.M with the given input arguments.
%
%      OPERASIPENSKALAAN('Property','Value',...) creates a new OPERASIPENSKALAAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before OperasiPenskalaan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to OperasiPenskalaan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help OperasiPenskalaan

% Last Modified by GUIDE v2.5 25-Sep-2021 18:59:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @OperasiPenskalaan_OpeningFcn, ...
                   'gui_OutputFcn',  @OperasiPenskalaan_OutputFcn, ...
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


% --- Executes just before OperasiPenskalaan is made visible.
function OperasiPenskalaan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to OperasiPenskalaan (see VARARGIN)

% Choose default command line output for OperasiPenskalaan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes OperasiPenskalaan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = OperasiPenskalaan_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in TombolPenskalaan.
function TombolPenskalaan_Callback(hObject, eventdata, handles)
% hObject    handle to TombolPenskalaan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
a=imread('Menara.jpeg');
b = rgb2gray(a);
[m,n]=size(b);
skala=1.5;

for x=2:m
    for y=2:n
       
        hasil(round (skala*(x-1)-1),round(skala*(y-1)))=b(x-1,y-1);
        hasi2(round (skala*(x-1)-1),round(skala*(y-1)))=b(x-1,y-1);
        hasil3(round (skala*(x-1)-1),round(skala*(y-1)))=b(x-1,y-1);
    end
end
subplot(1,2,1);imshow(b);title('citra asal');
subplot(2,2,2);imshow(b);title('citra hasil 1');
subplot(2,2,2);imshow(b);title('citra hasil 2');
subplot(2,2,2);imshow(b);title('citra hasil 3');


% --- Executes on button press in TombolKeluar.
function TombolKeluar_Callback(hObject, eventdata, handles)
% hObject    handle to TombolKeluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1)
