package com.fyber.inneractive.sdk.network;

/* JADX INFO: loaded from: classes2.dex */
public class s0 extends Exception {
    public int a;

    public s0(int i, String str) {
        super(str);
        this.a = i;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return String.valueOf(this.a);
    }
}
