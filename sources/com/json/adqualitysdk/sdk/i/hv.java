package com.json.adqualitysdk.sdk.i;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class hv<T> {
    private hu a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5741d;
    private hm b = new hm();
    private Set<Object> c = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Set<T> f5742e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Set<hp> f5743f = new HashSet();

    public hv(hu huVar) {
        this.a = huVar;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final Set<hp> m808() {
        return this.f5743f;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final Set<T> m809() {
        return this.f5742e;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final hm m810() {
        return this.b;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m811() {
        return this.f5741d;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Set<Object> m812() {
        return this.c;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final hu m813() {
        return this.a;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m814(hp hpVar) {
        this.f5743f.add(hpVar);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m815(T t) {
        this.f5742e.add(t);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final hv m816() {
        this.f5741d = true;
        return this;
    }
}
