package com.fyber.inneractive.sdk.mraid;

/* JADX INFO: loaded from: classes2.dex */
public class w extends u {
    public final int a;
    public final int b;

    public w(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // com.fyber.inneractive.sdk.mraid.u
    public String a() {
        return "maxSize: { width: " + this.a + ", height: " + this.b + " }";
    }
}
