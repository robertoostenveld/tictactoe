function decision(handles)

% DECISION is called to have the computer (O) decide on a square.
%
% See https://nl.mathworks.com/matlabcentral/fileexchange/36696-tic-tac-toe-xo-game
% for the original implementation. This version of the code only has some
% reorganization of the functions in separate files, some reformatting of the
% whitespace around the code, and some additional help sections in the code. All
% credits go to Husam Bilal for implementing and sharing this.
%
% Copyright (c) 2012, Husam

avsq = getappdata(gcbf,'avsq');
board = getappdata(gcbf,'board');
num = 0;
i = 1;
j = 2;
pause(0.5);

% try to win, if u can't try to block
while num == 0
  if i == 1
    s = [1 2 3];
  elseif i == 2
    s = [4 5 6];
  elseif i == 3
    s = [7 8 9];
  elseif i == 4
    s = [1 4 7];
  elseif i == 5
    s = [2 5 8];
  elseif i == 6
    s = [3 6 9];
  elseif i == 7
    s = [1 5 9];
  elseif i == 8
    s = [3 5 7];
  elseif i == 9 && j == 2
    j = 1;
    i = 1;
  elseif i == 9 && j == 1
    num = avsq(ceil(rand*(length(avsq)))); % pick any sq if everything fails
  end
  
  if board(s(1)) == j && board(s(2)) == j && board(s(3)) == 0
    num = s(3);
  elseif board(s(1)) == j && board(s(2)) == 0 && board(s(3)) == j
    num = s(2);
  elseif board(s(1)) == 0 && board(s(2)) == j && board(s(3)) == j
    num = s(1);
  end
  i = i+1;
end

picksquare(handles,num);
