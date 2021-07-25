class Question {
  static const tblQuestion = 'questions';
  static const colId = 'id';
  static const colQuestion = 'question';
  static const cola = 'a';
  static const colb = 'b';
  static const colc = 'c';
  static const cold = 'd';
  static const colAnswer_index = 'answer_index';

   int id, answer;
   String question;
   String a,b,c,d;
   String topic;
  //final List<String> options;

  Question( {this.id, this.question,this.a, this.b, this.c, this.d, this.answer,this.topic,});


  Question.fromMap(dynamic obj) {
    this.id = obj['id'];
    this.question = obj['question'];
    this.a = obj['a'];
    this.b = obj['b'];
    this.c = obj['c'];
    this.d = obj['d'];
    this.answer=obj['answer_index'];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["question"] = question;
    map["a"] = a;
    map["b"] = b;
    map["c"] = c;
    map["d"] = d;
    map["answer_index"] = answer;
    return map;
  }





}//End class Question


//https://www.javatpoint.com/python-mcq
//https://www.sanfoundry.com/1000-python-questions-answers/
const List sample_data = [
  {
    "id": 1,
    "question":
        "In which year was the Python language developed? ",
    "a":"1989",
    "b":"1981",
    "c":"1972",
    "d":"1995",
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Which one of the following is the correct extension of the Python file?",
    "a":".py ",
    "b":".python",
    "c":".p",
    "d":"None of these",
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "What do we use to define a block of code in Python language?",
    "a":"Key",
    "b":"Brackets",
    "c":"Indentation",
    "d":"None of these",
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Which character is used in Python to make a single line comment?",
    "a":"/",
    "b":"//",
    "c":"#",
    "d":"!",
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Which character is used in Python to make a single line comment?",
    "a":"/",
    "b":"//",
    "c":"#",
    "d":"!",
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "Which character is used in Python to make a single line comment?",
    "a":"/",
    "b":"//",
    "c":"#",
    "d":"!",
    "answer_index": 2,
  },
  {
    "id": 7,
    "question": "What is the method inside the class in python language?",
    "a":"Argument",
    "b":"Attribute",
    "c":"Object",
    "d":"Function",
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "Which of the following declarations is incorrect?",
    "a":"_x = 2",
    "b":"__x = 3",
    "c":"__xyz__ = 5",
    "d":"None of these",
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "Which of the following is not a keyword in Python language?",
    "a":"val",
    "b":"raise",
    "c":"try",
    "d":"with",
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "Which of the following declarations is incorrect in python language?",
    "a":"x_y_z_p = 5,000,000",
    "b":"x,y,z,p = 5000, 6000, 7000, 8000",
    "c":"x y z p = 5000 6000 7000 8000",
    "d":"xyzp = 5,000,000",
    "answer_index": 2,
  },
  {
    "id": 11,
    "question": "Which of the following operators is the correct option for power(ab)?",
    "a":"a ^ * b",
    "b":"a**b",
    "c":"a ^ ^ b",
    "d":"a ^ b",
    "answer_index": 1,
  },
  {
    "id": 12,
    "question": "Which one of the following has the highest precedence in the expression?",
    "a":"Parentheses",
    "b":"Power",
    "c":"Subtraction",
    "d":"Division",
    "answer_index": 0,
  },
  {
    "id": 13,
    "question": "What arithmetic operators cannot be used with strings?",
    "a":"+",
    "b":"*",
    "c":"–",
    "d":"All of the mentioned",
    "answer_index": 2,
    "topic":'operators'
  },
  {
    "id": 14,
    "question": "What is the out put of : print (r'\nhello'')",
    "a":"error",
    "b":"the letter r and then hello",
    "c":"\nhello",
    "d":"a new line and hello",
    "answer_index": 2,
  },
  {
    "id": 15,
    "question": "What is the out put of : print('new' 'line')",
    "a":"Error",
    "b":"Output equivalent to print ‘new\nline’",
    "c":"newline",
    "d":"new line",
    "answer_index": 2,
  },
  {
    "id": 16,
    "question": "Which of these in not a core data type?",
    "a":"Lists",
    "b":"Dictionary",
    "c":"Tuples",
    "d":"Class",
    "answer_index": 3,
    "topic":'types'
  },
  {
    "id": 17,
    "question": "What data type is the object?   L = [1, 23, 'hello', 1]  ",
    "a":"tuple",
    "b":"array",
    "c":"dictionary",
    "d":"list",
    "answer_index": 0,
    "topic":'types'
  },
  {
    "id": 17,
    "question": "What will be the output of the following Python code snippet?:  not(10<20) and not(10>30) ",
    "a":"True",
    "b":"False",
    "c":"Error",
    "d":"No output",
    "answer_index": 1,
    "topic":'booleans'
  },

  {
    "id": 17,
    "question": "Which of the following commands will create a list?",
    "a":"list1 = list()",
    "b":"list1 = []",
    "c":" list1 = list([1, 2, 3])",
    "d":"all of the mentioned",
    "answer_index": 3,
    "topic":'lists'
  },

  {
    "id": 17,
    "question": "What is the output when we execute list(“hello”)?",
    "a":" [‘h’, ‘e’, ‘l’, ‘l’, ‘o’]",
    "b":"[‘hello’]",
    "c":"[‘llo’]",
    "d":" [‘olleh’]",
    "answer_index": 0,
    "topic":'lists'
  },

  {
    "id": 17,
    "question": "Suppose listExample is [‘h’,’e’,’l’,’l’,’o’], what is len(listExample)?",
    "a":"5",
    "b":"4",
    "c":"None",
    "d":"Error",
    "answer_index": 0,
    "topic":'lists'
  },

  {
    "id": 17,
    "question": "Suppose list1 is [4, 2, 2, 4, 5, 2, 1, 0], Which of the following is correct syntax for slicing operation?",
    "a":"print(list1[0])",
    "b":"print(list1[:2])",
    "c":" print(list1[:-2])",
    "d":"all of the mentioned",
    "answer_index": 3,
    "topic":'slicing'
  },

  {
    "id": 17,
    "question": "Suppose list1 is [2, 33, 222, 14, 25], What is list1[-1]?",
    "a":"Error",
    "b":"None",
    "c":"25",
    "d":"2",
    "answer_index": 2,
    "topic":'lists'
  },
  {
    "id": 17,
    "question": "Suppose list1 is [1, 3, 2], What is list1 * 2?",
    "a":"[1, 3, 2, 3, 2, 1]",
    "b":" [1, 3, 2, 1, 3, 2]",
    "c":"[1, 3, 2, 1, 3]",
    "d":"[2, 6, 4]",
    "answer_index": 1,
    "topic":'lists'
  },

  {
    "id": 17,
    "question": "_____ represents an entity in the real world with its identity and behaviour.",
    "a":"An operator",
    "b":" A class",
    "c":"An object",
    "d":"method",
    "answer_index": 2,
    "topic":'oop'
  },
  {
    "id": 17,
    "question": "What is the value of this expression? 2**2**3**1 ",

    "a":"12",
    "b":" 24",
    "c":"128",
    "d":"256",
    "answer_index": 3,
    "topic":'operators'
  },
  {
    "id": 17,
    "question": "Suppose list1 is [1, 3, 2], What is list1 * 2?",
    "a":"[1, 3, 2, 3, 2, 1]",
    "b":" [1, 3, 2, 1, 3, 2]",
    "c":"[1, 3, 2, 1, 3]",
    "d":"[2, 6, 4]",
    "answer_index": 1,
    "topic":'lists'
  },
  {
    "id": 17,
    "question": "Suppose list1 is [1, 3, 2], What is list1 * 2?",
    "a":"[1, 3, 2, 3, 2, 1]",
    "b":" [1, 3, 2, 1, 3, 2]",
    "c":"[1, 3, 2, 1, 3]",
    "d":"[2, 6, 4]",
    "answer_index": 1,
    "topic":'lists'
  },
  {
    "id": 17,
    "question": "Suppose list1 is [1, 3, 2], What is list1 * 2?",
    "a":"[1, 3, 2, 3, 2, 1]",
    "b":" [1, 3, 2, 1, 3, 2]",
    "c":"[1, 3, 2, 1, 3]",
    "d":"[2, 6, 4]",
    "answer_index": 1,
    "topic":'lists'
  },










];
