package com.hyprmx.android.sdk.powersavemode;

import android.content.Context;
import android.os.PowerManager;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static final DefaultPowerSaveModeListener a(Context context, PowerManager powerManager, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(powerManager, "powerManager");
        Intrinsics.checkNotNullParameter(scope, "scope");
        return new DefaultPowerSaveModeListener(context, powerManager, scope);
    }
}
