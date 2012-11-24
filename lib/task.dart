
library task;

import 'dart:html';
import 'dart:core';

class Task {

  DivElement el;
  Element del;
  bool _checked;

  /**
   * Initialize a new task.
   */

  Task(String content) {
    el = new DivElement();
    el.classes.add('elem');
    el.text = content;
    el.elements.add(_deleteBtn());
    el.on.click.add(toogle);
  }

  /**
   * Add a delete button.
   */

  Element _deleteBtn() {
    del = new ButtonElement();
    del.text = 'x';
    del.classes.add('delete');
    return del;
  }

  /**
   * Toogle the checked status.
   */

  void toogle(Event e) {
    _checked = !_checked;
    if (_checked)
      el.classes.add('checked');
    else
      el.classes.remove('checked');
  }

}