package com.bytedance.sdk.openadsdk.multipro.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.e.a.g;
import com.bytedance.sdk.openadsdk.core.e;
import com.bytedance.sdk.openadsdk.multipro.d;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: DBMultiAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static g a;
    private static final ConcurrentHashMap<String, Object> b = new ConcurrentHashMap<>();

    public static int a(Context context, String str, ContentValues contentValues, String str2, String[] strArr) {
        if (contentValues == null || TextUtils.isEmpty(str)) {
            return 0;
        }
        synchronized (a(str)) {
            if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                return e.a(context).a().a(str, contentValues, str2, strArr);
            }
            g gVarA = a(context);
            if (gVarA != null) {
                return gVarA.a(Uri.parse(a() + str), contentValues, str2, strArr);
            }
            return 0;
        }
    }

    public static int a(Context context, String str, String str2, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        synchronized (a(str)) {
            if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                return e.a(context).a().a(str, str2, strArr);
            }
            g gVarA = a(context);
            if (gVarA != null) {
                return gVarA.a(Uri.parse(a() + str), str2, strArr);
            }
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0009 A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:3:0x0002, B:4:0x0005, B:6:0x0009, B:8:0x000f, B:9:0x001f), top: B:14:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.bytedance.sdk.component.e.a.g a(android.content.Context r1) {
        /*
            if (r1 != 0) goto L5
            com.bytedance.sdk.openadsdk.core.o.a()     // Catch: java.lang.Throwable -> L26
        L5:
            com.bytedance.sdk.component.e.a.g r1 = com.bytedance.sdk.openadsdk.multipro.a.a.a     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L2b
            boolean r1 = com.bytedance.sdk.openadsdk.multipro.b.c()     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L1f
            com.bytedance.sdk.openadsdk.multipro.aidl.a r1 = com.bytedance.sdk.openadsdk.multipro.aidl.a.a()     // Catch: java.lang.Throwable -> L26
            r0 = 5
            android.os.IBinder r1 = r1.a(r0)     // Catch: java.lang.Throwable -> L26
            com.bytedance.sdk.component.e.a.g r1 = com.bytedance.sdk.component.e.a.g.a.a(r1)     // Catch: java.lang.Throwable -> L26
            com.bytedance.sdk.openadsdk.multipro.a.a.a = r1     // Catch: java.lang.Throwable -> L26
            goto L2b
        L1f:
            com.bytedance.sdk.openadsdk.multipro.aidl.a.f r1 = com.bytedance.sdk.openadsdk.multipro.aidl.a.f.b()     // Catch: java.lang.Throwable -> L26
            com.bytedance.sdk.openadsdk.multipro.a.a.a = r1     // Catch: java.lang.Throwable -> L26
            goto L2b
        L26:
            java.lang.String r1 = "binder error"
            com.bytedance.sdk.openadsdk.utils.ac.h(r1)
        L2b:
            com.bytedance.sdk.component.e.a.g r1 = com.bytedance.sdk.openadsdk.multipro.a.a.a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.multipro.a.a.a(android.content.Context):com.bytedance.sdk.component.e.a.g");
    }

    private static Object a(String str) {
        ConcurrentHashMap<String, Object> concurrentHashMap = b;
        Object obj = concurrentHashMap.get(str);
        if (obj == null) {
            synchronized (a.class) {
                obj = concurrentHashMap.get(str);
                if (obj == null) {
                    obj = new Object();
                    concurrentHashMap.put(str, obj);
                }
            }
        }
        return obj;
    }

    private static String a() {
        return d.b + "/t_db/ttopensdk.db/";
    }

    public static Map<String, List<String>> a(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (a(str)) {
            if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                return a(e.a(context).a().a(str, strArr, str2, strArr2, str3, str4, str5));
            }
            g gVarA = a(context);
            if (gVarA != null) {
                return gVarA.a(Uri.parse(a() + str), strArr, str2, strArr2, str5);
            }
            return null;
        }
    }

    public static Map<String, List<String>> a(Cursor cursor) {
        HashMap map = new HashMap();
        if (cursor != null) {
            try {
                String[] columnNames = cursor.getColumnNames();
                while (cursor.getCount() > 0 && cursor.moveToNext()) {
                    for (String str : columnNames) {
                        if (!map.containsKey(str)) {
                            map.put(str, new LinkedList());
                        }
                        ((List) map.get(str)).add(cursor.getString(cursor.getColumnIndex(str)));
                    }
                }
            } catch (Throwable unused) {
            }
            cursor.close();
        }
        return map;
    }

    public static void a(Context context, String str, ContentValues contentValues) {
        if (contentValues == null || TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (a(str)) {
            if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                e.a(context).a().a(str, (String) null, contentValues);
                return;
            }
            g gVarA = a(context);
            if (gVarA != null) {
                gVarA.a(Uri.parse(a() + str), contentValues);
            }
        }
    }
}
