package com.bytedance.sdk.component.d.c;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.d.c.c;
import com.bytedance.sdk.component.d.j;
import com.bytedance.sdk.component.d.m;
import com.bytedance.sdk.component.d.n;
import com.bytedance.sdk.component.d.r;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: ImageLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements n {
    private volatile f a;

    private b() {
    }

    public static n a(Context context, m mVar) {
        b bVar = new b();
        bVar.b(context, mVar);
        return bVar;
    }

    private void b(Context context, m mVar) {
        if (this.a != null) {
            Log.w("ImageLoader", "already init!");
        }
        if (mVar == null) {
            mVar = e.a(context);
        }
        this.a = new f(context, mVar);
    }

    @Override // com.bytedance.sdk.component.d.n
    public j a(String str) {
        return new c.b(this.a).c(str);
    }

    @Override // com.bytedance.sdk.component.d.n
    public InputStream a(String str, String str2) {
        if (this.a != null) {
            if (TextUtils.isEmpty(str2)) {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                str2 = com.bytedance.sdk.component.d.c.c.c.a(str);
            }
            Collection<r> collectionB = this.a.b();
            if (collectionB != null) {
                Iterator<r> it = collectionB.iterator();
                while (it.hasNext()) {
                    byte[] bArrA = it.next().a(str2);
                    if (bArrA != null) {
                        return new ByteArrayInputStream(bArrA);
                    }
                }
            }
            Collection<com.bytedance.sdk.component.d.c> collectionC = this.a.c();
            if (collectionC != null) {
                Iterator<com.bytedance.sdk.component.d.c> it2 = collectionC.iterator();
                while (it2.hasNext()) {
                    InputStream inputStreamA = it2.next().a(str2);
                    if (inputStreamA != null) {
                        return inputStreamA;
                    }
                }
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.d.n
    public boolean a(String str, String str2, String str3) {
        if (this.a == null || TextUtils.isEmpty(str3)) {
            return false;
        }
        if (TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            str2 = com.bytedance.sdk.component.d.c.c.c.a(str);
        }
        com.bytedance.sdk.component.d.c cVarA = this.a.a(str3);
        if (cVarA != null) {
            return cVarA.b(str2);
        }
        return false;
    }
}
