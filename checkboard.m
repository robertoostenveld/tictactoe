function [win] = checkboard(b)

% CHECKBOARD is called to see whether the player or computer won.
%
% See https://nl.mathworks.com/matlabcentral/fileexchange/36696-tic-tac-toe-xo-game
% for the original implementation. This version of the code only has some
% reorganization of the functions in separate files, some reformatting of the
% whitespace around the code, and some additional help sections in the code. All
% credits go to Husam Bilal for implementing and sharing this.
%
% Copyright (c) 2012, Husam

win = 0;
for i = 1:2
  if b(1) == i && b(2) == i && b(3) == i
    win = i;
  elseif b(4) == i && b(5) == i && b(6) == i
    win = i;
  elseif b(7) == i && b(8) == i && b(9) == i
    win = i;
  elseif b(1) == i && b(4) == i && b(7) == i
    win = i;
  elseif b(2) == i && b(5) == i && b(8) == i
    win = i;
  elseif b(3) == i && b(6) == i && b(9) == i
    win = i;
  elseif b(1) == i && b(5) == i && b(9) == i
    win = i;
  elseif b(3) == i && b(5) == i && b(7) == i
    win = i;
  end
end
