package com.unity3d.scar.adapter.common.l;

/* JADX INFO: compiled from: SignalCallbackListener.java */
/* JADX INFO: loaded from: classes4.dex */
public class d<T> implements a<T> {
    private com.unity3d.scar.adapter.common.a a;
    private g<T> b;
    private f c;

    public d(com.unity3d.scar.adapter.common.a aVar, f fVar) {
        this(aVar, null, fVar);
    }

    public d(com.unity3d.scar.adapter.common.a aVar, g<T> gVar, f fVar) {
        this.a = aVar;
        this.b = gVar;
        this.c = fVar;
    }

    @Override // com.unity3d.scar.adapter.common.l.a
    public void a(String str, String str2, T t) {
        this.c.a(str, str2);
        g<T> gVar = this.b;
        if (gVar != null) {
            gVar.b(str, t);
        }
        this.a.b();
    }

    @Override // com.unity3d.scar.adapter.common.l.a
    public void onFailure(String str) {
        this.c.d(str);
        this.a.b();
    }
}
