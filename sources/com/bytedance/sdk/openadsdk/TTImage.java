package com.bytedance.sdk.openadsdk;

/* JADX INFO: loaded from: classes2.dex */
public class TTImage {
    private final int a;
    private final int b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f1108d;

    public TTImage(int i, int i2, String str) {
        this(i, i2, str, 0.0d);
    }

    public TTImage(int i, int i2, String str, double d2) {
        this.f1108d = 0.0d;
        this.a = i;
        this.b = i2;
        this.c = str;
        this.f1108d = d2;
    }

    public double getDuration() {
        return this.f1108d;
    }

    public int getHeight() {
        return this.a;
    }

    public String getImageUrl() {
        return this.c;
    }

    public int getWidth() {
        return this.b;
    }

    public boolean isValid() {
        String str;
        return this.a > 0 && this.b > 0 && (str = this.c) != null && str.length() > 0;
    }
}
