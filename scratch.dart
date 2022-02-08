void main() {
  performTask();
}

void performTask() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 date';
  print('Task 1 complete');
}

Future task2() async {
  Duration fiveSeconds = Duration(seconds: 5);
  // sleep(fiveSeconds);
  String result = '';
  await Future.delayed(fiveSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 date';
  print('Task 3 complete with $task2Data');
}
