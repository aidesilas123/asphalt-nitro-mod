package com.facebook.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: InternalSettings.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class InternalSettings {
    public static final InternalSettings INSTANCE = new InternalSettings();
    private static final String UNITY_PREFIX = "Unity.";
    private static volatile String customUserAgent;

    private InternalSettings() {
    }

    public static final String getCustomUserAgent() {
        return customUserAgent;
    }

    public static final boolean isUnityApp() {
        String str = customUserAgent;
        return Intrinsics.areEqual(str != null ? Boolean.valueOf(StringsKt__StringsJVMKt.startsWith$default(str, UNITY_PREFIX, false, 2, null)) : null, Boolean.TRUE);
    }

    public static /* synthetic */ void isUnityApp$annotations() {
    }

    public static final void setCustomUserAgent(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        customUserAgent = value;
    }
}
