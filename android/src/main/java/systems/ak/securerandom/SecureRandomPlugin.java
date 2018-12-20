package systems.ak.securerandom;

import java.security.SecureRandom;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

public class SecureRandomPlugin implements MethodCallHandler {

  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "securerandom");
    channel.setMethodCallHandler(new SecureRandomPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    switch (call.method) {
      case "generate":
        generate(call, result);
        break;
      default:
        result.notImplemented();
        break;
    }
  }

  private void generate(final MethodCall call, final Result result) {
    final int numBytes = call.argument("numBytes");
    SecureRandom random = new SecureRandom();
    final byte[] bytes = random.generateSeed(numBytes);
    result.success(bytes);
  }

}
