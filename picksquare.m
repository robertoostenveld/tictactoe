function picksquare(handles,num)

% PICKSQUARE is called whenever the player (X) or computer (O) picks a square.
%
% See https://nl.mathworks.com/matlabcentral/fileexchange/36696-tic-tac-toe-xo-game
% for the original implementation. This version of the code only has some
% reorganization of the functions in separate files, some reformatting of the
% whitespace around the code, and some additional help sections in the code. All
% credits go to Husam Bilal for implementing and sharing this.
%
% Copyright (c) 2012, Husam

turn = getappdata(gcbf,'turn');
avsq = getappdata(gcbf,'avsq');
avsq(avsq == num) = [];
setappdata(gcbf,'avsq',avsq);
board = getappdata(gcbf,'board');
board(num) = turn;
if turn == 1
  set(eval(['handles.pushbutton' int2str(num)]),'String','X');
  turn = 2;
  set(handles.dispturn,'String','O Turn');
elseif turn == 2
  set(eval(['handles.pushbutton' int2str(num)]),'String','O');
  turn = 1;
  set(handles.dispturn,'String','X Turn');
end
setappdata(gcbf,'turn',turn);
setappdata(gcbf,'board',board);
[win] = checkboard(board);

if win ~= 0
  for i = 1:9
    set(eval(['handles.pushbutton' int2str(i)]),'Enable','off');
  end
  if win == 1
    set(handles.dispturn,'String','X WINS!');
  elseif win == 2
    set(handles.dispturn,'String','O WINS!');
  end
end

if win == 0
  if isempty(avsq)
    for i = 1:9
      set(eval(['handles.pushbutton' int2str(i)]),'Enable','off');
    end
    set(handles.dispturn,'String','Tie Game');
    return
  end
  if turn == 2
    decision(handles);
  end
end
