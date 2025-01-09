part of 'home_controller.dart';

class _HomeView extends StatelessView<HomeScreen, _HomeController> {
  const _HomeView(super.state, {super.key});
  static final list = HomeData.getList();
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LogoutSucess) {
          controller.logoutSuccess();
        }
        if (state is LogoutError) {
          controller.logoutError(state.error);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          actions: [
            Row(
              children: [
                controller.auth?.photoURL != null
                    ? CircleAvatar(
                        radius: 80.r,
                        backgroundImage:
                            NetworkImage(controller.auth?.photoURL ?? ''),
                      )
                    : const SizedBox.shrink(),
                10.sbw,
                controller.auth?.displayName != null
                    ? Text(
                        controller.auth?.displayName ?? controller.name,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )
                    : const SizedBox.shrink(),
                10.sbw,
                const Text(
                  'Email Address',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                10.sbw,
                Text(
                  controller.auth?.email ?? controller.email,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                10.sbw,
              ],
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.sbh,
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: list.length,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (ctx, index) {
                        final item = list[index];
                        return ListTile(
                          title: Text(item.title),
                          subtitle: Text(item.description),
                          leading: Image.network(item.image),
                        );
                      }),
                ),
                20.sbh,
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () => controller.logout(),
                      child: Center(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          height: MediaQuery.sizeOf(context).height * 0.06,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Sign out',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
