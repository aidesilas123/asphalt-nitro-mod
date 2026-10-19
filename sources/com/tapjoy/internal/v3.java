package com.tapjoy.internal;

import android.graphics.Bitmap;
import java.net.URL;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class v3 implements h0 {
    public final LinkedHashMap a = new LinkedHashMap(0, 0.75f, true);
    public final int b = 10;

    @Override // com.tapjoy.internal.h0
    public final Object a(URL url) {
        x8 x8Var = (x8) this.a.get(url);
        if (x8Var != null) {
            return x8Var.b;
        }
        return null;
    }

    @Override // com.tapjoy.internal.h0
    public final void a(URL url, Bitmap bitmap) {
        x8 x8Var = (x8) this.a.get(url);
        if (x8Var == null) {
            x8Var = new x8(url);
            this.a.put(url, x8Var);
            int size = this.a.size() - this.b;
            if (size > 0) {
                Iterator it = this.a.entrySet().iterator();
                while (size > 0 && it.hasNext()) {
                    size--;
                    it.next();
                    it.remove();
                }
            }
        }
        x8Var.b = bitmap;
        int size2 = this.a.size() - this.b;
        if (size2 > 0) {
            Iterator it2 = this.a.entrySet().iterator();
            while (size2 > 0 && it2.hasNext()) {
                size2--;
                it2.next();
                it2.remove();
            }
        }
    }
}
