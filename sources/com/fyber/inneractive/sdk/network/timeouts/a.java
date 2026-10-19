package com.fyber.inneractive.sdk.network.timeouts;

import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public int a = 0;
    public int b = 0;
    public int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2126d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2127e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2128f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2129g = false;

    public int a() {
        int iMax;
        int i = this.c;
        int i2 = this.f2126d;
        if (i2 <= 0) {
            IAlog.e("%s Unable resolve retries because of invalid ILAT: %d, will set retries to 0", IAlog.a((Class<?>) com.fyber.inneractive.sdk.network.timeouts.content.a.class), Integer.valueOf(i2));
            iMax = 0;
        } else {
            int i3 = (i / i2) - 1;
            if (i3 > 3) {
                i3--;
            }
            iMax = Math.max(i3, 0);
        }
        int i4 = this.c;
        int i5 = this.f2126d;
        int i6 = this.f2127e;
        int i7 = this.f2128f;
        int iMax2 = Math.max(0, i4);
        int iMax3 = Math.max(0, i5);
        int iMax4 = Math.max(0, iMax);
        int iMax5 = Math.max(0, (iMax2 - (Math.max(0, i6) * iMax4)) - (Math.max(0, i7) * iMax4));
        int iMax6 = Math.max(0, iMax3);
        if (iMax4 > 0) {
            iMax5 %= iMax6;
        }
        int iMax7 = Math.max(iMax5, 0);
        if (iMax7 == 0 && iMax > 2) {
            iMax--;
            iMax7 = this.f2126d;
        }
        int i8 = iMax + 1;
        int iMax8 = Math.max(0, iMax7);
        if (i8 > 0) {
            iMax8 /= i8;
        }
        this.b = iMax8;
        return Math.max(0, a(this.c, this.f2126d, iMax8, 0) - 1);
    }

    public int a(int i, int i2, int i3, int i4) {
        int iMax = Math.max(0, i);
        if (i2 <= 0) {
            i2 = iMax;
        }
        int iMax2 = Math.max(0, i3);
        int iMax3 = Math.max(0, i4);
        int i5 = iMax3 + 1;
        int i6 = iMax - ((iMax3 * iMax2) + i2);
        return i6 < 0 ? Math.max(i5 - 1, 0) : i6 == 0 ? Math.max(i5, 0) : a(i6, i2, iMax2, i5);
    }

    public void a(boolean z) {
        this.f2129g = z;
    }
}
