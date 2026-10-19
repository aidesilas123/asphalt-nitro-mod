package com.bytedance.sdk.openadsdk.multipro.aidl.a;

import android.content.ContentValues;
import android.net.Uri;
import com.bytedance.sdk.component.e.a.g;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.settings.k;
import java.util.Map;

/* JADX INFO: compiled from: ProviderListenerManagerImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends g.a {
    private static volatile f a;

    public static f b() {
        if (a == null) {
            synchronized (f.class) {
                if (a == null) {
                    a = new f();
                }
            }
        }
        return a;
    }

    @Override // com.bytedance.sdk.component.e.a.g
    public int a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (k.a()) {
            return com.bytedance.sdk.openadsdk.multipro.e.a(o.a()).a(uri, contentValues, str, strArr);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.component.e.a.g
    public int a(Uri uri, String str, String[] strArr) {
        if (k.a()) {
            return com.bytedance.sdk.openadsdk.multipro.e.a(o.a()).a(uri, str, strArr);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.component.e.a.g
    public String a(Uri uri) {
        if (k.a()) {
            return com.bytedance.sdk.openadsdk.multipro.e.a(o.a()).a(uri);
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.e.a.g
    public String a(Uri uri, ContentValues contentValues) {
        Uri uriA;
        if (k.a() && (uriA = com.bytedance.sdk.openadsdk.multipro.e.a(o.a()).a(uri, contentValues)) != null) {
            return uriA.toString();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.e.a.g
    public Map a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (!k.a()) {
            return null;
        }
        try {
            return com.bytedance.sdk.openadsdk.multipro.a.a.a(com.bytedance.sdk.openadsdk.multipro.e.a(o.a()).a(uri, strArr, str, strArr2, str2));
        } catch (Throwable unused) {
            return null;
        }
    }
}
