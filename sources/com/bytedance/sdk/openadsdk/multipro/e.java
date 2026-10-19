package com.bytedance.sdk.openadsdk.multipro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: TTProviderManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class e implements a {
    private static volatile e a;
    private static WeakReference<Context> b;
    private static final List<a> c;

    static {
        List<a> listSynchronizedList = Collections.synchronizedList(new ArrayList());
        c = listSynchronizedList;
        listSynchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.d.c());
        listSynchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.a.b());
        listSynchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.c.a());
        listSynchronizedList.add(new com.bytedance.sdk.openadsdk.b.a.e(new com.bytedance.sdk.component.e.a.b.b.b()));
        Iterator<a> it = listSynchronizedList.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    private e() {
    }

    public static e a(Context context) {
        if (context != null) {
            b = new WeakReference<>(context.getApplicationContext());
        }
        if (a == null) {
            synchronized (e.class) {
                if (a == null) {
                    a = new e();
                }
            }
        }
        return a;
    }

    private a b(Uri uri) {
        if (uri == null) {
            return null;
        }
        if (!c(uri)) {
            l.b("TTProviderManager", "uri is error1");
            return null;
        }
        String[] strArrSplit = uri.getPath().split("/");
        if (strArrSplit.length < 2) {
            l.b("TTProviderManager", "uri is error2");
            return null;
        }
        String str = strArrSplit[1];
        if (TextUtils.isEmpty(str)) {
            l.b("TTProviderManager", "uri is error3");
            return null;
        }
        for (a aVar : c) {
            if (str.equals(aVar.a())) {
                return aVar;
            }
        }
        l.b("TTProviderManager", "uri is error4");
        return null;
    }

    private boolean c(Uri uri) {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public int a(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        try {
            a aVarB = b(uri);
            if (aVarB != null) {
                return aVarB.a(uri, contentValues, str, strArr);
            }
            return 0;
        } catch (Throwable th) {
            l.a("TTProviderManager", "==provider update error==", th);
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public int a(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        try {
            a aVarB = b(uri);
            if (aVarB != null) {
                return aVarB.a(uri, str, strArr);
            }
            return 0;
        } catch (Throwable th) {
            l.a("TTProviderManager", "==provider delete error==", th);
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public Cursor a(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        try {
            a aVarB = b(uri);
            if (aVarB != null) {
                return aVarB.a(uri, strArr, str, strArr2, str2);
            }
            return null;
        } catch (Throwable th) {
            l.a("TTProviderManager", "==provider query error==", th);
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public Uri a(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        try {
            a aVarB = b(uri);
            if (aVarB != null) {
                return aVarB.a(uri, contentValues);
            }
            return null;
        } catch (Throwable th) {
            l.a("TTProviderManager", "==provider insert error==", th);
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    @NonNull
    public String a() {
        return "";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public String a(@NonNull Uri uri) {
        try {
            a aVarB = b(uri);
            if (aVarB != null) {
                return aVarB.a(uri);
            }
            return null;
        } catch (Throwable th) {
            l.a("TTProviderManager", "==provider getType error==", th);
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public void b() {
    }
}
