package com.bytedance.sdk.openadsdk.f;

import android.content.Context;
import com.bytedance.sdk.component.b.a.f;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.b.a.m;
import com.bytedance.sdk.component.d.c.e;
import com.bytedance.sdk.component.d.j;
import com.bytedance.sdk.component.d.n;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.z;
import java.io.File;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: ImageLoaderWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: compiled from: ImageLoaderWrapper.java */
    private static final class a {
        private static final n a = a(o.a());

        private static j a(j jVar) {
            return z.a() ? jVar.a(new e()) : jVar;
        }

        private static n a(Context context) {
            return com.bytedance.sdk.component.d.c.b.a(context, new e.a().a(new com.bytedance.sdk.component.d.c.a.a(Math.max(Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 83886080), 10485760), 41943040L, new File(CacheDirFactory.getImageCacheDir()))).a(aa.b()).a(new com.bytedance.sdk.component.d.d() { // from class: com.bytedance.sdk.openadsdk.f.d.a.1
                private com.bytedance.sdk.component.d.b.d a(com.bytedance.sdk.component.d.b.e eVar, Throwable th) {
                    l.d("ImageLoaderWrapper", th.getMessage());
                    if (eVar != null) {
                        eVar.c(System.currentTimeMillis());
                    }
                    com.bytedance.sdk.component.d.b.d dVar = new com.bytedance.sdk.component.d.b.d(98765, th, "net failed");
                    dVar.a(eVar);
                    return dVar;
                }

                private Map<String, String> a(com.bytedance.sdk.component.d.e eVar, com.bytedance.sdk.component.b.a.o oVar) {
                    if (!eVar.b()) {
                        return null;
                    }
                    f fVarG = oVar.g();
                    HashMap map = new HashMap();
                    int iA = fVarG.a();
                    for (int i = 0; i < iA; i++) {
                        String strA = fVarG.a(i);
                        String strB = fVarG.b(i);
                        if (strA != null) {
                            map.put(strA, strB);
                        }
                    }
                    return map;
                }

                @Override // com.bytedance.sdk.component.d.d
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public com.bytedance.sdk.component.d.b.d a(com.bytedance.sdk.component.d.e eVar) {
                    k kVarE = com.bytedance.sdk.openadsdk.k.c.a().b().e();
                    m mVarB = new m.a().a(eVar.a()).a().b();
                    com.bytedance.sdk.component.b.a.o oVarA = null;
                    com.bytedance.sdk.component.d.b.e eVar2 = eVar.c() ? new com.bytedance.sdk.component.d.b.e() : null;
                    if (eVar2 != null) {
                        eVar2.a(System.currentTimeMillis());
                    }
                    try {
                        oVarA = kVarE.a(mVarB).a();
                        if (eVar2 != null) {
                            eVar2.b(System.currentTimeMillis());
                        }
                        Map<String, String> mapA = a(eVar, oVarA);
                        byte[] bArrD = oVarA.f().d();
                        if (eVar2 != null) {
                            eVar2.c(System.currentTimeMillis());
                        }
                        com.bytedance.sdk.component.d.b.d dVar = new com.bytedance.sdk.component.d.b.d(oVarA.c(), bArrD, "", mapA);
                        dVar.a(eVar2);
                        return dVar;
                    } catch (Throwable th) {
                        try {
                            return a(eVar2, th);
                        } finally {
                            com.bytedance.sdk.component.d.c.c.b.a(oVarA);
                        }
                    }
                }
            }).a());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static j b(com.bytedance.sdk.openadsdk.core.model.n nVar) {
            return a(a.a(nVar.a()).a(nVar.b()).b(nVar.c()).d(ad.d(o.a())).c(ad.c(o.a())).a(nVar.g()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static j b(String str) {
            return a(a.a(str).d(ad.d(o.a())).c(ad.c(o.a())));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static InputStream b(String str, String str2) {
            return a.a(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(String str, String str2, String str3) {
            return a.a(str, str2, str3);
        }
    }

    public static j a(com.bytedance.sdk.openadsdk.core.model.n nVar) {
        return a.b(nVar);
    }

    public static j a(String str) {
        return a.b(str);
    }

    public static n a() {
        return a.a;
    }

    public static InputStream a(String str, String str2) {
        return a.b(str, str2);
    }

    public static boolean a(String str, String str2, String str3) {
        return a.b(str, str2, str3);
    }
}
