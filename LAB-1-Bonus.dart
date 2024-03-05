import 'dart:async';
import 'dart:io';

Future<void> downloadFile(String url, String savePath) async {
  final HttpClient httpClient = HttpClient();
  final HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));
  final HttpClientResponse response = await request.close();
  final File file = File(savePath);
  final IOSink sink = file.openWrite();

  int downloadedBytes = 0;
  final int totalBytes = response.contentLength;

  response.listen(
    (List<int> data) {
      sink.add(data);
      downloadedBytes += data.length;
      if (totalBytes != -1) {
        double progress = downloadedBytes / totalBytes * 100;
        print('Downloaded: ${progress.toStringAsFixed(2)}%');
      }
    },
    onDone: () {
      sink.close();
      print('Download completed!');
    },
    onError: (error) {
      print('Error during download: $error');
      sink.close();
    },
    cancelOnError: true,
  );
}

void main() {
  List<String> urls = [
    'https://via.placeholder.com/600/771796',
    'https://via.placeholder.com/600/d32776',
    'https://via.placeholder.com/600/56a8c2'
  ];
  List<String> savePaths = ['file1.png', 'file2.png', 'file3.png'];

  List<Future> downloadFutures = [];

  for (int i = 0; i < urls.length; i++) {
    downloadFutures.add(downloadFile(urls[i], savePaths[i]));
  }

  Future.wait(downloadFutures)
      .then((_) => print('All downloads completed successfully.'))
      .catchError((error) => print('Error during downloads: $error'));
}
