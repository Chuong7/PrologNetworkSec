owner(1, john, smith).
owner(2, susan, wiley).
owner(3, bruce, wong).
owner(4, tim, nunez).
owner(5, al, malone).
owner(6, kyle, kicker).
owner(7, lauren, johnson).
owner(8, neil, otz).

% made sure high enough virus protection to test for true and false infections
antivirus(1, 100).
antivirus(2, 250).
antivirus(3, 275).  
antivirus(4, 1000).
antivirus(5, 450).
antivirus(6, 1000).
antivirus(7, 750).
antivirus(8, 600).

% made sure high enough infection levels to test for true and false infections
infected(2, 300).
infected(6, 2000).
infected(8, 850).
infected(3, 600).

% 6 and 1 should both be infected, while 2 is unable to infect 7.
% 8 and 5 should both be infected, while 3 is infected but unable to infect 4.

contact(6, 1).
contact(2, 7).
contact(8, 5).
contact(3, 4).




