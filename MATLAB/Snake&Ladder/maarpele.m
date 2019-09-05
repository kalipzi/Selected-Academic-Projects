intialize();
board = imread ( 'board.jpg' );

player1(:,:,1) = 255*ones(60,60);
player1(:,:,2) = zeros(60,60);
player1(:,:,3) = zeros(60,60);


player2(:,:,1)=zeros(60,60);
player2(:,:,2)=255*ones(60,60);
player2(:,:,3)=zeros(60,60);


i1=mokhtasati(1);
j1=mokhtasatj(1);


board1=board;
board2=board;
board3=board;




taas=figure;
  pos=1;
  pos1=1;
  board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 
c=uicontrol('parent',taas,'style','pushbutton',...
          'string','taas','tag','tas1','callback',@tasadofi,...
          'units','normalized','position',[0.45 0.01 0.1 0.1],...
              'backgroundcolor',[0 1 0]);

        imshow(board1) ;
        imshow(board2);

while(pos ~=100)
    
    board1=board;
    board3=board2;
    
 x=tasadofi;
 pos1=pos1+x;

              if pos1==3
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2);
 imshow(board2);


 board1=board;
 
              pos1=20
              elseif pos1==6
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
 
             pos1=14
              elseif pos1==8
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;

              pos1=4
              elseif pos1==11
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=28
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=34
              elseif pos1==17
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=74
              elseif pos1==18
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=1
              elseif pos==22
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=37
              elseif pos1==26
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=10
              elseif pos1==38
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
             pos1=59
              elseif pos1==39
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
               pos1=5
                  
              elseif pos1==49
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=67
              elseif pos1==51
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=6
              elseif pos1==54
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=36
              elseif pos1==56
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=1
              elseif pos1==57
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=76
              elseif pos1==60
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board1)
 board1=board;
             pos1=23
              elseif pos1==61
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=78
              elseif pos1==75
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=28;
              elseif pos1==73
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=86;
   
              elseif pos1==81
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
             pos1=98
              elseif pos1==83
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;pos1=45;
              elseif pos1==85
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=59
              elseif pos1==88
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board=board;
            pos1=91
              elseif pos1==92
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
              pos1=25
              elseif pos1==97
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
             pos1=87;
              
              elseif pos1==99
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
   board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board2)
 board1=board;
 pos1=63;
              end
               if pos1>100
     pos1=pos1-x;
  
  end

 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
  board3(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player1;
 pause(2)
 imshow(board3)

 

 
 
 
 
 
 
  x2=tasadofi
 pos=pos+x2
 
 board3=board1;
board2=board;
              if pos==3
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
 
              pos=20
              elseif pos==6
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
 
              pos=14
              elseif pos==8
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;

              pos=4
              elseif pos==11
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=28
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=34
              elseif pos==17
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=74
              elseif pos==18
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=1
              elseif pos==22
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=37
              elseif pos==26
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=10
              elseif pos==38
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=59
              elseif pos==39
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1) 
 board2=board;
 pos=5
                  
              elseif pos==49
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=67
              elseif pos==51
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=6
              elseif pos==54
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=36
              elseif pos==56
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=1
              elseif pos==57
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;  
 pos=76
              elseif pos==60
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=23
              elseif pos==61
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=78
              elseif pos==75
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=28;
              elseif pos==73
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=86;
   
              elseif pos==81
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=98
              elseif pos==83
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=45;
              elseif pos==85
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=59
              elseif pos==88
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=91
              elseif pos==92
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=25
              elseif pos==97
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
              pos=87;
              
              elseif pos==99
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board1(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board1)
 board2=board;
 pos=63;
              end
  if pos>100
     pos=pos-x;
  
  end
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 board3(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
  board2(600-(60*(i1-1))-59:600-(60*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player2;
 pause(2)
 imshow(board3)
 disp(pos)
end
           

 
 
 
 
 

