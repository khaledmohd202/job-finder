class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> desc;

  Job({
    required this.company,
    required this.logoUrl,
    required this.isMark,
    required this.title,
    required this.location,
    required this.time,
    required this.desc,
  });

  static List<Job> generateJobs() {
    return [
      Job(
        company: 'Google LLC',
        logoUrl: 'assets/images/google_logo.png',
        isMark: false,
        title: 'Principle product Design',
        location: '417 Marion, New York\nUnited States',
        time: 'Full Time',
        desc: [
          'Creative with eye for shape and color',
          'Understand different materials and production methods',
          'How technical, practical and scientific knowledge ',
          'Interested in the way people choose and use products',
        ],
      ),
      Job(
        company: 'Google LLC',
        logoUrl: 'assets/images/linkedin_logo.png',
        isMark: true,
        title: 'Principle product Design',
        location: '50 Herminia Stravenue,\nCanada',
        time: 'Part Time',
        desc: [
          'Creative with eye for shape and color',
          'Understand different materials and production methods',
          'How technical, practical and scientific knowledge ',
          'Interested in the way people choose and use products',
        ],
      ),
      Job(
        company: 'Google LLC',
        logoUrl: 'assets/images/google_logo.png',
        isMark: false,
        title: 'Principle product Design',
        location: '417 Marion, New York\nUnited States',
        time: 'Remotely',
        desc: [
          'Creative with eye for shape and color',
          'Understand different materials and production methods',
          'How technical, practical and scientific knowledge ',
          'Interested in the way people choose and use products',
        ],
      ),
      Job(
        company: 'Google LLC',
        logoUrl: 'assets/images/linkedin_logo.png',
        isMark: true,
        title: 'Principle product Design',
        location: '417 Marion, New York\nUnited States',
        time: 'Hybrid',
        desc: [
          'Creative with eye for shape and color',
          'Understand different materials and production methods',
          'How technical, practical and scientific knowledge ',
          'Interested in the way people choose and use products',
        ],
      ),
      Job(
        company: 'Google LLC',
        logoUrl: 'assets/images/google_logo.png',
        isMark: false,
        title: 'Principle product Design',
        location: '417 Marion, New York\nUnited States',
        time: 'Full Time',
        desc: [
          'Creative with eye for shape and color',
          'Understand different materials and production methods',
          'How technical, practical and scientific knowledge ',
          'Interested in the way people choose and use products',
        ],
      ),
      Job(
        company: 'Google LLC',
        logoUrl: 'assets/images/linkedin_logo.png',
        isMark: true,
        title: 'Principle product Design',
        location: '417 Marion, New York\nUnited States',
        time: 'Full Time',
        desc: [
          'Creative with eye for shape and color',
          'Understand different materials and production methods',
          'How technical, practical and scientific knowledge ',
          'Interested in the way people choose and use products',
        ],
      ),
    ];
  }
}
