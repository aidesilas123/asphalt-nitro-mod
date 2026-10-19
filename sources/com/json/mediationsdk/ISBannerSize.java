package com.json.mediationsdk;

import com.gameloft.adsmanager.JavaUtils;

/* JADX INFO: loaded from: classes4.dex */
public class ISBannerSize {
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6223d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6224e;
    public static final ISBannerSize BANNER = l.a(l.a, JavaUtils.Constants.BANNER_WIDTH_DP, 50);
    public static final ISBannerSize LARGE = l.a(l.b, JavaUtils.Constants.BANNER_WIDTH_DP, 90);
    public static final ISBannerSize RECTANGLE = l.a(l.c, JavaUtils.Constants.NATIVE_HEIGHT_DP_300, 250);
    protected static final ISBannerSize a = l.a();
    public static final ISBannerSize SMART = l.a(l.f6336e, 0, 0);

    public ISBannerSize(int i, int i2) {
        this("CUSTOM", i, i2);
    }

    public ISBannerSize(String str, int i, int i2) {
        this.f6223d = str;
        this.b = i;
        this.c = i2;
    }

    public String getDescription() {
        return this.f6223d;
    }

    public int getHeight() {
        return this.c;
    }

    public int getWidth() {
        return this.b;
    }

    public boolean isAdaptive() {
        return this.f6224e;
    }

    public boolean isSmart() {
        return this.f6223d.equals(l.f6336e);
    }

    public void setAdaptive(boolean z) {
        this.f6224e = z;
    }
}
