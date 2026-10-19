package com.bytedance.sdk.component.e.a.b.b;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.e.a.a.a.f;
import com.bytedance.sdk.component.e.a.a.a.g;
import com.bytedance.sdk.component.e.a.c.c;
import com.bytedance.sdk.component.e.a.i;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: EventProviderImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static void a() {
        c.a("start()");
        if (i.g().f() == null) {
            return;
        }
        try {
            ContentResolver contentResolverC = c();
            if (contentResolverC != null) {
                contentResolverC.getType(Uri.parse(d() + "adLogStart"));
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar == null) {
            return;
        }
        try {
            ContentResolver contentResolverC = c();
            if (contentResolverC != null) {
                contentResolverC.getType(Uri.parse(d() + "adLogDispatch?event=" + f.a(aVar.f())));
                c.a("dispatch event getType end ");
            }
        } catch (Throwable th) {
            c.d("dispatch event Throwable:" + th.toString());
        }
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver contentResolverC = c();
            if (contentResolverC != null) {
                contentResolverC.getType(Uri.parse(d() + "trackAdFailed?did=" + String.valueOf(str)));
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(String str, List<String> list, boolean z) {
        if (TextUtils.isEmpty(str) || list == null || list.isEmpty()) {
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
            ContentResolver contentResolverC = c();
            if (contentResolverC != null) {
                contentResolverC.getType(Uri.parse(d() + "trackAdUrl" + str2));
            }
        } catch (Throwable unused) {
        }
    }

    public static void b() {
        if (i.g().f() == null) {
            return;
        }
        try {
            ContentResolver contentResolverC = c();
            if (contentResolverC != null) {
                contentResolverC.getType(Uri.parse(d() + "adLogStop"));
            }
        } catch (Throwable unused) {
        }
    }

    private static ContentResolver c() {
        try {
            if (i.g().f() != null) {
                return i.g().f().getContentResolver();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String d() {
        return g.b + "/ad_log_event/";
    }
}
