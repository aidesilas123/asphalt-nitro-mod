package com.bytedance.sdk.openadsdk.j.b;

import com.bytedance.sdk.component.g.c;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.j.b;

/* JADX INFO: compiled from: ReportThreadLogServiceImp.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements c {
    @Override // com.bytedance.sdk.component.g.c
    public void a(final com.bytedance.sdk.component.g.b.a aVar) {
        b.a();
        b.a("stats_sdk_thread_num", false, new com.bytedance.sdk.openadsdk.j.a() { // from class: com.bytedance.sdk.openadsdk.j.b.a.1
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                com.bytedance.sdk.component.g.b.a aVar2;
                if (!o.d().W() || (aVar2 = aVar) == null || aVar2.a() == null) {
                    return null;
                }
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("stats_sdk_thread_num").b(aVar.a().toString());
            }
        });
    }
}
