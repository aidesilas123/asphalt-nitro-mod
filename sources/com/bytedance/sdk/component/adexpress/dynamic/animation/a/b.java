package com.bytedance.sdk.component.adexpress.dynamic.animation.a;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AnimationSets.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements com.bytedance.sdk.component.adexpress.dynamic.dynamicview.e {
    List<d> a = new ArrayList();

    public b(View view, List<com.bytedance.sdk.component.adexpress.dynamic.b.a> list) {
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.b.a> it = list.iterator();
        while (it.hasNext()) {
            d dVarA = c.a().a(view, it.next());
            if (dVarA != null) {
                this.a.add(dVarA);
            }
        }
    }

    public void a() {
        Iterator<d> it = this.a.iterator();
        while (it.hasNext()) {
            try {
                it.next().c();
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.e
    public void b() {
        Iterator<d> it = this.a.iterator();
        while (it.hasNext()) {
            try {
                it.next().b();
            } catch (Exception unused) {
            }
        }
    }
}
