import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './Quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Find the sum of 111 + 222 + 333',
      'answers': [
        {'text': '700', 'score': 0},
        {'text': '666', 'score': 10},
        {'text': '10', 'score': 0},
        {'text': '100', 'score': 0},
      ]
    },
    {
      'questionText': 'Subtract 457 from 832',
      'answers': [
        {'text': '375', 'score': 10},
        {'text': '57', 'score': 0},
        {'text': '376', 'score': 0},
        {'text': '970', 'score': 0},
      ]
    },
    {
      'questionText': '50 times 5 is equal to',
      'answers': [
        {'text': '2500', 'score': 0},
        {'text': '505', 'score': 0},
        {'text': '500', 'score': 0},
        {'text': 'none of these', 'score': 10},
      ]
    },
    {
      'questionText': '90 ÷ 10',
      'answers': [
        {'text': '9', 'score': 10},
        {'text': '10', 'score': 0},
        {'text': '900', 'score': 0},
        {'text': '1', 'score': 0},
      ]
    },
    {
      'questionText': 'Simplify: 26 + 32 - 12',
      'answers': [
        {'text': '0', 'score': 0},
        {'text': '32', 'score': 0},
        {'text': '56', 'score': 0},
        {'text': '46', 'score': 10},
      ]
    },
    
    {
      'questionText': 'Solve : 200 – (96 ÷ 4)',
      'answers': [
        {'text': '105', 'score': 0},
        {'text': '176', 'score': 10},
        {'text': '26', 'score': 0},
        {'text': '16', 'score': 0},
      ]
    },
    
    {
      'questionText': 'What is the sum of 130+125+191?',
      'answers': [
        {'text': '335', 'score': 0},
        {'text': '456', 'score': 0},
        {'text': '446', 'score': 10},
        {'text': '426', 'score': 0},
      ]
    },
    {
      'questionText': 'উষ্ণতার বা তাপমাত্রার এস আই একক কোনটি?',
      'answers': [
        {'text': 'সেলসিয়াস', 'score': 0},
        {'text': 'ফারেনহাইট', 'score': 0},
        {'text': 'কেলভিন', 'score': 10},
        {'text': 'কোনটাই নয়', 'score': 0},
      ]
    },


    {
      'questionText': 'If we minus 712 from 1500, how much do we get?',
      'answers': [
        {'text': '788', 'score': 10},
        {'text': '778', 'score': 0},
        {'text': '768', 'score': 0},
        {'text': '758', 'score': 0},
      ]
    },
    {
      'questionText': '50 times of 8 is equal to:',
      'answers': [
        {'text': '80', 'score': 0},
        {'text': '400', 'score': 10},
        {'text': '800', 'score': 0},
        {'text': '4000', 'score': 0},
      ]
    },
    {
      'questionText': '110 divided by 10 is',
      'answers': [
        {'text': '11', 'score': 10},
        {'text': '10', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': 'None of these', 'score': 0},
      ]
    },

        {
      'questionText': 'নীচের কোনটি ধাতু?',
      'answers': [
        {'text': 'জল', 'score': 0},
        {'text': 'পারদ', 'score': 10},
        {'text': 'তেল', 'score': 0},
        {'text': 'সালফিউরিক অ্যাসিড', 'score': 0},
      ]
    },
    
    {
      'questionText': '20+(90÷2) is equal to:',
      'answers': [
        {'text': '50', 'score': 0},
        {'text': '55', 'score': 0},
        {'text': '65', 'score': 10},
        {'text': '60', 'score': 0},
      ]
    },
    
    
    {
      'questionText': 'রোধের একক কোনটি?',
      'answers': [
        {'text': 'ওহম', 'score': 10},
        {'text': 'ওয়াট', 'score': 0},
        {'text': 'অ্যাম্পিয়ার', 'score': 0},
        {'text': ' কুলম্ব', 'score': 0},
      ]
    },


    {
      'questionText': 'Find the missing terms in multiple of 3: 3, 6, 9, __, 15',
      'answers': [
        {'text': '10', 'score': 0},
        {'text': '11', 'score': 10},
        {'text': '12', 'score': 0},
        {'text': '13', 'score': 0},
      ]
    },
    {
      'questionText': 'Solve 24÷8+2.',
      'answers': [
        {'text': '5', 'score': 10},
        {'text': '6', 'score': 0},
        {'text': '8', 'score': 0},
        {'text': '12', 'score': 0},
      ]
    },
    {
      'questionText': 'Solve: 300 – (150×2)',
      'answers': [
        {'text': '150', 'score': 0},
        {'text': '100', 'score': 0},
        {'text': '50', 'score': 0},
        {'text': '0', 'score': 10},
      ]
    },
    {
      'questionText': 'The product of 121 x 0 x 200 x 25 is',
      'answers': [
        {'text': '1500', 'score': 0},
        {'text': '0', 'score': 10},
        {'text': '4000', 'score': 0},
        {'text': 'None of these', 'score': 0},
      ]
    },
    {
      'questionText': 'বৃহত্তম এককোষী শৈবালের নাম কি?',
      'answers': [
        {'text': 'ইস্ট', 'score': 0},
        {'text': 'অ্যাসিটেবুলেরিয়া', 'score': 10},
        {'text': 'অ্যামিবা', 'score': 0},
        {'text': 'কোনটাই নয়', 'score': 0},
      ]
    },
    {
      'questionText': 'মানব দেহের বৃহত্তম গ্রন্থি কোনটি?',
      'answers': [
        {'text': 'লিভার', 'score': 10},
        {'text': 'পিটুইটারী', 'score': 0},
        {'text': 'অগ্নাশয়', 'score': 0},
        {'text': ' কোনটাই নয়', 'score': 0},
      ]
    },
    {
      'questionText': 'রিকেট রোগ কোন ভিটামিনের অভাবে হয়?',
      'answers': [
        {'text': 'ভিটামিন এ', 'score': 0},
        {'text': 'ভিটামিন বি', 'score': 0},
        {'text': 'ভিটামিন সি', 'score': 0},
        {'text': 'ভিটামিন ডি', 'score': 10},
      ]
    },
    {
      'questionText': 'কোন কোষ অঙ্গানুকে সুইসাইড ব্যাগ বলা হয়?',
      'answers': [
        {'text': 'রাইবোজোম', 'score': 0},
        {'text': 'লাইসোজোম', 'score': 10},
        {'text': 'গলগি বডি', 'score': 0},
        {'text': 'কোনটাই নয়', 'score': 0},
      ]
    },

    {
      'questionText': 'আরশোলার রেচন অঙ্গের নাম কি?',
      'answers': [
        {'text': 'ফ্লেম কোষ', 'score': 0},
        {'text': 'ম্যালপিজিয়াম নালিকা', 'score': 10},
        {'text': 'সবুজ গ্রন্থি', 'score': 0},
        {'text': 'কোনটাই নয়', 'score': 0},
      ]
    },
    {
      'questionText': 'ওজোন স্তরে গর্ত হবার জন্য দায়ী কোন গ্যাসটি?',
      'answers': [
        {'text': 'অক্সিজেন', 'score': 0},
        {'text': 'হাইড্রোজেন', 'score': 0},
        {'text': 'ক্লোরোফ্লুরো কার্বন', 'score': 10},
        {'text': 'কার্বন ডাই অক্সাইড', 'score': 0},
      ]
    },
    {
      'questionText': 'ফল পাকানোর জন্য নীচের কোন রাসায়ানিক ব্যবহার করা হয়?',
      'answers': [
        {'text': 'ইথিলিন', 'score': 10},
        {'text': 'বেঞ্জিন', 'score': 0},
        {'text': 'ফরম্যালডিহাইড', 'score': 0},
        {'text': 'ক্লোরফর্ম', 'score': 0},
      ]
    },
    {
      'questionText': 'বেকিং পাউডারের রাসয়ানিক নাম হল ___',
      'answers': [
        {'text': 'সোডিয়াম হাইড্রাক্সাইড', 'score': 0},
        {'text': 'ক্যালসিয়াম কার্বোনেট', 'score': 0},
        {'text': 'সোডিয়াম বাই কার্বোনেট', 'score': 10},
        {'text': 'ক্যালসিয়াম হাইড্রাক্সাইড', 'score': 0},
      ]
    },
    
  ];
  var _answerIndex = 0;
  var _totalScore = 0;
  void _answerQuestions(int score) {
    setState(() {
      _totalScore = _totalScore + score;
    });

    setState(() {
      _answerIndex = _answerIndex + 1;
    });

    if (_answerIndex < _questions.length) {
      print('you have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Math Quiz'),
        ),
        body: _answerIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                answerIndex: _answerIndex,
                questions: _questions)
            : Result(_totalScore),
      ),
    );
  }
}
