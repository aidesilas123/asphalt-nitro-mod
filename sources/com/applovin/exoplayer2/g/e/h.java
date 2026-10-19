package com.applovin.exoplayer2.g.e;

import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.v;

/* JADX INFO: loaded from: classes.dex */
public abstract class h implements a.InterfaceC0038a {

    /* JADX INFO: renamed from: do, reason: not valid java name */
    public final String f1do;

    public h(String str) {
        this.f1do = str;
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ void F(ac.a aVar) {
        com.applovin.exoplayer2.g.h.a(this, aVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ v kE() {
        return com.applovin.exoplayer2.g.h.b(this);
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ byte[] kF() {
        return com.applovin.exoplayer2.g.h.c(this);
    }

    public String toString() {
        return this.f1do;
    }
}
