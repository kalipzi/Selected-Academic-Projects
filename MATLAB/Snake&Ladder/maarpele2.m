intialize;
board=imread( 'maro-pelle.jpg' );

player5(:,:,1)=zeros(37,60);
player5(:,:,2)=255*ones(37,60);
player5(:,:,3)=zeros(37,60);


player4(:,:,1)=zeros(37,60);
player4(:,:,2)=zeros(37,60);
player4(:,:,3)=255*ones(37,60);


i1=mokhtasati(1);
j1=mokhtasatj(1);

board1=board;
board2=board;
board3=board;

taas=figure;
  pos=1;
  pos1=1;
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:) = player4;
c=uicontrol('parent',taas,'style','pushbutton',...
          'string','taas','tag','tas1','callback',@tasadofi,...
          'units','normalized','position',[0.45 0.01 0.1 0.1],...
              'backgroundcolor',[0 1 0]);

        imshow(board1);
        imshow(board2);
          
          
          
         
          
while(pos ~=100 && pos1 ~=100)
    
    board1=board;
    board3=board2;
    
 x=tasadofi;
 pos1=pos1+x;
 
 if pos1==7
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5 ;
  
  pause(2);
 imshow(board2);
 board1=board;
  pos1=26
              
 elseif pos1==18
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
      
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5 ;
     pause(2);
 imshow(board2);
 board1=board;
 pos1=79
 elseif pos1==25
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5 ;
  
       pause(2);
 imshow(board2);
 board1=board;
 
              pos1=67
 elseif pos1==37
   
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5 ;
  
         pause(2)
 imshow(board2);
 board1=board;
       pos1=21
 elseif pos1==47
      j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5 ;
  
         pause(2);
 imshow(board2);
 board1=board;
       pos1=12
 elseif pos1==58
      j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5 ;
  
         pause(2);
 imshow(board2);


 board1=board;
       pos1=65
 elseif pos1==73
      j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5 ;
  
         pause(2);
 imshow(board2);
 board1=board;
       pos1=94
 elseif pos1==89
      j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5 ;
  
         pause(2)
 imshow(board2);
 board1=board;
       pos1=75
 elseif pos1==96
      j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5 ;
  
         pause(2)
 imshow(board2);


 board1=board;
       pos1=82

 end
 if pos1>100
     pos1=pos1-x;
 end
 
 j1=mokhtasatj(pos1);
 i1=mokhtasati(pos1);
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5;
  board3(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player5 ;
 pause(2)
 imshow(board3);
 
 
 
 
 x2=tasadofi;
 pos=pos+x2;
 
 board3=board1;
board2=board;

if pos==7
       j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4 ;
  
         pause(2);
 imshow(board1);

 board2=board;
       pos=26
elseif pos==18
           j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
   board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4 ;
  
         pause(2);
 imshow(board1);

 board2=board;
       pos=79
       
elseif pos==25
           j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4 ;
  
         pause(2)
 imshow(board1)

 board2=board;
       pos=67
elseif pos==37
           j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4 ;
  
         pause(2)
 imshow(board1);

 board2=board;
       pos=21
elseif pos==47
           j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4 ;
  
         pause(2)
 imshow(board1);

 board2=board;
       pos=12
elseif pos==58
           j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4 ;
  
         pause(2);
 imshow(board1);

 board2=board;
       pos=65
       
elseif pos==73
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4 ;
  
         pause(2)
 imshow(board1);

 board2=board;
       pos=94
elseif pos==89
           j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4 ;
  
         pause(2)
 imshow(board1);

 board2=board;
       pos=75
       
elseif pos==96
           j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
 
  board1(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4;
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4 ;
  
         pause(2)
 imshow(board1);

 board2=board;
       pos=82
end      

  if pos>100
     pos=pos-x;
  
  end
 j1=mokhtasatj(pos);
 i1=mokhtasati(pos);
  board2(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4;
  board3(370-(37*(i1-1))-36:370-(37*(i1-1)),60*(j1-1)+1:60*(j1-1)+60,:)=player4;
 pause(2)
 imshow(board3);

   end    
      
 
 
 
 
