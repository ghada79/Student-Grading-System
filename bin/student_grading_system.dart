import 'dart:io';

void main() {
  // i use here while to allow the program to handle multiple students
  while (true) {
    print("Enter name:");
    String? name = stdin.readLineSync();
    double getValidGrade(String subject) {
      while (true) {
        print("Enter your grade in $subject (0-100):");

        String? input = stdin.readLineSync();
        try {
          double grade = double.parse(input!);
          if (grade >= 0 && grade <= 100) {
            return grade;
          } else {
            print("Invalid input! Please enter a grade between 0 and 100.");
          }
        } catch (e) {
          print("Invalid input! Please enter a numeric value.");
        }
      }
    }
    // استخدام var لأن القيم المأخوذة من getValidGrade هي double، والنوع معروف من البداية

    var degreeOfMath = getValidGrade("Math");
    var degreeOfScience = getValidGrade("Science");
    var degreeOfEnglish = getValidGrade("English");
    var sum = degreeOfMath + degreeOfScience + degreeOfEnglish;
    //Calculate the average score.
    var avg = sum / 3;

    void printResults() {
      print("\n--- Results ---");
      print(" Your Name: $name");
      print("Total Score: $sum");
      print("Average Score: ${avg.toStringAsFixed(2)}");
    }

    printResults();

    if (avg > 90 && avg <= 100) {
      print('your grade is A');
    } else if (avg > 80 && avg <= 89) {
      print('your grade is B');
    } else if (avg > 70 && avg <= 79) {
      print('your grade is C');
    } else if (avg > 60 && avg <= 69) {
      print('your grade is A');
    } else {
      print('your grade is F');
    }
    Map<String, dynamic> studentData = {
      'name': name,
      'Math': degreeOfMath,
      'Science': degreeOfScience,
      'English': degreeOfEnglish,
      'Total': sum,
      'Average': avg
    };
    print(studentData);

    // the func  printResults() and  map studentData are doing the same thing but in different way
  }
}
