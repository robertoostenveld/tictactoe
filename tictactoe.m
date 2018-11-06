function varargout = tictactoe(varargin)

% TICTACTOE is a simple implementation of the traditional Tic Tac Toe (XO) game in
% Matlab with nice and easy to use GUI.
%
% The TICTACTOE function itself contains the code for the graphical user interface.
% You should call this function to start a new game. The graphical user interface is
% implemented using GUIDE. The specification of the figure with the 3x3 grid of
% buttons that represent the playing field, the title at the top with
% instructions/feedback and the button at the bottom to start the game is in the
% corresponding figure file.
%
% PICKSQUARE is called whenever the player (X) or computer (O) picks a square.
%
% DECISION is called to have the computer (O) decide on a square.
%
% CHECKBOARD is called to see whether the player or computer won.
%
% See https://nl.mathworks.com/matlabcentral/fileexchange/36696-tic-tac-toe-xo-game
% for the original implementation. This version of the code only has some
% reorganization of the functions in separate files, some reformatting of the
% whitespace around the code, and some additional help sections in the code. All
% credits go to Husam Bilal for implementing and sharing this.
%
% Copyright (c) 2012, Husam

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Edit the above text to modify the response to help tictactoe
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Last Modified by GUIDE v2.5 09-May-2012 23:16:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ...
  'gui_Singleton', gui_Singleton, ...
  'gui_OpeningFcn', @tictactoe_OpeningFcn, ...
  'gui_OutputFcn', @tictactoe_OutputFcn, ...
  'gui_LayoutFcn', [] , ...
  'gui_Callback', []);
if nargin && ischar(varargin{1})
  gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
  [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
  gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before tictactoe is made visible.
function tictactoe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% varargin command line arguments to tictactoe (see VARARGIN)

% Choose default command line output for tictactoe
handles.output = hObject;
set(hObject, 'Name', 'Tic Tac Toe');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tictactoe wait for user response (see UIRESUME)
% uiwait(handles.MTTT);


% --- Outputs from this function are returned to the command line.
function varargout = tictactoe_OutputFcn(hObject, eventdata, handles)
% varargout cell array for returning output args (see VARARGOUT);
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
avsq = getappdata(gcbf,'avsq');
if isempty(avsq(avsq == 1))
  set(handles.dispturn,'String','dont cheat');
else
  picksquare(handles,1);
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
avsq = getappdata(gcbf,'avsq');
if isempty(avsq(avsq == 2))
  set(handles.dispturn,'String','dont cheat');
else
  picksquare(handles,2);
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton3 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
avsq = getappdata(gcbf,'avsq');
if isempty(avsq(avsq == 3))
  set(handles.dispturn,'String','dont cheat');
else
  picksquare(handles,3);
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton4 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
avsq = getappdata(gcbf,'avsq');
if isempty(avsq(avsq == 4))
  set(handles.dispturn,'String','dont cheat');
else
  picksquare(handles,4);
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton5 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
avsq = getappdata(gcbf,'avsq');
if isempty(avsq(avsq == 5))
  set(handles.dispturn,'String','dont cheat');
else
  picksquare(handles,5);
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton6 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
avsq = getappdata(gcbf,'avsq');
if isempty(avsq(avsq == 6))
  set(handles.dispturn,'String','dont cheat');
else
  picksquare(handles,6);
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton7 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
avsq = getappdata(gcbf,'avsq');
if isempty(avsq(avsq == 7))
  set(handles.dispturn,'String','dont cheat');
else
  picksquare(handles,7);
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton8 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
avsq = getappdata(gcbf,'avsq');
if isempty(avsq(avsq == 8))
  set(handles.dispturn,'String','dont cheat');
else
  picksquare(handles,8);
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton9 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
avsq = getappdata(gcbf,'avsq');
if isempty(avsq(avsq == 9))
  set(handles.dispturn,'String','dont cheat');
else
  picksquare(handles,9);
end

% --- Executes on button press in newgame.
function newgame_Callback(hObject, eventdata, handles)
% hObject handle to newgame (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
for i = 1:9
  set(eval(['handles.pushbutton' int2str(i)]),'Enable','on');
  set(eval(['handles.pushbutton' int2str(i)]),'String','');
end
turn = ceil(rand*2);
if turn == 1
  set(handles.dispturn,'String','X Turn');
elseif turn == 2
  set(handles.dispturn,'String','O Turn');
end
setappdata(gcbf,'turn',turn);
board = zeros(1,9);
setappdata(gcbf,'board',board);
avsq = [1:9];
setappdata(gcbf,'avsq',avsq);
if turn == 2
  decision(handles);
end


% --- Executes during object creation, after setting all properties.
function MTTT_CreateFcn(hObject, eventdata, handles)
% hObject handle to MTTT (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
