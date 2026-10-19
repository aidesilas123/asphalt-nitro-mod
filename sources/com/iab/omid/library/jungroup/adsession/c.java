package com.iab.omid.library.jungroup.adsession;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public final i a;
    public final i b;
    public final boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f f4942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final h f4943e;

    public c(f fVar, h hVar, i iVar, i iVar2) {
        this.f4942d = fVar;
        this.f4943e = hVar;
        this.a = iVar;
        this.b = iVar2;
    }

    public static c a(f fVar, h hVar, i iVar, i iVar2) {
        if (iVar == i.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        }
        if (fVar == f.DEFINED_BY_JAVASCRIPT && iVar == i.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        if (hVar == h.DEFINED_BY_JAVASCRIPT && iVar == i.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        return new c(fVar, hVar, iVar, iVar2);
    }
}
