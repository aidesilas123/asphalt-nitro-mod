package com.tapjoy.internal;

import com.tapjoy.TJSetUserIDListener;

/* JADX INFO: loaded from: classes4.dex */
public class TJSetUserIDListenerNative implements TJSetUserIDListener {
    public final long a;

    public TJSetUserIDListenerNative(long j) {
        if (j == 0) {
            throw new IllegalArgumentException();
        }
        this.a = j;
    }

    public static Object create(long j) {
        return new TJSetUserIDListenerNative(j);
    }

    private static native void onSetUserIDFailureNative(long j, String str);

    private static native void onSetUserIDSuccessNative(long j);

    @Override // com.tapjoy.TJSetUserIDListener
    public final void onSetUserIDFailure(String str) {
        onSetUserIDFailureNative(this.a, str);
    }

    @Override // com.tapjoy.TJSetUserIDListener
    public final void onSetUserIDSuccess() {
        onSetUserIDSuccessNative(this.a);
    }
}
