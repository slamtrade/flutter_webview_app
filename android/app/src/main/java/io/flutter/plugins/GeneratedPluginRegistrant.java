package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import com.flutter_webview_plugin.FlutterWebviewPlugin;
import com.example.systemshortcuts.SystemShortcutsPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    FlutterWebviewPlugin.registerWith(registry.registrarFor("com.flutter_webview_plugin.FlutterWebviewPlugin"));
    SystemShortcutsPlugin.registerWith(registry.registrarFor("com.example.systemshortcuts.SystemShortcutsPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
