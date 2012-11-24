
import 'lib/tasks.dart';

void main() {
	Tasks tasks = new Tasks('#tasks', '#add-task');

	tasks.start();
	tasks.add('Macbook Air');
	tasks.add('TV Samsung');
	tasks.add('Blender');
}