# android-studio-template

Custom templates for Android Studio.

## NewAndroidModule

This template extends the default behavior of creating a module in Android Studio and follows the [android-best-practices](https://github.com/futurice/android-best-practices).

### Install

On Mac,

```bash
git clone git@github.com:tmiyamon/android-studio-template.git
cd android-studio-template
mv '/Applications/Android Studio.app/Contents/plugins/android/lib/templates/gradle-projects/NewAndroidModule'{,_bak}
ln -s $(pwd)/gradle-projects/NewAndroidModule '/Applications/Android Studio.app/Contents/plugins/android/lib/templates/gradle-projects/NewAndroidModule'
```

then restart Android Studio if it's running.

### Enhancement

#### application module

- [Gradle Configuration](https://github.com/futurice/android-best-practices#gradle-configuration)
- [Libraries](https://github.com/futurice/android-best-practices#libraries)
- [Java Package Architecture](https://github.com/futurice/android-best-practices#java-packages-architecture)
- [Test frameworks](https://github.com/futurice/android-best-practices#test-frameworks)

#### library module

- [Libraries](https://github.com/futurice/android-best-practices#libraries)
- [Java Package Architecture](https://github.com/futurice/android-best-practices#java-packages-architecture)
- [Test frameworks](https://github.com/futurice/android-best-practices#test-frameworks)

## License

Futurice Oy Creative Commons Attribution 4.0 International (CC BY 4.0)
