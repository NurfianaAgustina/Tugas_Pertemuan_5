function varargout = ProgramOperasiAritmetikaGUI(varargin)
% PROGRAMOPERASIARITMETIKAGUI MATLAB code for ProgramOperasiAritmetikaGUI.fig
%      PROGRAMOPERASIARITMETIKAGUI, by itself, creates a new PROGRAMOPERASIARITMETIKAGUI or raises the existing
%      singleton*.
%
%      H = PROGRAMOPERASIARITMETIKAGUI returns the handle to a new PROGRAMOPERASIARITMETIKAGUI or the handle to
%      the existing singleton*.
%
%      PROGRAMOPERASIARITMETIKAGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROGRAMOPERASIARITMETIKAGUI.M with the given input arguments.
%
%      PROGRAMOPERASIARITMETIKAGUI('Property','Value',...) creates a new PROGRAMOPERASIARITMETIKAGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ProgramOperasiAritmetikaGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ProgramOperasiAritmetikaGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ProgramOperasiAritmetikaGUI

% Last Modified by GUIDE v2.5 25-Sep-2021 11:02:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProgramOperasiAritmetikaGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @ProgramOperasiAritmetikaGUI_OutputFcn, ...
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


% --- Executes just before ProgramOperasiAritmetikaGUI is made visible.
function ProgramOperasiAritmetikaGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ProgramOperasiAritmetikaGUI (see VARARGIN)

% Choose default command line output for ProgramOperasiAritmetikaGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ProgramOperasiAritmetikaGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ProgramOperasiAritmetikaGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in TombolPenjumlahan.
function TombolPenjumlahan_Callback(hObject, eventdata, handles)
% hObject    handle to TombolPenjumlahan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
a = imread('Nurfiana.jpg');
b = rgb2gray(a);

c = imread('Menara.jpeg');
d = rgb2gray(c);

e = imresize(d,[573 338]);
imshow(e)

f = b+e;

imshow (f)
title('Penjumlahan')

% --- Executes on button press in TombolPengurangan.
function TombolPengurangan_Callback(hObject, eventdata, handles)
% hObject    handle to TombolPengurangan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2)
a = imread('Nurfiana.jpg');
b = rgb2gray(a);

c = imread('Menara.jpeg');
d = rgb2gray(c);

e = imresize(d,[573 338]);
imshow(e)

f = b-e;

imshow (f)
title('Pengurangan')

% --- Executes on button press in TombolPerkalian.
function TombolPerkalian_Callback(hObject, eventdata, handles)
% hObject    handle to TombolPerkalian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes3)
a = imread('Nurfiana.jpg');
b = rgb2gray(a);

c=b.*2;

imshow (c)
title('Perkalian')

% --- Executes on button press in TombolPembagian.
function TombolPembagian_Callback(hObject, eventdata, handles)
% hObject    handle to TombolPembagian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes4)
a = imread('Nurfiana.jpg');
b = rgb2gray(a);


c=b./2;

imshow (c)
title('Pembagian')

% --- Executes on button press in TombolAND.
function TombolAND_Callback(hObject, eventdata, handles)
% hObject    handle to TombolAND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes5)
a = imread('Nurfiana.jpg');
b = im2bw(a, 0.5);

c = imread('Menara.jpeg');
d = im2bw(c, 0.5);

e = imresize(d,[573 338]);
imshow(e)

f = and(b,e);

imshow (f)
title('Logika AND')

% --- Executes on button press in TombolOR.
function TombolOR_Callback(hObject, eventdata, handles)
% hObject    handle to TombolOR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes6)
a = imread('Nurfiana.jpg');
b = im2bw(a,0.5);

c = imread('Menara.jpeg');
d = im2bw(c, 0.5);

e = imresize(d,[573 338]);
imshow(e)

f = or(b,e);

imshow (f)
title('Logika OR')

% --- Executes on button press in TombolXOR.
function TombolXOR_Callback(hObject, eventdata, handles)
% hObject    handle to TombolXOR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes7)
a = imread('Nurfiana.jpg');
b = im2bw(a, 0.5);

c = imread('Menara.jpeg');
d = im2bw(c, 0.5);

e = imresize(d,[573 338]);
imshow(e)

f = xor(b,e);

imshow (f)
title('Logika XOR')


% --- Executes on button press in TombolNOT.
function TombolNOT_Callback(hObject, eventdata, handles)
% hObject    handle to TombolNOT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes8)
a = imread('Nurfiana.jpg');
b = im2bw(a, 0.5);

c = not(b);
imshow (c)
title('Logika NOT')

% --- Executes on button press in TombolPenskalaan.
function TombolPenskalaan_Callback(hObject, eventdata, handles)
% hObject    handle to TombolPenskalaan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in TombolRefleksi.
function TombolRefleksi_Callback(hObject, eventdata, handles)
% hObject    handle to TombolRefleksi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes9)
a = imread ('Menara.jpeg');
b = im2bw(a, 0.5);
c = fliplr(b);
imshow(c)
title('Operasi Refleksi')

% --- Executes on button press in TombolBukaGambar.
function TombolBukaGambar_Callback(hObject, eventdata, handles)
% hObject    handle to TombolBukaGambar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes15)
a = imread('Nurfiana.jpg');
b = rgb2gray(a);
imshow(b) 
title('Figure 1: Citra Keabuan')

axes(handles.axes18)
c = imread('Menara.jpeg');
d = rgb2gray(c);

e = imresize(d,[573 338]);
imshow(e)
title('Figure 2: Citra Keabuan')

% --- Executes on button press in BukaGambarCitraBiner.
function BukaGambarCitraBiner_Callback(hObject, eventdata, handles)
% hObject    handle to BukaGambarCitraBiner (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes19)
a = imread('Nurfiana.jpg');
b = im2bw(a);
imshow(b) 
title('Figure 1: Citra Biner')

axes(handles.axes20)
c = imread('Menara.jpeg');
d = im2bw(c);

e = imresize(d,[573 338]);
imshow(e)
title('Figure 2: Citra Biner')

% --- Executes on button press in TombolKeluar.
function TombolKeluar_Callback(hObject, eventdata, handles)
% hObject    handle to TombolKeluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1)
