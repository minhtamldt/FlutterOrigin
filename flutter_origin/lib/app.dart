import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OriginApp extends StatelessWidget {
  const OriginApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const CounterPage(title: 'Flutter Demo Home Page'),
      home: _buildHome(context),
    );
  }

  _buildHome(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.hello('Flutter')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Add the following code
              Localizations.override(
                context: context,
                locale: const Locale('vi'),
                // Using a Builder to get the correct BuildContext.
                // Alternatively, you can create a new widget and Localizations.override
                // will pass the updated BuildContext to the new widget.
                child: Builder(
                  builder: (context) {
                    // A toy example for an internationalized Material widget.
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                              "Lấy Text `Hello World` từ AppLocalizations"),
                          Text(AppLocalizations.of(context)!.helloWorld,
                              style: const TextStyle(color: Colors.red)),
                          const Text("Dùng Placeholder: Hello {userName}"),
                          Text(
                              AppLocalizations.of(context)!
                                  .hello("Đây là user name"),
                              style: const TextStyle(color: Colors.red)),
                          const Text("Dùng Plurals"),
                          Text(AppLocalizations.of(context)!.nWombats(50),
                              style: const TextStyle(color: Colors.red)),
                          const Text("Dùng Selects"),
                          Text(AppLocalizations.of(context)!.pronoun('male'),
                              style: const TextStyle(color: Colors.red)),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
