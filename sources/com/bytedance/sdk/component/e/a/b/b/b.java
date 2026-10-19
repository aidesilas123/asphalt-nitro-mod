package com.bytedance.sdk.component.e.a.b.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.e.a.a.a.f;
import com.bytedance.sdk.component.e.a.c.c;
import com.bytedance.sdk.component.e.a.g;
import com.bytedance.sdk.component.e.a.i;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: OverSeasEventProviderImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static g a;

    public static g a(Context context) {
        try {
            c.a("getResolver");
            if (a == null) {
                a = i.g().p().l();
            }
        } catch (Exception unused) {
        }
        return a;
    }

    public static void a() {
        c.a("EventProviderImpl#start");
        if (i.g().f() == null) {
            return;
        }
        try {
            g gVarA = a(i.g().f());
            if (gVarA != null) {
                Uri uri = Uri.parse(e() + "adLogStart");
                c.a("EventProviderImpl#gettype");
                gVarA.a(uri);
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar == null) {
            return;
        }
        try {
            c.a("dispatch event getResolver before");
            g gVarA = a(i.g().f());
            c.a("dispatch event getResolver end");
            if (gVarA != null) {
                Uri uri = Uri.parse(e() + "adLogDispatch?event=" + f.a(aVar.f()));
                c.a("dispatch event getType:");
                gVarA.a(uri);
                c.a("dispatch event getType end ");
            }
        } catch (Throwable th) {
            c.d("dispatch event Throwable:" + th.toString());
        }
    }

    public static void a(String str) {
        if (i.g().p().g() == 0 && TextUtils.isEmpty(str)) {
            return;
        }
        try {
            g gVarA = a(i.g().f());
            if (gVarA != null) {
                gVarA.a(Uri.parse(e() + "trackAdFailed?did=" + String.valueOf(str)));
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(String str, List<String> list, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb.append(f.a(it.next()));
                sb.append(",");
            }
            String str2 = "?did=" + String.valueOf(str) + "&track=" + String.valueOf(f.a(sb.toString())) + "&replace=" + String.valueOf(z);
            g gVarA = a(i.g().f());
            if (gVarA != null) {
                gVarA.a(Uri.parse(e() + "trackAdUrl" + str2));
            }
        } catch (Throwable unused) {
        }
    }

    public static void b() {
        if (i.g().f() == null) {
            return;
        }
        try {
            g gVarA = a(i.g().f());
            if (gVarA != null) {
                gVarA.a(Uri.parse(e() + "adLogStop"));
            }
        } catch (Throwable unused) {
        }
    }

    private static String e() {
        return com.bytedance.sdk.component.e.a.a.a.g.b + "/ad_log_event/";
    }

    public int a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public int a(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public Uri a(Uri uri, ContentValues contentValues) {
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String a(android.net.Uri r9) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.e.a.b.b.b.a(android.net.Uri):java.lang.String");
    }

    public String c() {
        return "ad_log_event";
    }

    public void d() {
    }
}
