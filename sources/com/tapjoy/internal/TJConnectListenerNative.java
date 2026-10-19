package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public class TJConnectListenerNative extends com.tapjoy.n {
    public final long a;

    public TJConnectListenerNative(long j) {
        if (j == 0) {
            throw new IllegalArgumentException();
        }
        this.a = j;
    }

    public static Object create(long j) {
        return new TJConnectListenerNative(j);
    }

    private static native void onConnectFailureNative(long j, int i, String str);

    private static native void onConnectSuccessNative(long j);

    @Override // com.tapjoy.n, com.tapjoy.TJConnectInterface
    public final void onConnectFailure(int i, String str) {
        onConnectFailureNative(this.a, i, str);
    }

    @Override // com.tapjoy.n, com.tapjoy.TJConnectInterface
    public final void onConnectSuccess() {
        onConnectSuccessNative(this.a);
    }
}
