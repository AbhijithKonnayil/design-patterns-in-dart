abstract class FileSystemItem {
  late String name;
  int getSize();
}

class File implements FileSystemItem {
  int size;
  @override
  String name;

  File(this.name, this.size);

  @override
  int getSize() {
    return size;
  }
}

class Folder implements FileSystemItem {
  @override
  String name;
  List<FileSystemItem> items = [];
  Folder(this.name);

  void addItem(FileSystemItem item) {
    items.add(item);
  }

  @override
  int getSize() {
    int _size = 0;
    for (var item in items) {
      _size += item.getSize();
    }
    return _size;
  }

  void listContent() {
    items.forEach((e) => print(e.name));
  }

  void removeItem(String name) {
    items.removeWhere((e) => e.name == name);
  }
}
