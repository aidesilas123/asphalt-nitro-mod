package com.mbridge.msdk.e.a;

import android.util.Log;

/* JADX INFO: compiled from: DefaultRetryPolicy.java */
/* JADX INFO: loaded from: classes4.dex */
public final class e implements r {
    private int a;
    private int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f6947d;

    public e() {
        this(2500, 1, 1.0f);
    }

    public e(int i, int i2, float f2) {
        this.a = i;
        this.c = i2;
        this.f6947d = f2;
    }

    @Override // com.mbridge.msdk.e.a.r
    public final int a() {
        return this.a;
    }

    @Override // com.mbridge.msdk.e.a.r
    public final void a(u uVar) throws u {
        Log.d("DefaultRetryPolicy", "============= retry: " + uVar);
        int i = this.b + 1;
        this.b = i;
        int i2 = this.a;
        this.a = i2 + ((int) (i2 * this.f6947d));
        if (!(i <= this.c)) {
            throw uVar;
        }
    }

    @Override // com.mbridge.msdk.e.a.r
    public final int b() {
        return this.b;
    }
}
