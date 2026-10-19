package com.fyber.inneractive.sdk.mraid;

/* JADX INFO: loaded from: classes2.dex */
public class v extends u {
    public final int a;
    public final int b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2100d;

    public v(int i, int i2, int i3, int i4) {
        this.a = i3;
        this.b = i4;
        this.f2100d = i2;
        this.c = i;
    }

    @Override // com.fyber.inneractive.sdk.mraid.u
    public String a() {
        return "currentPosition: { x: " + this.c + ", y: " + this.f2100d + ", width: " + this.a + ", height: " + this.b + " }";
    }
}
