
library tasks;

import 'dart:html';
import 'dart:core';
import 'task.dart';

class Tasks {

  Element _list;
  InputElement _input;

  /**
   * Initialize a `elems` list.
   */

  Tasks(String list, String input) {

    _list = query(list);
    _input = query(input);

  }

  /**
   * Start the elems
   */

  void start() {

    _input.on.change.add((Event e) {
      add(_input.value);
      _input.value = '';
    });

  }

  /**
   * Add a new `elem` at the end of the list.
   */

  void add(String content) {

    Task task = new Task(content);
    _list.elements.add(task.el);
    task.del.on.click.add(_delete);

  }

  /**
   * Sort the list.
   */

  void sort() {
    print('Not implemented yet.');
  }

  /**
   * Clear the list.
   */

  void clear() {
    print('Not implemented yet.');
  }

  /**
   * Delete a elem.
   */

  void _delete(Event e) {
    e.target.parent.remove();
  }

  /**
   * Add a delete btn to the elem you just add.
   */

  ButtonElement _deleteBtn() {

    ButtonElement btn;

    btn = new ButtonElement();
    btn.text = 'x';
    btn.classes.add('delete');
    btn.on.click.add(_delete);
    return btn;

  }

  /**
   * Return a `List` of tasks
   */

  List get() {
    List list = [];
    _list.elements.forEach((el) {
      if (el.text.length != 0) list.add(el.text);
    });
    return list;
  }

}
