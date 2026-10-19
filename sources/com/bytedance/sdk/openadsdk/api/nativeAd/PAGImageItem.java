package com.bytedance.sdk.openadsdk.api.nativeAd;

/* JADX INFO: loaded from: classes2.dex */
public class PAGImageItem {
    private final int a;
    private final int b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f1149d;

    public PAGImageItem(int i, int i2, String str) {
        this(i, i2, str, 0.0f);
    }

    public PAGImageItem(int i, int i2, String str, float f2) {
        this.f1149d = 0.0f;
        this.a = i;
        this.b = i2;
        this.c = str;
        this.f1149d = f2;
    }

    public float getDuration() {
        return this.f1149d;
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
}
