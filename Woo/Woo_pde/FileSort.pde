class FileSort extends Task {
  PFont f;
  final String alpha = "ABCDEFGHIJKLM";
  final int[] betical = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
  File[] files;

  public FileSort() {
    super();
    task = "Sort those files!";
    hints = new String[3];
    hints[0] = "Heavier bubbles move to the right";
    hints[1] = "Compare two objects";
    hints[2] = "Swap if necessary";
    files = new File[4];
    files[0] = new File ("c u later", 120);
    files[1] = new File ("Aha", 160);
    files[2] = new File ("don't", 200);
    files[3] = new File ("baaaa", 240);
  }

  public int valueOf(String s) {
    s = s.toUpperCase();
    return betical[alpha.indexOf(s)];
  }

  public void swap (File a, File b) {
    //simply swap their x coordinates
    int temp = b.xcor;
    b.xcor = a.xcor;
    a.xcor = temp;
  }

  public void displayAllFiles() {
    for (int i = 0; i < files.length; i ++) {
      files[i].drawFile();
    }
  }

  public void toDo() {
    for (int p = 0; p < files.length - 1; p++) {//num of passes
      for (int i = 0; i < files.length - 1; i++) {
        if (valueOf(files[i].firstChar) > valueOf(files[i + 1].firstChar)) {
          swap (files[i], files[i + 1]);
        }
      }
    }
    completed = true;
  }

  public Item complete() {
    return null;
  }
}

private class File {
  String title;
  String firstChar;
  int xcor;
  int ycor;
  int l; //for length
  int w; //for width

  public File(String str, int x) {
    title = str; 
    firstChar = title.substring(0, 1);
    xcor = x;
    ycor = 90;
    l = 40;
    w = 20;
  }

  public void drawFile() {
    fill(255);
    rect (xcor, ycor, w, l);
    fill(50);
    text( title, xcor, ycor, w, l);
  }
}