package com.tapjoy.internal;

import com.tapjoy.TJSetCurrencyBalanceListener;

/* JADX INFO: loaded from: classes4.dex */
public class TJSetCurrencyBalanceListenerNative implements TJSetCurrencyBalanceListener {
    public final long a;

    public TJSetCurrencyBalanceListenerNative(long j) {
        if (j == 0) {
            throw new IllegalArgumentException();
        }
        this.a = j;
    }

    public static Object create(long j) {
        return new TJSetCurrencyBalanceListenerNative(j);
    }

    private static native void onSetCurrencyBalanceFailureNative(long j, int i, String str);

    private static native void onSetCurrencyBalanceSuccessNative(long j);

    @Override // com.tapjoy.TJSetCurrencyBalanceListener
    public final void onSetCurrencyBalanceFailure(int i, String str) {
        onSetCurrencyBalanceFailureNative(this.a, i, str);
    }

    @Override // com.tapjoy.TJSetCurrencyBalanceListener
    public final void onSetCurrencyBalanceSuccess() {
        onSetCurrencyBalanceSuccessNative(this.a);
    }
}
