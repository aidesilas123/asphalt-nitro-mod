package com.tapjoy.internal;

import android.graphics.Bitmap;
import java.net.URL;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class c2 implements m7 {
    public final v3 a;

    public c2(v3 v3Var) {
        this.a = v3Var;
    }

    @Override // com.tapjoy.internal.h0
    public final Object a(URL url) {
        x8 x8Var;
        Object obj;
        synchronized (this.a) {
            x8Var = (x8) this.a.a.get(url);
        }
        if (x8Var == null) {
            return null;
        }
        synchronized (x8Var) {
            obj = x8Var.b;
        }
        return obj;
    }

    @Override // com.tapjoy.internal.h0
    public final void a(URL url, Bitmap bitmap) {
        x8 x8Var;
        synchronized (this.a) {
            v3 v3Var = this.a;
            x8Var = (x8) v3Var.a.get(url);
            if (x8Var == null) {
                x8Var = new x8(url);
                v3Var.a.put(url, x8Var);
                int size = v3Var.a.size() - v3Var.b;
                if (size > 0) {
                    Iterator it = v3Var.a.entrySet().iterator();
                    while (size > 0 && it.hasNext()) {
                        size--;
                        it.next();
                        it.remove();
                    }
                }
            }
        }
        synchronized (x8Var) {
            x8Var.b = bitmap;
        }
    }
}
