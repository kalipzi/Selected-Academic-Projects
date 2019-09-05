package magicsquar;



import java.util.Scanner;

public class mgsq {



		static Scanner pof=new Scanner(System.in);
		
		
		  public static void printRow(int[] row) {
		        for (int i : row) {
		            System.out.print(i);
		            System.out.print("\t");
		        }
		        System.out.println();
		    }
		
		public static void main(String[] args){
		int s,d,h,i,j=0,k=0,t = 0,p=0;
		System.out.print("enter the the size of squar:");
		h=pof.nextInt();
		 if((h%2) != 0){

	     
		s=(int) Math.sqrt(h);

		d=(int) Math.sqrt(h);
		
		   int [][] array = new int[s][d];
		  
			   for(j=0;j<s;j ++){
				   
				   for(k=0;k<d;k ++){

					   array[j][k]=0;   
					

				   }
			   }
		
			   
		   
		
		  
			 for(j=0,k=(d-1)/2,i=1;i<=h;i ++){
			
				t=j;
				 p=k;
				 if( array[t][p] == 0){
				 array[t][p]=i;
				 if(t>0){
				 j --;
				 }
				 
				 if(p>0 )
					 k --;
				 
				 if( t==0){
					 j=s-1;
					
				 }
				 
				

				 if( p ==0 ){
					 k=d-1;
					
				
					 }
				}
				 
				 else if(array[t][p] != 0){
					 
					 if(t<s-2){
						 j =t+2;
						
						 } 
					 
					
					 
					 if( t==s-2){
						 j=0;
					
					 }
					 if( t==s-1){
						 j=1;
						
					 }
					 
					 if(p<d-1)
						 k=p+1;
					 
					 if(p==d-1)
						 k=0;
					 
					 i --;
					
					 
					 
				 }
				
			 }
			 
			 
			 
			 
			  // for(j=0;j<s;j ++){
				   //for(k=0;k<d;k ++){
					   
						
						//System.out.printf("%d\t",array[j][k]);
			 

		        for(int[] row : array) {
		            printRow(row);

				   }
			   }
		
		 
			   
		
		

	}}


