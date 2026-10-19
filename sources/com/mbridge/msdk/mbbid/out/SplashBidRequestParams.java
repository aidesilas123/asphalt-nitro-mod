package com.mbridge.msdk.mbbid.out;

import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.tools.w;

/* JADX INFO: loaded from: classes4.dex */
public class SplashBidRequestParams extends BannerBidRequestParams {
    private static int b = 1;
    private static int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f7302d;
    private boolean a;

    public SplashBidRequestParams(String str, String str2) {
        this(str, str2, "");
    }

    public SplashBidRequestParams(String str, String str2, String str3) {
        this(str, str2, str3, false, b, f7302d, c);
    }

    public SplashBidRequestParams(String str, String str2, String str3, boolean z, int i, int i2, int i3) {
        super(str, str2, str3, 0, 0);
        this.a = false;
        b = i;
        int iL = w.l(b.d().g());
        int iM = w.m(b.d().g());
        int i4 = b;
        if (i4 == 1) {
            if (iM > i3 * 4) {
                setHeight(iM - i3);
                setWidth(iL);
            } else {
                setHeight(0);
                setWidth(0);
            }
        } else if (i4 == 2) {
            if (iL > i2 * 4) {
                setWidth(iL - i2);
                setHeight(iM);
            } else {
                setHeight(0);
                setWidth(0);
            }
        }
        this.a = z;
    }

    public SplashBidRequestParams(String str, String str2, boolean z, int i, int i2, int i3) {
        this(str, str2, "", z, i, i3, i2);
    }

    protected final boolean a() {
        return this.a;
    }

    public int getOrientation() {
        return b;
    }
}
