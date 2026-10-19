package com.mbridge.msdk.e;

import android.util.Log;

/* JADX INFO: compiled from: ProcessorWrapper.java */
/* JADX INFO: loaded from: classes4.dex */
final class p implements l {
    private final g a;

    public p(g gVar) {
        this.a = gVar;
    }

    @Override // com.mbridge.msdk.e.l
    public final void a(e eVar) {
        if (y.a(this.a)) {
            return;
        }
        this.a.a(eVar);
    }

    @Override // com.mbridge.msdk.e.l
    public final long[] a() {
        return y.a(this.a) ? new long[]{0, 0} : this.a.a();
    }

    @Override // com.mbridge.msdk.e.l
    public final void b(e eVar) {
        if (y.a(this.a)) {
            return;
        }
        try {
            h hVarI = eVar.i();
            if (y.b(hVarI)) {
                eVar.a(hVarI.a(eVar));
            }
            this.a.b(eVar);
        } catch (Exception e2) {
            if (a.a) {
                Log.e("TrackManager", "process event error", e2);
            }
        }
    }
}
