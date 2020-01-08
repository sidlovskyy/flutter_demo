import 'package:flutter/material.dart';
import 'package:flutter_demo/models/commit.dart';
import 'package:flutter_demo/services/github_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Commits',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 16.0),
        ),
        buttonTheme: ButtonThemeData(
          minWidth: 200.0,
        ),
      ),
      home: MyHomePage(title: 'Sidlovskyy Repo Github Commits'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Commit> _commits = [];
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loadCommits();
  }

  Future _loadCommits() async {
    setState(() {
      _loading = true;
    });
    final commits = await GithubApi.fetchCommits('sidlovskyy', 'flutter_demo');
    setState(() {
      _commits = commits;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: _buildContent(context),
            ),
            RaisedButton(
              child: const Text('Refresh'),
              onPressed: _loadCommits,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (_loading) {
      return Center(
        child: const Text('Loading...'),
      );
    }

    return ListView.builder(
      itemCount: _commits.length,
      itemBuilder: (context, index) => _buildCommit(context, _commits[index]),
    );
  }

  Widget _buildCommit(BuildContext context, Commit commit) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            blurRadius: 1.5,
          ),
        ],
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Message: ${commit.message}"),
          Text("Hash: ${commit.hash}"),
          Text("Author: ${commit.author}"),
          Text("Date: ${commit.date}"),
        ],
      ),
    );
  }
}
