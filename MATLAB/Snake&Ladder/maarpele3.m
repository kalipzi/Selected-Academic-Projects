intialize;
board=imread('aaar.jpg');

pos2=zeros(100);
pos2(9)=45;
pos2(19)=60;
pos2(24)=-22;
pos2(58)=18;
pos2(61)=-17;
pos2(70)=-22;
pos2(71)=26;
pos2(89)=-22;
pos2(99)=-66;

player1(:,:,1) = zeros(96,96);
player1(:,:,2) = zeros(96,96);
player1(:,:,3) = 255*ones(96,96);


player2(:,:,1)=zeros(96,96);
player2(:,:,2)=255*ones(96,96);
player2(:,:,3)=zeros(96,96);




i1=mokhtasati(1);
j1=mokhtasatj(1);


board1=board;
board2=board;
board3=board;




taas=figure
  pos=1;
  pos1=1;
 board1(960-(96*(i1-1))-95:960-(96*(i1-1)),96*(j1-1)+1:96*(j1-1)+96,:) = player1;
  board2(960-(96*(i1-1))-95:960-(96*(i1-1)),96*(j1-1)+1:96*(j1-1)+96,:) = player2;
 
c=uicontrol('parent',taas,'style','pushbutton',...
          'string','taas','tag','tas1','callback',@tasadofi,...
          'units','normalized','position',[0.45 0.01 0.1 0.1],...
              'backgroundcolor',[0 1 0])


        imshow(board1) ;
        imshow(board2);
        
        
        while(pos && pos1 ~= 100)
            
    board1=board;
    board3=board2;
    
 x=tasadofi;
 pos1=pos1+x;
 
  if pos1>100
     
                   
     pos1=pos1-x;
  
  end
  j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);

  board1(960-(96*(i1-1))-95:960-(96*(i1-1)),96*(j1-1)+1:96*(j1-1)+96,:) = player1;
  board2(960-(96*(i1-1))-95:960-(96*(i1-1)),96*(j1-1)+1:96*(j1-1)+96,:) = player1;

  pause(2);
 imshow(board2);
 board1=board;

     
     pos1=pos1+pos2(pos1);
     
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
     
  board1(960-(96*(i1-1))-95:960-(96*(i1-1)),96*(j1-1)+1:96*(j1-1)+96,:) = player1;
  board3(960-(96*(i1-1))-95:960-(96*(i1-1)),96*(j1-1)+1:96*(j1-1)+96,:) = player1;
    pause(2)
 imshow(board3);

 disp(pos1)
 
 
 
 
 
  board3=board1;
board2=board;
 
 
   x2=tasadofi
 pos=pos+x2
 
       if pos>100
     
                   
     pos=pos-x2;
  
  end

 
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
     
 
  board1(960-(96*(i1-1))-95:960-(96*(i1-1)),96*(j1-1)+1:96*(j1-1)+96,:) = player2;
  board2(960-(96*(i1-1))-95:960-(96*(i1-1)),96*(j1-1)+1:96*(j1-1)+96,:) = player2;
        
    pause(2)
 imshow(board1);
 board2=board;

     
     pos=pos+pos2(pos);
     
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
     
      board2(960-(96*(i1-1))-95:960-(96*(i1-1)),96*(j1-1)+1:96*(j1-1)+96,:) = player2;
  board3(960-(96*(i1-1))-95:960-(96*(i1-1)),96*(j1-1)+1:96*(j1-1)+96,:) = player2;
        
   pause(2);
 imshow(board3);
 disp(pos);
     
        end
            
            
            

