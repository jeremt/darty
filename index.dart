
import 'dart:html';
import 'dart:json';
import 'lib/tasks.dart';

void main() {
  Tasks tasks = new Tasks('#tasks', '#add-task');

  tasks.start();
  tasks.add('Macbook Air');
  tasks.add('TV Samsung');
  tasks.add('Blender');
  query('#go').on.click.add((e) {
    List l = tasks.get();
    l.forEach((el) => print(el));
  });
}