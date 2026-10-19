package com.bytedance.sdk.component.adexpress.a.b;

import android.text.TextUtils;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.l;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: compiled from: TmplDiffManager.java */
/* JADX INFO: loaded from: classes.dex */
public class e {
    private static volatile e a;
    private AtomicBoolean b = new AtomicBoolean(false);

    private e() {
    }

    public static e a() {
        if (a == null) {
            synchronized (e.class) {
                if (a == null) {
                    a = new e();
                }
            }
        }
        return a;
    }

    private void a(String str, String str2, String str3) {
        JSONObject jSONObjectC;
        if (TextUtils.isEmpty(str) || (jSONObjectC = c(str)) == null) {
            return;
        }
        String strOptString = jSONObjectC.optString("md5");
        String strOptString2 = jSONObjectC.optString("version");
        String strOptString3 = jSONObjectC.optString("data");
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || TextUtils.isEmpty(strOptString3)) {
            return;
        }
        com.bytedance.sdk.component.adexpress.a.c.b bVarA = new com.bytedance.sdk.component.adexpress.a.c.b().a(str2).b(str3).c(strOptString).d(str).e(strOptString3).f(strOptString2).a(Long.valueOf(System.currentTimeMillis()));
        d.a().a(bVarA);
        b();
        if (f.b(strOptString2)) {
            bVarA.f(strOptString2);
            c.a().a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(String str, String str2, String str3, String str4, String str5, String str6) {
        if (a(str) != null) {
            if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
                b(str6, str, str3, str2, str4, str5);
            }
            return;
        } else if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
            a(str2, str6, str);
        } else {
            b(str6, str, str3, str2, str4, str5);
        }
        boolean zB = f.b(str5);
        if (!a.f() || zB) {
            c.a().a(true);
        }
    }

    private void b() {
        if (com.bytedance.sdk.component.adexpress.a.a.a.a().c() == null) {
            return;
        }
        int iA = com.bytedance.sdk.component.adexpress.a.a.a.a().c().a();
        if (iA <= 0) {
            iA = 100;
        }
        List<com.bytedance.sdk.component.adexpress.a.c.b> listB = d.a().b();
        if (listB == null || listB.isEmpty() || iA >= listB.size()) {
            l.b("TmplDiffManager", "end doCheckAndDeleteTask maxTplCnt,local size" + iA + ", Number of templates currently stored" + (listB != null ? listB.size() : 0));
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (com.bytedance.sdk.component.adexpress.a.c.b bVar : listB) {
            treeMap.put(bVar.g(), bVar);
        }
        HashSet hashSet = new HashSet();
        int size = (int) (listB.size() - (iA * 0.75f));
        int i = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            if (entry != null && i < size) {
                i++;
                ((Long) entry.getKey()).longValue();
                com.bytedance.sdk.component.adexpress.a.c.b bVar2 = (com.bytedance.sdk.component.adexpress.a.c.b) entry.getValue();
                if (bVar2 != null) {
                    hashSet.add(bVar2.b());
                }
            }
        }
        a(hashSet);
        this.b.set(false);
    }

    private void b(String str, String str2, String str3, String str4, String str5, String str6) {
        d.a().a(new com.bytedance.sdk.component.adexpress.a.c.b().a(str).b(str2).c(str3).d(str4).e(str5).f(str6).a(Long.valueOf(System.currentTimeMillis())));
        b();
    }

    private JSONObject c(String str) {
        if (com.bytedance.sdk.component.adexpress.a.a.a.a().c() == null) {
            return null;
        }
        com.bytedance.sdk.component.f.b.b bVarG = com.bytedance.sdk.component.adexpress.a.a.a.a().c().g();
        bVarG.a(str);
        com.bytedance.sdk.component.f.b bVarA = bVarG.a();
        if (bVarA != null) {
            try {
                if (bVarA.f() && bVarA.d() != null) {
                    return new JSONObject(bVarA.d());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public com.bytedance.sdk.component.adexpress.a.c.b a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return d.a().a(str);
    }

    public void a(com.bytedance.sdk.component.adexpress.a.c.c cVar, String str) {
        if (cVar == null) {
            l.e("TmplDiffManager", "saveTemplate error: tplInfo == null");
            return;
        }
        final String str2 = cVar.a;
        final String str3 = cVar.c;
        final String str4 = cVar.b;
        final String str5 = cVar.f663d;
        final String str6 = cVar.f664e;
        final String strH = TextUtils.isEmpty(str) ? com.bytedance.sdk.component.adexpress.a.a.a.a().c() != null ? com.bytedance.sdk.component.adexpress.a.a.a.a().c().h() : "" : str;
        if (TextUtils.isEmpty(str2)) {
            l.e("TmplDiffManager", "saveTemplate error:tmpId is empty");
        } else {
            com.bytedance.sdk.component.g.f.a(new h("saveTemplate") { // from class: com.bytedance.sdk.component.adexpress.a.b.e.1
                @Override // java.lang.Runnable
                public void run() {
                    e.this.a(str2, str3, str4, str5, str6, strH);
                }
            }, 10);
        }
    }

    public void a(Set<String> set) {
        try {
            d.a().a(set);
        } catch (Throwable th) {
            l.b("TmplDiffManager", th.getMessage());
        }
    }

    public Set<String> b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return d.a().b(str);
    }
}
