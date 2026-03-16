# Week 9A Starter Code

This is the starter code for the Week 9A in-class demo (CachedNetworkImage, SharedPreferences, URL Launcher).

## Setup Instructions

1. Create a new Flutter project in VS Code (use the empty application template)
2. Replace the contents of `lib/main.dart` with the `main.dart` file from this repo
3. Run the following commands in the terminal to install packages as we need them:
   - `flutter pub add cached_network_image` (Part 1)
   - `flutter pub add shared_preferences` (Part 2)
   - `flutter pub add url_launcher` (Part 3)
4. Run the app on your emulator

## What's Included

The starter code has:
- Basic app structure with StatefulWidget already set up
- A large test image URL (2MB image for demonstrating caching benefit)
- Two TextEditingControllers ready for the SharedPreferences demo
- A regular `Image.network` and a `Container` with `BoxDecoration` already built (uncached versions)
- Commented steps for each part of the demo

## In Class

We'll be building three things:

**Part 1 - CachedNetworkImage:**
- Adding cached versions of the images already on screen
- Comparing load times between cached and uncached
- Using `CachedNetworkImageProvider` in Container decorations

**Part 2 - SharedPreferences:**
- Saving and loading text field data (key-value storage)
- Persisting data across app sessions
- Loading saved data on app startup (important for Project 2!)

**Part 3 - URL Launcher:**
- Opening URLs in an in-app browser
- Android manifest setup for permissions
- Different launch modes (inAppWebView, externalApplication, etc.)

## Android Manifest Fix (Required for URL Launcher)

Before Part 3 will work, you need to edit `android/app/src/main/AndroidManifest.xml` - see the class notes for the specific changes.

## Participation Credit

To get GitHub Classroom participation credit, you can either:
- Commit just your updated `main.dart` file, OR
- Add your entire Flutter project folder

Both options work!
