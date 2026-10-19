package com.mbridge.msdk.e;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: EventProcessor.java */
/* JADX INFO: loaded from: classes4.dex */
final class g implements l {
    private final c a;
    private final r b;
    private final j c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicLong f6970d = new AtomicLong(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long[] f6971e = new long[2];

    public g(c cVar, r rVar, j jVar) {
        this.a = cVar;
        this.b = rVar;
        this.c = jVar;
    }

    @Override // com.mbridge.msdk.e.l
    public final void a(e eVar) {
        long jIncrementAndGet = this.f6970d.incrementAndGet();
        this.f6971e[0] = System.currentTimeMillis();
        this.f6971e[1] = jIncrementAndGet;
    }

    @Override // com.mbridge.msdk.e.l
    public final long[] a() {
        long[] jArr = this.f6971e;
        return jArr.length == 0 ? new long[]{0, 0} : jArr;
    }

    @Override // com.mbridge.msdk.e.l
    public final void b(final e eVar) {
        this.c.b(new Runnable() { // from class: com.mbridge.msdk.e.g.1
            @Override // java.lang.Runnable
            public final void run() {
                i iVar = new i(eVar);
                iVar.a(1);
                iVar.b(0);
                iVar.a(System.currentTimeMillis() + eVar.h());
                g.this.b.c();
                if (g.this.a.a(iVar) > 0) {
                    g.this.b.a(eVar);
                }
            }
        });
    }
}
