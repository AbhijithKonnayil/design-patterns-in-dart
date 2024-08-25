import 'file_system.dart';

void main(List<String> args) {
  var file = File("file.txt", 10);
  var file_1_1 = File("file_1_1.txt", 5);
  var folder = Folder("folder");
  var folder_1 = Folder("Folder 1");
  folder_1.addItem(file_1_1);
  folder
    ..addItem(file)
    ..addItem(folder_1);
  folder.listContent();
  print(folder.getSize());
}
