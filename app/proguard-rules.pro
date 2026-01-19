# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# ============= Tencent TBS X5 SDK ProGuard Rules =============
# Keep Tencent SDK classes
-keep class com.tencent.smtt.** { *; }
-keep class com.tencent.tbs.** { *; }

# Suppress warnings for internal SDK classes
-dontwarn dalvik.**
-dontwarn com.tencent.smtt.**
-dontwarn com.tencent.tbs.**

# Keep MTT classes (used internally by X5)
-keep class MTT.ThirdAppInfoNew { *; }
-keep class com.tencent.mtt.** { *; }

# Additional rules for X5 internals
-dontwarn org.chromium.**
-keep class org.chromium.** { *; }