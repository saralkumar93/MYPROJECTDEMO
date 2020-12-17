import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import com.student.manage.Student;
import com.student.manage.StudentDao;

public class Start {

	public static void main(String[] args) throws IOException {
		
		

		System.out.println("Welcome to Student Management App");
		
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		
		while(true) {
			
			System.out.println("PRESS 1 to ADD students");
			System.out.println("PRESS 2 to Delete Students");
			System.out.println("PRESS 3 to Display Students");
			System.out.println("PRESS 4 to exit App");
			
			int c=Integer.parseInt(br.readLine());
			
			if(c==1) 
			{
				//add students
				System.out.println("Enter user Name :");
				String name=br.readLine();
				
				System.out.println("Enter user Phone :");
				String phone=br.readLine();
				
				System.out.println("Enter user city :");
				String city=br.readLine();
				
				// create student object to store students
				Student st=new Student(name, phone, city);
				 boolean answer=StudentDao.insertStudentToDB(st);
				 if(answer)
				 {
					 System.out.println("Student is addeded successfully...");
				 }else
				 {
					 System.out.println("something went wrong try again....");
				 }
				System.out.println(st);
				
				
			}else if(c==2) 
			{
				//delete students
				
				System.out.println("Enter student id to delete: ");
				int userId= Integer.parseInt(br.readLine());
				boolean f=StudentDao.deleteStudent(userId);
				if(f) {
					System.out.println("Deleted....");
				}else {
					System.out.println("something went wrong .....");
				}
			}else if(c==3)
			{
				//display students
				StudentDao.showAllStudent();
			}else if(c==4) 
			{
				//exit 
				break;
			}else 
			{
				
			}
		
		}
		System.out.println("Thank you for using my application");
		System.out.println("see you soon.....bye bye");
	}

}





