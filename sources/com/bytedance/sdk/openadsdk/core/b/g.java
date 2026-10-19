package com.bytedance.sdk.openadsdk.core.b;

import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.utils.i;

/* JADX INFO: compiled from: VastClickListenerWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class g extends c {
    private final String a;
    private final com.bytedance.sdk.openadsdk.core.g.a b;
    private c c;

    public g(String str, com.bytedance.sdk.openadsdk.core.g.a aVar) {
        this(str, aVar, null);
    }

    public g(String str, com.bytedance.sdk.openadsdk.core.g.a aVar, c cVar) {
        this.a = str;
        this.b = aVar;
        this.c = cVar;
    }

    public abstract void a();

    @Override // com.bytedance.sdk.openadsdk.core.b.c
    protected void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
        com.bytedance.sdk.openadsdk.core.g.a aVar = this.b;
        if (aVar != null) {
            aVar.e(this.a);
        }
        if (view != null) {
            if (view.getId() == i.c) {
                view.setTag(570425345, "VAST_TITLE");
            } else if (view.getId() == i.f1874g) {
                view.setTag(570425345, "VAST_DESCRIPTION");
            } else {
                view.setTag(570425345, this.a);
            }
        }
        c cVar = this.c;
        if (cVar != null) {
            cVar.x = this.x;
            cVar.y = this.y;
            cVar.z = this.z;
            int i = this.z;
            cVar.A = i;
            cVar.B = i;
            cVar.a(view, f2, f3, f4, f5, sparseArray, z);
        }
        a();
    }

    public void a(c cVar) {
        this.c = cVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.c, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return super.onTouch(view, motionEvent);
    }
}
