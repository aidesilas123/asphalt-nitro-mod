package com.bytedance.sdk.openadsdk.b.a;

import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.r;

/* JADX INFO: compiled from: StatsLogAdLogImpl.java */
/* JADX INFO: loaded from: classes2.dex */
class l implements com.bytedance.sdk.openadsdk.j.c.a {
    public static final l a = new l();

    private l() {
    }

    private void a(com.bytedance.sdk.component.g.h hVar) {
        if (hVar == null) {
            return;
        }
        if (aa.f()) {
            hVar.run();
        } else {
            aa.b(hVar, 5);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.j.c.a
    public void a() {
    }

    @Override // com.bytedance.sdk.openadsdk.j.c.a
    public void a(com.bytedance.sdk.openadsdk.j.a aVar) {
        a(aVar, false);
    }

    @Override // com.bytedance.sdk.openadsdk.j.c.a
    public void a(final com.bytedance.sdk.openadsdk.j.a aVar, final boolean z) {
        a(new com.bytedance.sdk.component.g.h("uploadLogEvent") { // from class: com.bytedance.sdk.openadsdk.b.a.l.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.bytedance.sdk.openadsdk.j.a.a logStats = aVar.getLogStats();
                    if (logStats == null) {
                        return;
                    }
                    com.bytedance.sdk.component.e.a.d.a.a aVar2 = new com.bytedance.sdk.component.e.a.d.a.a(r.a(), logStats.a());
                    aVar2.c((byte) 0);
                    aVar2.b(z ? (byte) 2 : (byte) 3);
                    aVar2.a((byte) 1);
                    if (com.bytedance.sdk.component.e.a.b.b()) {
                        d.a(o.a(), com.bytedance.sdk.openadsdk.multipro.b.c());
                    }
                    com.bytedance.sdk.component.e.a.b.a(aVar2);
                } catch (Throwable unused) {
                }
            }
        });
    }
}
