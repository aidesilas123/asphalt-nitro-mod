package com.applovin.exoplayer2.g.g;

import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.g.h;
import com.applovin.exoplayer2.v;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements a.InterfaceC0038a {
    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ void F(ac.a aVar) {
        h.a(this, aVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ v kE() {
        return h.b(this);
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ byte[] kF() {
        return h.c(this);
    }

    public String toString() {
        return "SCTE-35 splice command: type=" + getClass().getSimpleName();
    }
}
