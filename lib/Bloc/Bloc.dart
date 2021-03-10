import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:management/CreatePlanScreen/Page/createPlanPage.dart';
import 'package:rxdart/rxdart.dart';
import '../TodoScreen/todoDetail.dart';

class Bloc {
  //Streamを扱い易いようにしたコントローラー
  final _planTextController = BehaviorSubject<String>();

  final _dateTextController = BehaviorSubject<String>();

  final _todoCreateContoroller = BehaviorSubject<List>();

  //各予定の名前
  TextEditingController planText = TextEditingController();

  //todoの日付
  TextEditingController todoDate = TextEditingController();

  //予定を追加した際に格納するリスト
  List<List<String>> planList = List();

  //作成したTODOを格納するリスト
  List todoList = List();

  StreamSink<void> get planAddAction =>
      _planTextController.sink; //予定追加時に、ここに値が流れてくる

  StreamSink<void> get decideDateAction =>
      _dateTextController.sink; //日付を決めたら、ここに値が流れてくる

  StreamSink<void> get createTodoAction =>
      _todoCreateContoroller.sink; //todoを作成したら、ここに値が流れてくる

  //出力用（1日の各予定リスト）
  final _planListController = BehaviorSubject();
  Stream get add => _planListController.stream;

  //出力用(todoの日付)
  final _dateDisplayController = BehaviorSubject();
  Stream get displayDate => _dateDisplayController.stream;

  //出力用（todoリスト）
  final _todoListContoroller = BehaviorSubject();
  Stream get createTodoList => _todoListContoroller.stream;

  Bloc() {
    _planTextController.stream.listen(
      //ここのsinkに値が流れてきたらlistenで受け取りメソッド開始
      (text) {
        addPlan(text);
      },
    );

    _dateTextController.stream.listen(
      //ここのsinkに値が流れてきたらlistenで受け取りメソッド開始
      (date) {
        _dateDisplayController.sink.add(date);
      },
    );

    _todoCreateContoroller.stream.listen(
      (event) {
        createTodo();
      },
    );
  }

  //予定を追加するメソッド
  void addPlan(String text) {
    planList[planList.length - 1].add(text);
    _planListController.sink.add(planList);
  }

  //todoを作成する
  void createTodo() {
    todoList.add(
      TodoDetail(planList[planList.length - 1], todoDate.text),
    );
    _todoListContoroller.sink.add(todoList);
  }

  void selectDate(BuildContext context) async {
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year + 6),
    );
    if (selected != null) {
      initializeDateFormatting("ja", null);
      todoDate.text = DateFormat.yMMMEd('ja').format(selected);
      decideDateAction.add(todoDate.text);
    }
  }

  //予定を削除する
  void deletePlan(list, index, stream) {
    list.removeAt(index);
    stream.add("");
  }

  //todoの配列追加
  void addTodo() {
    planList.add([]);
  }

  //予定名をリセット
  void resetPlanText() {
    planText.text = ""; //文字を削除
  }

  //日付をリセット
  void resetTodoDate() {
    todoDate.text = "";
  }

  //todoの編集ボタンが押された際
  void reWriteTodo(context, bloc, index) {
    planList.add(todoList[index].todo);

    todoDate.text = todoList[index].date;

    //値を流して画面更新
    decideDateAction.add(todoDate.text);

    //値を流して画面更新
    _planListController.sink.add(planList);
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) {
          return CreatePlanPage(bloc);
        },
      ),
    );
  }

  //必ずcloseする
  void dispose() {
    _planTextController.close();
    _planListController.close();
    _dateTextController.close();
    _dateDisplayController.close();
    _todoCreateContoroller.close();
    _todoListContoroller.close();
  }
}
