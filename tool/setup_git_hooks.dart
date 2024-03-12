import 'dart:io';

Future<void> main() async {
  final preCommitHook = File('.git/hooks/pre-commit');
  await preCommitHook.parent.create();
  await preCommitHook.writeAsString(
    '''
#!/bin/sh
exec dart run dart_pre_commit # specify custom options here
# exec flutter pub run dart_pre_commit # Use this instead when working on a flutter project
''',
  );

  if (!Platform.isWindows) {
    final result = await Process.run('chmod', ['a+x', preCommitHook.path]);
    stdout.write(result.stdout);
    stderr.write(result.stderr);
    exitCode = result.exitCode;
  }
}
