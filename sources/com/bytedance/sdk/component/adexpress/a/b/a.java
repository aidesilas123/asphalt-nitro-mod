package com.bytedance.sdk.component.adexpress.a.b;

import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceResponse;
import com.bytedance.sdk.component.adexpress.a.c.a;
import com.bytedance.sdk.component.adexpress.c.f;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.l;
import com.json.b4;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: compiled from: TTDynamic.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    static Object a = new Object();

    public static WebResourceResponse a(String str, f.a aVar, String str2) {
        File fileE = e(str);
        if (fileE == null) {
            fileE = d(str);
        }
        if (fileE != null) {
            try {
                return new WebResourceResponse(aVar.a(), b4.L, new FileInputStream(fileE));
            } catch (Throwable th) {
                l.c("TTDynamic", "get html WebResourceResponse error", th);
            }
        }
        return null;
    }

    public static com.bytedance.sdk.component.adexpress.a.c.b a(String str) {
        return e.a().a(str);
    }

    public static void a() {
        c.a();
    }

    private static void a(final com.bytedance.sdk.component.adexpress.a.c.b bVar) {
        com.bytedance.sdk.component.g.f.a(new h("updateTmplTime") { // from class: com.bytedance.sdk.component.adexpress.a.b.a.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (a.a) {
                    d.a().a(bVar);
                }
            }
        }, 10);
    }

    public static void a(com.bytedance.sdk.component.adexpress.a.c.c cVar) {
        e.a().a(cVar, cVar.f665f);
    }

    public static boolean a(JSONObject jSONObject) {
        Object objOpt;
        return (jSONObject == null || (objOpt = jSONObject.opt("template_Plugin")) == null || TextUtils.isEmpty(objOpt.toString())) ? false : true;
    }

    public static Set<String> b(String str) {
        return e.a().b(str);
    }

    public static void b() {
        try {
            f.d();
            File fileF = c.f();
            if (fileF != null && fileF.exists()) {
                if (fileF.getParentFile() != null) {
                    com.bytedance.sdk.component.utils.f.c(fileF.getParentFile());
                } else {
                    com.bytedance.sdk.component.utils.f.c(fileF);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static com.bytedance.sdk.component.adexpress.a.c.b c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.bytedance.sdk.component.adexpress.a.c.b bVarA = e.a().a(str);
        if (bVarA != null) {
            bVarA.a(Long.valueOf(System.currentTimeMillis()));
            a(bVarA);
        }
        return bVarA;
    }

    public static String c() {
        return d.c();
    }

    public static com.bytedance.sdk.component.adexpress.a.c.a d() {
        return c.a().d();
    }

    private static File d(String str) {
        if (!f()) {
            return null;
        }
        for (a.C0101a c0101a : d().e()) {
            if (c0101a.a() != null && c0101a.a().equals(str)) {
                File file = new File(c.f(), com.bytedance.sdk.component.utils.e.a(c0101a.a()));
                String strA = com.bytedance.sdk.component.utils.e.a(file);
                if (c0101a.b() == null || !c0101a.b().equals(strA)) {
                    return null;
                }
                return file;
            }
        }
        return null;
    }

    private static File e(String str) {
        List<Pair<String, String>> listB;
        a.b bVarD = d().d();
        if (bVarD == null || (listB = bVarD.b()) == null || listB.size() <= 0) {
            return null;
        }
        for (Pair<String, String> pair : listB) {
            Object obj = pair.second;
            if (obj != null && ((String) obj).equals(str)) {
                return new File(c.f(), (String) pair.first);
            }
        }
        return null;
    }

    public static String e() {
        if (d() == null) {
            return null;
        }
        return d().c();
    }

    public static boolean f() {
        return c.a().c();
    }
}
