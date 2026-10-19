package com.bytedance.sdk.openadsdk.component.reward;

import com.bytedance.sdk.openadsdk.utils.aa;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: ContinueDownloadTask.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends com.bytedance.sdk.component.g.h {
    private final List<? extends com.bytedance.sdk.component.g.h> a;

    public b(String str, List<? extends com.bytedance.sdk.component.g.h> list) {
        super(str);
        this.a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        List<? extends com.bytedance.sdk.component.g.h> list;
        if (com.bytedance.sdk.component.utils.o.c(com.bytedance.sdk.openadsdk.core.o.a()) != 0 && (list = this.a) != null) {
            Iterator<? extends com.bytedance.sdk.component.g.h> it = list.iterator();
            while (it.hasNext()) {
                aa.a(it.next(), 1);
                it.remove();
            }
        }
        try {
            com.bytedance.sdk.component.utils.h.a().removeCallbacks(this);
        } catch (Exception unused) {
        }
    }
}
