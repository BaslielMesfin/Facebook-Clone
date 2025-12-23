import 'package:flutter/material.dart';

class FacebookHomePage extends StatelessWidget {
  const FacebookHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'facebook',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.messenger_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(height: 1, thickness: 0.5),

            // Top Tab Bar Section
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.home, color: Colors.blue, size: 30),
                  const Icon(
                    Icons.ondemand_video,
                    color: Colors.grey,
                    size: 30,
                  ),
                  const Icon(
                    Icons.people_outline,
                    color: Colors.grey,
                    size: 30,
                  ),
                  const Icon(
                    Icons.storefront_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                  const Icon(
                    Icons.notifications_none,
                    color: Colors.grey,
                    size: 30,
                  ),
                  const Icon(Icons.menu, color: Colors.grey, size: 30),
                ],
              ),
            ),

            const Divider(height: 1, thickness: 0.5),

            // What's on your mind? Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CircleAvatar(radius: 20, backgroundColor: Colors.grey),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        "What's on your mind?",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Divider(height: 10, thickness: 10, color: Color(0xFFEFEFEF)),

            // Stories Section
            Container(
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  // Create Story Card
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.person,
                                size: 50,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10),
                            ),
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add_circle, color: Colors.blue),
                                SizedBox(width: 4),
                                Text('Create story'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),

                  // Music Story Placeholder
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.green.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.music_note, color: Colors.white, size: 40),
                          SizedBox(height: 4),
                          Text('Music', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Divider(height: 10, thickness: 10, color: Color(0xFFEFEFEF)),

            // Single Post Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Post Header
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10.0,
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      const SizedBox(width: 8),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'BaslielMesfin',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.check_circle,
                                size: 14,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 4),
                              Text(
                                '• Follow',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '1d',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.more_horiz, color: Colors.grey),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.grey),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                // Post Text
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text('This is my post '),
                ),

                // Post Image (using a simple placeholder)
                Container(
                  height: 400,
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Text(
                      'Placeholder Image',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ),

                // Post Action Bar (Like, Comment, Share)
                const Divider(height: 1, thickness: 0.5),
                SizedBox(
                  height: 40,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined, size: 18),
                          SizedBox(width: 4),
                          Text('Like'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.mode_comment_outlined, size: 18),
                          SizedBox(width: 4),
                          Text('Comment'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.share_outlined, size: 18),
                          SizedBox(width: 4),
                          Text('Share'),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1, thickness: 0.5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
