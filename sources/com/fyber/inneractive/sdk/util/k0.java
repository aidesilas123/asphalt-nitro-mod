package com.fyber.inneractive.sdk.util;

/* JADX INFO: loaded from: classes2.dex */
public class k0 {
    public float a;
    public float b;
    public boolean c = false;

    public k0(float f2, float f3) {
        this.a = f2;
        this.b = f3;
    }

    public static k0 a() {
        return new k0(-1.0f, -1.0f);
    }

    public String toString() {
        return "PointLocation{x=" + this.a + ", y=" + this.b + '}';
    }
}
