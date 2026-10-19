package com.bytedance.sdk.component.d.c.a.b;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.d.q;

/* JADX INFO: compiled from: MemoryCacheWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class d implements q {
    private final q a;
    private final com.bytedance.sdk.component.d.c.a.b b;

    public d(q qVar) {
        this(qVar, null);
    }

    public d(q qVar, com.bytedance.sdk.component.d.c.a.b bVar) {
        this.a = qVar;
        this.b = bVar;
    }

    @Override // com.bytedance.sdk.component.d.a
    public Bitmap a(String str) {
        Bitmap bitmapA = this.a.a(str);
        com.bytedance.sdk.component.d.c.a.b bVar = this.b;
        if (bVar != null) {
            bVar.b(str, bitmapA);
        }
        return bitmapA;
    }

    @Override // com.bytedance.sdk.component.d.a
    public boolean a(String str, Bitmap bitmap) {
        boolean zA = this.a.a(str, bitmap);
        com.bytedance.sdk.component.d.c.a.b bVar = this.b;
        if (bVar != null) {
            bVar.a(str, Boolean.valueOf(zA));
        }
        return zA;
    }

    @Override // com.bytedance.sdk.component.d.a
    public boolean b(String str) {
        return this.a.b(str);
    }
}
