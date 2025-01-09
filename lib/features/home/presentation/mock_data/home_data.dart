class HomeData {
  final String title;
  final String description;
  final String image;

  const HomeData({
    required this.title,
    required this.description,
    required this.image,
  });

  static List<HomeData> getList() {
    return [
      const HomeData(
        title: 'John Doe',
        description: 'the boy is young',
        image:
            'https://api.dicebear.com/5.x/big-ears-neutral/png?seed=John Doe',
      ),
      const HomeData(
        title: 'Kelvin Monroe',
        description: 'Technie',
        image:
            'https://api.dicebear.com/5.x/big-ears-neutral/png?seed=John Doe',
      ),
      const HomeData(
        title: 'Fayrouz',
        description: 'Big boy',
        image:
            'https://api.dicebear.com/5.x/big-ears-neutral/png?seed=John Doe',
      ),
      const HomeData(
        title: 'Fayrouz',
        description: 'Big boy',
        image:
            'https://api.dicebear.com/5.x/big-ears-neutral/png?seed=John Doe',
      ),
      const HomeData(
        title: 'Fayrouz',
        description: 'Big boy',
        image:
            'https://api.dicebear.com/5.x/big-ears-neutral/png?seed=John Doe',
      ),
      const HomeData(
        title: 'Fayrouz',
        description: 'Big boy',
        image:
            'https://api.dicebear.com/5.x/big-ears-neutral/png?seed=John Doe',
      ),
      const HomeData(
        title: 'Fayrouz',
        description: 'Big boy',
        image:
            'https://api.dicebear.com/5.x/big-ears-neutral/png?seed=John Doe',
      ),
    ];
  }
}
