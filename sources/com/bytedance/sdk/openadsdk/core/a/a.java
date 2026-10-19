package com.bytedance.sdk.openadsdk.core.a;

import com.bytedance.sdk.openadsdk.core.model.b;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.utils.aa;

/* JADX INFO: compiled from: AdCallBackAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements p.a {
    private final p.a a;

    public a(p.a aVar) {
        this.a = aVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.a
    public void a(final int i, final String str) {
        if (this.a != null) {
            if (aa.e()) {
                this.a.a(i, str);
            } else {
                aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.a.a(i, str);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.a
    public void a(final com.bytedance.sdk.openadsdk.core.model.a aVar, final b bVar) {
        if (this.a != null) {
            if (aa.e()) {
                this.a.a(aVar, bVar);
            } else {
                aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.a.a(aVar, bVar);
                    }
                });
            }
        }
    }
}
