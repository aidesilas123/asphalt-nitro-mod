package com.bytedance.sdk.component.adexpress.a.b;

import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.component.adexpress.a.c.a;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.y;
import com.json.o2;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: TemplateManager.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    private static File a;
    private static volatile c b;
    private AtomicBoolean c = new AtomicBoolean(true);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicBoolean f647d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f648e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicBoolean f649f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AtomicInteger f650g = new AtomicInteger(0);
    private AtomicLong h = new AtomicLong();

    private c() {
        h();
    }

    public static c a() {
        if (b == null) {
            synchronized (c.class) {
                if (b == null) {
                    b = new c();
                }
            }
        }
        return b;
    }

    private List<a.C0101a> a(com.bytedance.sdk.component.adexpress.a.c.a aVar, com.bytedance.sdk.component.adexpress.a.c.a aVar2) {
        int iA;
        String strB;
        ArrayList arrayList = new ArrayList();
        ArrayList<a.C0101a> arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (aVar2 == null || aVar2.e().isEmpty()) {
            arrayList2.addAll(aVar.e());
            l.b("TemplateManager", "loadTemplate update1");
        } else if (aVar.e().isEmpty()) {
            arrayList.addAll(aVar2.e());
            l.b("TemplateManager", "loadTemplate update2");
        } else {
            for (a.C0101a c0101a : aVar.e()) {
                if (aVar2.e().contains(c0101a)) {
                    a.C0101a c0101aA = f.a(c0101a.a());
                    if (c0101aA != null && c0101a.b() != null && !c0101a.b().equals(c0101aA.b())) {
                        arrayList2.add(c0101a);
                    }
                } else {
                    arrayList2.add(c0101a);
                }
            }
            for (a.C0101a c0101a2 : aVar2.e()) {
                if (!aVar.e().contains(c0101a2)) {
                    arrayList.add(c0101a2);
                }
            }
            l.b("TemplateManager", "loadTemplate update3");
        }
        for (a.C0101a c0101a3 : arrayList2) {
            String strA = c0101a3.a();
            String strA2 = com.bytedance.sdk.component.utils.e.a(strA);
            File file = new File(f(), strA2);
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
            com.bytedance.sdk.component.f.b.a aVarF = com.bytedance.sdk.component.adexpress.a.a.a.a().c().f();
            aVarF.a(strA);
            aVarF.a(f().getAbsolutePath(), strA2);
            com.bytedance.sdk.component.f.b bVarA = aVarF.a();
            arrayList3.add(c0101a3);
            if (bVarA == null || !bVarA.f() || bVarA.e() == null || !bVarA.e().exists()) {
                if (bVarA == null) {
                    iA = -1;
                    strB = "response is null";
                } else {
                    try {
                        if (bVarA.e() == null || !bVarA.e().exists()) {
                            iA = -2;
                            strB = "file is null";
                        } else {
                            iA = bVarA.a();
                            strB = bVarA.b();
                        }
                    } catch (Throwable th) {
                        l.d("TemplateManager", th);
                    }
                }
                a(iA, strB);
                this.f647d.set(false);
                c(arrayList3);
                l.b("TemplateManager", "loadTemplate error5");
                return null;
            }
            l.b("TemplateManager", "loadTemplate success");
        }
        return arrayList;
    }

    private void a(int i) {
        if (com.bytedance.sdk.component.adexpress.a.a.a.a().d() != null) {
            com.bytedance.sdk.component.adexpress.a.a.a.a().d().a(i);
        }
    }

    private void a(int i, String str) {
        if (com.bytedance.sdk.component.adexpress.a.a.a.a().d() != null) {
            com.bytedance.sdk.component.adexpress.a.a.a.a().d().a(i, str);
        }
    }

    private boolean a(a.b bVar) {
        if (bVar == null) {
            return false;
        }
        List<Pair<String, String>> listB = bVar.b();
        if (listB == null || listB.size() <= 0) {
            return true;
        }
        Iterator<Pair<String, String>> it = listB.iterator();
        while (it.hasNext()) {
            File file = new File(f(), (String) it.next().first);
            if (!file.exists() || !file.isFile()) {
                return false;
            }
        }
        return true;
    }

    private boolean a(String str) {
        String strA = com.bytedance.sdk.component.utils.e.a(str);
        File file = new File(f().getAbsoluteFile(), strA + ".zip");
        com.bytedance.sdk.component.f.b.a aVarF = com.bytedance.sdk.component.adexpress.a.a.a.a().c().f();
        aVarF.a(str);
        aVarF.a(file.getParent(), file.getName());
        com.bytedance.sdk.component.f.b bVarA = aVarF.a();
        if (bVarA.f() && bVarA.e() != null && bVarA.e().exists()) {
            File fileE = bVarA.e();
            try {
                y.a(fileE.getAbsolutePath(), file.getParent());
                if (!fileE.exists()) {
                    return true;
                }
                fileE.delete();
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    private boolean a(List<a.C0101a> list) {
        if (list == null || list.size() <= 0) {
            return false;
        }
        for (a.C0101a c0101a : list) {
            File file = new File(f(), com.bytedance.sdk.component.utils.e.a(c0101a.a()));
            String strA = com.bytedance.sdk.component.utils.e.a(file);
            if (!file.exists() || !file.isFile() || c0101a.b() == null || !c0101a.b().equals(strA)) {
                return false;
            }
        }
        return true;
    }

    private void b(List<a.C0101a> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<a.C0101a> it = list.iterator();
        while (it.hasNext()) {
            File file = new File(f(), com.bytedance.sdk.component.utils.e.a(it.next().a()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    private void c(List<a.C0101a> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<a.C0101a> it = list.iterator();
        while (it.hasNext()) {
            File file = new File(f(), com.bytedance.sdk.component.utils.e.a(it.next().a()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public static File f() {
        if (a == null) {
            try {
                File file = new File(new File(b.a(), "tt_tmpl_pkg"), "template");
                file.mkdirs();
                a = file;
            } catch (Throwable th) {
                l.c("TemplateManager", "getTemplateDir error", th);
            }
        }
        return a;
    }

    private void h() {
        com.bytedance.sdk.component.g.f.a(new h(o2.a.f6463e) { // from class: com.bytedance.sdk.component.adexpress.a.b.c.1
            @Override // java.lang.Runnable
            public void run() {
                f.a();
                c.this.c.set(false);
                c.this.i();
                c.this.e();
                if (com.bytedance.sdk.component.adexpress.a.a.a.a().c() == null || !q.a(com.bytedance.sdk.component.adexpress.a.a.a.a().c().b())) {
                    return;
                }
                com.bytedance.sdk.component.adexpress.a.a.a.a().c().c().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.a.b.c.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (com.bytedance.sdk.component.adexpress.a.a.a.a().c() != null) {
                            com.bytedance.sdk.component.adexpress.a.a.a.a().c().d();
                        }
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        l.b("TemplateManager", "check template usable1");
        com.bytedance.sdk.component.adexpress.a.c.a aVarB = f.b();
        if (aVarB == null || !aVarB.f()) {
            l.b("TemplateManager", "check template usable2");
            return;
        }
        boolean z = a(aVarB.d()) || a(aVarB.e());
        if (!z) {
            f.d();
        }
        l.b("TemplateManager", "check template usable4: " + z);
        this.f648e = z;
    }

    private void j() {
        if (this.f650g.getAndSet(0) <= 0 || System.currentTimeMillis() - this.h.get() <= 600000) {
            return;
        }
        e();
    }

    public void a(boolean z) {
        if (this.c.get()) {
            l.b("TemplateManager", "loadTemplate error1");
            return;
        }
        try {
            if (this.f647d.get()) {
                if (z) {
                    this.f650g.getAndIncrement();
                }
                l.b("TemplateManager", "loadTemplate error2: " + z);
                return;
            }
            boolean z2 = true;
            this.f647d.set(true);
            com.bytedance.sdk.component.adexpress.a.c.a aVarE = com.bytedance.sdk.component.adexpress.a.a.a.a().c().e();
            com.bytedance.sdk.component.adexpress.a.c.a aVarB = f.b();
            if (aVarE != null && aVarE.f()) {
                boolean zB = f.b(aVarE.b());
                if (!zB) {
                    this.f647d.set(false);
                    this.h.set(System.currentTimeMillis());
                    l.b("TemplateManager", "loadTemplate error4");
                    return;
                }
                if (zB && com.bytedance.sdk.component.adexpress.a.a.a.a().c() != null) {
                    com.bytedance.sdk.component.adexpress.a.a.a.a().c().c().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.a.b.c.2
                        @Override // java.lang.Runnable
                        public void run() {
                            com.bytedance.sdk.component.adexpress.d.e.a().b();
                        }
                    });
                }
                boolean zA = (aVarE.d() == null || TextUtils.isEmpty(aVarE.d().a())) ? false : a(aVarE.d().a());
                List<a.C0101a> listA = null;
                if (!zA) {
                    listA = a(aVarE, aVarB);
                    if (listA == null) {
                        z2 = false;
                    }
                    zA = z2;
                }
                if (zA && (a(aVarE.e()) || a(aVarE.d()))) {
                    f.a(aVarE);
                    f.c();
                    b(listA);
                }
                l.b("TemplateManager", "loadTemplate update success: " + aVarE.b());
                i();
                this.f647d.set(false);
                this.h.set(System.currentTimeMillis());
                j();
                return;
            }
            this.f647d.set(false);
            a(109);
            l.b("TemplateManager", "loadTemplate error3");
        } catch (Throwable th) {
            l.a("TemplateManager", "loadTemplate error: ", th);
        }
    }

    public void b() {
        h();
    }

    public void b(boolean z) {
        this.f649f.set(z);
    }

    public boolean c() {
        return this.f648e;
    }

    public com.bytedance.sdk.component.adexpress.a.c.a d() {
        return f.b();
    }

    public void e() {
        a(false);
    }

    public void g() {
        this.f649f.set(true);
        this.f648e = false;
        this.f647d.set(false);
    }
}
