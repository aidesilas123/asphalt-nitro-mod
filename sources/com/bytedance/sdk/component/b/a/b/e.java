package com.bytedance.sdk.component.b.a.b;

/* JADX INFO: compiled from: Segment.java */
/* JADX INFO: loaded from: classes2.dex */
final class e {
    final byte[] a;
    int b;
    int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f898d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f899e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    e f900f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    e f901g;

    e() {
        this.a = new byte[8192];
        this.f899e = true;
        this.f898d = false;
    }

    e(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.f898d = z;
        this.f899e = z2;
    }

    final e a() {
        this.f898d = true;
        return new e(this.a, this.b, this.c, true, false);
    }

    public final e a(e eVar) {
        eVar.f901g = this;
        eVar.f900f = this.f900f;
        this.f900f.f901g = eVar;
        this.f900f = eVar;
        return eVar;
    }

    public final e b() {
        e eVar = this.f900f;
        e eVar2 = eVar != this ? eVar : null;
        e eVar3 = this.f901g;
        if (eVar3 != null) {
            eVar3.f900f = eVar;
        }
        e eVar4 = this.f900f;
        if (eVar4 != null) {
            eVar4.f901g = eVar3;
        }
        this.f900f = null;
        this.f901g = null;
        return eVar2;
    }
}
