package com.fyber.inneractive.sdk.flow.vast;

import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public final UnitDisplayType a;
    public final boolean b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b0 f2036e;

    public b(UnitDisplayType unitDisplayType, boolean z, int i, int i2, b0 b0Var) {
        this.a = unitDisplayType;
        this.b = z;
        this.c = i;
        this.f2035d = i2;
        this.f2036e = b0Var;
    }

    public int a() {
        return this.f2035d;
    }

    public b0 b() {
        return this.f2036e;
    }

    public UnitDisplayType c() {
        return this.a;
    }

    public int d() {
        return this.c;
    }

    public boolean e() {
        return this.b;
    }
}
