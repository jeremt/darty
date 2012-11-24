
library tasks;

import 'dart:html';
import 'dart:core';

class Tasks {

  Element _list;
  InputElement _input;

  /**
   * Initialize a `Tasks` list.
   */

  Tasks(String list, String input) {

    _list = query(list);
    _input = query(input);

  }

  /**
   * Start the tasks
   */

  void start() {
    _input.on.change.add((Event e) {
      add(_input.value);
      _input.value = '';
    });
  }

  /**
   * Add a new `task` at the end of the list.
   */

  void add(String task) {

    DivElement elem;

    elem = new DivElement();
    elem.classes.add('task');
    elem.text = task;
    elem.elements.add(_deleteBtn());
    _list.elements.add(elem);

  }

  /**
   * Delete a task.
   */

  void _delete(Event e) {
    e.target.parent.remove();
  }

  /**
   * Add a delete btn to the task you just add.
   */

  ButtonElement _deleteBtn() {

    ButtonElement btn;

    btn = new ButtonElement();
    btn.text = 'x';
    btn.classes.add('delete');
    btn.on.click.add(_delete);
    return btn;

  }

}