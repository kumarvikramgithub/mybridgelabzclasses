import java.util.*;
class Add{
	public int addFirstFive(int []arr){
		int sum=0;
		for(int i=0;i<5;i++){
			sum +=arr[i];
		}
		return sum;
	}
	public int addLastFive(int []arr){
		int sum=0;
		for(int i=0;i<5;i++){
			sum +=arr[arr.length-1-i];
		}
		return sum;
	}
	public int addOdd(int []arr){
		int sum=0;
		for(int i=0;i<arr.length;i++){
			if(arr[i]%2!=0){
				sum +=arr[i];
			}

		}
		return sum;
	}
	public int addEven(int []arr){
		int sum=0;
		for(int i=0;i<arr.length;i++){
			if(arr[i]%2==0){
				sum +=arr[i];
			}

		}
		return sum;
	}
	public static void main(String []args){
		 int [] arr ={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15} ;
		 Add add=new Add();
		 System.out.println("First five Sum = "+add.addFirstFive(arr));
		 System.out.println("Last five Sum = "+add.addLastFive(arr));
		 System.out.println("Odd Sum = "+add.addOdd(arr));
		 System.out.println("Even Sum = "+add.addEven(arr));
		
	}
}