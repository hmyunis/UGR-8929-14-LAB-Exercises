import 'dart:async';
import 'dart:io';

class Download {
  final String url;
  final String filename;
  final String savePath;

  Download(this.url)
      : filename = Uri.parse(url).pathSegments.last,
        savePath = join(saveDir, filename);

  Future<void> download(String saveDir) async {
    final httpClient = HttpClient();
    try {
      final request = await httpClient.getUrl(Uri.parse(url));
      final response = await request.close();

      if (response.statusCode == HttpStatus.ok) {
        final contentLength = response.contentLength;
        final file = File(savePath);
        final sink = file.openWrite();

        int downloaded = 0;
        await for (final bytes in response.listen((data) {
          downloaded += data.length;
          print('Downloading $filename: ${(downloaded / contentLength) * 100}%');
          sink.add(data);
        }));

        await sink.close();
        print('Download complete: $filename');
      } else {
        print('Error downloading $filename: Status code ${response.statusCode}');
      }
    } catch (error) {
      print('Error downloading $filename: $error');
    } finally {
      await httpClient.close();
    }
  }
}

Future<void> downloadFiles(List<String> urls, String saveDir) async {
  final downloads = urls.map((url) => Download(url));
  final futures = downloads.map((download) => download.download(saveDir));
  await Future.wait(futures);
  print('All downloads finished.');
}

void main(List<String> arguments) async {
  if (arguments.length < 3) {
    print('Usage: dart download.dart <url1> <url2> ... <save_dir>');
    return;
  }

  final urls = arguments.sublist(0, arguments.length - 1);
  final saveDir = arguments.last;

  await downloadFiles(urls, saveDir);
}
