package com.tapjoy.internal;

import com.tapjoy.TJGetCurrencyBalanceListener;

/* JADX INFO: loaded from: classes4.dex */
public class TJGetCurrencyBalanceListenerNative implements TJGetCurrencyBalanceListener {
    public final long a;

    public TJGetCurrencyBalanceListenerNative(long j) {
        if (j == 0) {
            throw new IllegalArgumentException();
        }
        this.a = j;
    }

    public static Object create(long j) {
        return new TJGetCurrencyBalanceListenerNative(j);
    }

    private static native void onGetCurrencyBalanceResponseFailureNative(long j, String str);

    private static native void onGetCurrencyBalanceResponseNative(long j, String str, int i);

    @Override // com.tapjoy.TJGetCurrencyBalanceListener
    public final void onGetCurrencyBalanceResponse(String str, int i) {
        onGetCurrencyBalanceResponseNative(this.a, str, i);
    }

    @Override // com.tapjoy.TJGetCurrencyBalanceListener
    public final void onGetCurrencyBalanceResponseFailure(String str) {
        onGetCurrencyBalanceResponseFailureNative(this.a, str);
    }
}
