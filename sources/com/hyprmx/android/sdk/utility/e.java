package com.hyprmx.android.sdk.utility;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements b {
    public e(com.hyprmx.android.sdk.core.js.a jsEngine) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        jsEngine.a(com.json.mediationsdk.logger.a.c, this);
    }

    @Override // com.hyprmx.android.sdk.utility.b
    @RetainMethodSignature
    public void debug(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        HyprMXLog.INSTANCE.longDebugLog("HyprMXCore", message);
    }

    @Override // com.hyprmx.android.sdk.utility.b
    @RetainMethodSignature
    public void error(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        HyprMXLog.e("HyprMXCore", message);
    }

    @Override // com.hyprmx.android.sdk.utility.b
    @RetainMethodSignature
    public void log(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        HyprMXLog.i("HyprMXCore", message);
    }

    @Override // com.hyprmx.android.sdk.utility.b
    @RetainMethodSignature
    public String messages() {
        return HyprMXLog.INSTANCE.getLoggedMessages$HyprMX_Mobile_Android_SDK_release();
    }

    @Override // com.hyprmx.android.sdk.utility.b
    @RetainMethodSignature
    public void warn(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        HyprMXLog.w("HyprMXCore", message);
    }
}
