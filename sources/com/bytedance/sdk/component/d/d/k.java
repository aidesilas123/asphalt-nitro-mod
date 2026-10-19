package com.bytedance.sdk.component.d.d;

/* JADX INFO: compiled from: NetVisitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class k extends a {
    private void a(int i, String str, Throwable th, com.bytedance.sdk.component.d.c.c cVar) {
        cVar.a(new h(i, str, th));
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public String a() {
        return "net_request";
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public void a(final com.bytedance.sdk.component.d.c.c cVar) {
        final com.bytedance.sdk.component.d.c.f fVarS = cVar.s();
        com.bytedance.sdk.component.d.d dVarD = fVarS.d();
        cVar.a(false);
        try {
            com.bytedance.sdk.component.d.f fVarA = dVarD.a(new com.bytedance.sdk.component.d.b.c(cVar.a(), cVar.m(), cVar.n()));
            int iB = fVarA.b();
            cVar.a(fVarA.a());
            if (fVarA.b() != 200) {
                fVarS.h().a(String.valueOf(fVarA));
                Object objC = fVarA.c();
                a(iB, fVarA.d(), objC instanceof Throwable ? (Throwable) objC : null, cVar);
                return;
            }
            final byte[] bArr = (byte[]) fVarA.c();
            cVar.a(new b(bArr, fVarA));
            final String strJ = cVar.j();
            final com.bytedance.sdk.component.d.b bVarT = cVar.t();
            if (bVarT.c()) {
                fVarS.b(cVar.t()).a(strJ, bArr);
            }
            fVarS.f().submit(new Runnable() { // from class: com.bytedance.sdk.component.d.d.k.1
                @Override // java.lang.Runnable
                public void run() {
                    if (bVarT.d()) {
                        fVarS.c(cVar.t()).a(strJ, bArr);
                    }
                }
            });
        } catch (Throwable th) {
            a(1004, "net request failed!", th, cVar);
        }
    }
}
