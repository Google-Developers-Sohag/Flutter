class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello world'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            final now = DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.now());
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                elevation: 3.0,
                backgroundColor:
                    Colors.green[600]!.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.black.withOpacity(0.4),
                    width: 2.0,
                  ),
                ),
                content: Text('Some text $now'),
              ),
            );
          },
          child: Text('Show toast'),
        ),
      ),
    );
  }
}
