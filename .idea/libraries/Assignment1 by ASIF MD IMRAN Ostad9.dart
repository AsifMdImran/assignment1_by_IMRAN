
abstract class Role {
  void displayRole();
}

class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  get info {
    print("Name: $name\nAge: $age\nAddress: $address");
  }

  @override
  void displayRole() {
    // TODO: implement displayRole
  }
}

class Student extends Person {
  int? studentID;
  String? grade;
  List? courseScores;

  Student(super.name, super.age, super.address);

  @override
  displayRole() {
    print("Role: Student");
  }

  get info {
    print("Name: $name,\nAge: $age,\nAddress: $address");
  }

  void calculateAverageScore(double math, double english, double bangla) {
    double averageScore = (math + english + bangla) / 3;
    print("Average Score: $averageScore");
  }
}

class Teacher extends Person {
  int? teacherID;
  List<String> coursesTaught = [];

  Teacher(super.name, super.age, super.address);

  @override
  displayRole() {
    print("\nRole: Teacher");
  }

  void displayCourses() {
    coursesTaught = ["Math", "English", "Bangla"];
    print(
        "Courses Taught:\n-${coursesTaught[0]}\n-${coursesTaught[1]}\n-${coursesTaught[2]}");
  }

  get info {
    print("Name: $name,\nAge: $age,\nAddress: $address");
  }
}

void main() {
  Student student = Student("Asif", 42, "Karnafuly Chottagram");
  student.displayRole();
  student.info;
  student.calculateAverageScore(90, 85, 82);

  Teacher teacher = Teacher("Mrs. Smith", 35, "456 Oak St.");
  teacher.displayRole();
  teacher.info;
  teacher.displayCourses();
}
