import 'dart:io';
//Quiz Game

main(){
  Questions questions = new Questions();
  Options options = new Options();
  Correct correct = new Correct();
  System system = new System();
  //options.aesa();
  system.asking(questions.question,options.option, correct.right);
}

class Questions{
  var question = ['Which planet is nearest to Earth but far from Sun',
  'How many time light takes to reach Earth from Sun',
  'How many planet in our solar system',
  'How many moons does planet Earth have',
  'Who is known as father of computer'];
}

class Options{
  Map<int, String> option = {0:'1. mercury\n2. venus\n3. mars\n4. jupiter\n',
  1:'1. 5mins\n2. 8mins 4sec\n3. 10min 30sec\n4. 9mins 23sec\n',
  2:'1. 11\n2. 5\n3. 8\n4. 7\n',
  3:'1. 1\n2. 2\n3. 3\n4. 4\n',
  4:'1. Edwin Hubble\n2. Sam Altman\n3. Charles Babbage\n4. Hillary Clinton'};
}

class Correct{
  var right = [3, 2, 3, 1, 3];
}

class System{
  int marks = 0;
  int index = 1;
  void asking(question, option, correct){
    for(int i = 0; i<= question.length-1; i++){
      print('Q.$index'+question[i]+'\n');
      print(option[i]);
       int n = int.parse(stdin.readLineSync()!);
      index++;
      if( n == correct[i]){
        marks = marks + 1;
      }
    }
    print('your total marks is $marks');
  }
}