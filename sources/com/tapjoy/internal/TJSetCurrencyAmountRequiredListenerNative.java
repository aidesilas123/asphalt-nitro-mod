package com.tapjoy.internal;

import com.tapjoy.TJSetCurrencyAmountRequiredListener;

/* JADX INFO: loaded from: classes4.dex */
public class TJSetCurrencyAmountRequiredListenerNative implements TJSetCurrencyAmountRequiredListener {
    public final long a;

    public TJSetCurrencyAmountRequiredListenerNative(long j) {
        if (j == 0) {
            throw new IllegalArgumentException();
        }
        this.a = j;
    }

    public static Object create(long j) {
        return new TJSetCurrencyAmountRequiredListenerNative(j);
    }

    private static native void onSetCurrencyAmountRequiredFailureNative(long j, int i, String str);

    private static native void onSetCurrencyAmountRequiredSuccessNative(long j);

    @Override // com.tapjoy.TJSetCurrencyAmountRequiredListener
    public final void onSetCurrencyAmountRequiredFailure(int i, String str) {
        onSetCurrencyAmountRequiredFailureNative(this.a, i, str);
    }

    @Override // com.tapjoy.TJSetCurrencyAmountRequiredListener
    public final void onSetCurrencyAmountRequiredSuccess() {
        onSetCurrencyAmountRequiredSuccessNative(this.a);
    }
}
