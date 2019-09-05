/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package maze;

import java.util.Stack;

/**
 *
 * @author RAYAN.TECH
 */
public class Maze {


	  public static void printRow(int[] row) {
	        for (int i : row) {
	            System.out.print(i);
	            System.out.print("\t");
	        }
	        System.out.println();
	    }
    
    /**
     * 
     * 
     * 
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int row,cols,dir,found=0,posx,posy,posz, top=0, next_row=0,next_col=0,exitrow=4,exitcols=4;
       
       Stack<Integer> left=new Stack<Integer>();
        Stack<Integer> mid=new Stack<Integer>();
        Stack<Integer> right=new Stack<Integer>();
     
        int [][] maze=new int[6][6];
        int [][] mark=new int[6][6];
        
        
        //design of  maze
    
          
                  for(int e=0, r=0; e<=5 ;e ++){
                        maze[r][e]=1;
                  }
            for( int e=0, r=0; r<=5 ;r ++){
              
                maze[r][e]=1;
            }
            
            for(int e=0,r=5;e<=5;e ++){
                maze[r][e]=1;
            }
            
            for(int e=5,r=0;r<=5;r ++){
                maze[r][e]=1;
            }
            
            
            for(int r=1;r<=4;r ++){
                for(int e=1;e<=4;e ++){

                if(e == 1){
                	maze[r][e]=0;
                }
                	  if(r==4){
                		  maze[r][e]=0;
                	  }
                	
                	  if(r != 4 && e!=1)
                		  maze[r][e]=1;
            }
               
              
                
            }
         maze[1][2]=0;
            
         for(int[] rowo : maze) {
	            printRow(rowo);

			   }
         
         System.out.println();
         
         System.out.println();
         
         System.out.println();
            
        
        
        //design of mark
            for(int e=0, r=0; e<=5 ;e ++){
                mark[r][e]=1;
          }
    for( int e=0, r=0; r<=5 ;r ++){
      
        mark[r][e]=1;
    }
    
    for(int e=0,r=5;e<=5;e ++){
        mark[r][e]=1;
    }
    
    for(int e=5,r=0;r<=5;r ++){
        mark[r][e]=1;
    }
            
        for(int r=1;r<=4;r ++){
        for(int e=1;e<=4;e ++){
            
            mark[r][e]=0;
        }
        
    }
        
        
        
        
        
        
        maze[1][1]=1;
        posx=1;  posy=1;  posz=2;
        left.push(posx);
        mid.push(posy);
        right.push(posz);
           top ++;
      while(top>0 && found == 0){
        
          
          row=posx;   cols=posy;    dir=posz;
          
          while(dir < 8 && found == 0){
              row=posx;   cols=posy;   dir=posz;             
              if(dir == 0){
                  next_row=row-1;
                  next_col=cols;
              }
              if(dir == 1){
                   next_row=row-1;
                   next_col=cols+1;
                  
              }
              
              if(dir == 2){
                   next_row=row;
                  next_col=cols+1;
              }
              
              if(dir ==3){
                   next_row=row+1;
                   next_col=cols+1;
              }
              
              if(dir ==4){
                   next_row=row+1;
                  next_col=cols;
              }
                          
                 if(dir == 5){
                      next_row=row+1;
                      next_col=cols-1;
                 }         
                  if(dir == 6){
                         next_row=row;
                      next_col=cols-1;
                  }        
                      if(dir == 7){
                          
                             next_row=row-1;
                           next_col=cols-1;   
                      }   
                         
                      
                      if(maze[next_row][next_col] == 0 && mark[next_row][next_col] == 0){
                    	  maze[row][cols]=20;
                          mark[row][cols]=1;
                          posx=next_row;  posy=next_col; posz=dir;
                          
                             left.push(posx);
                                  mid.push(posy);
                                      right.push(posz);
                                              top ++;
                          
                          dir=0;
                          
                          posz=dir;
                         
                      }
                      else{
                    	 
                    	  right.pop();
                    	  dir=dir+1; 
                      posz=dir;
                      right.push(posz);
                      }
                      
                      if(dir == 8 && maze[next_row][next_col] != 0){
                    	  
                    	 left.pop();
                    	 mid.pop();
                    	 right.pop();
                    	 top --;
                    	 posx=left.lastElement();
                
                    	 posy=mid.lastElement();
                    	 posz=right.lastElement();
                    	  
                    	  dir=0;
                    	  posz=dir;
                      }
                      
                      if(next_row == exitrow && next_col == exitcols){
                             posx=next_row;  posy=next_col;  posz=dir+1;
                          
                             maze[exitrow][exitcols]=20;
                             
                             left.push(posx);
                                  mid.push(posy);
                                      right.push(posz);
                                              top ++;
                                              for(int[] rowo : maze) {
                              		            printRow(rowo);

                              				   }
                         
                          
                          found=1;
                      }
                        
              
              
          }
          
      }
      
        
        
        
        
        
    }
    
    
    
              
}