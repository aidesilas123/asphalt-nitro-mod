package com.bytedance.sdk.openadsdk.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.component.video.api.e.a;
import com.bytedance.sdk.component.d.k;
import com.bytedance.sdk.component.d.u;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.model.n;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.s;
import com.bytedance.sdk.openadsdk.core.model.v;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ab;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.j;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: TTAppOpenAdCacheManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    private static volatile f a;
    private final com.bytedance.sdk.openadsdk.a.b b;
    private final p<com.bytedance.sdk.openadsdk.b.a> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f1292d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<String, AtomicInteger> f1293e = new ConcurrentHashMap();

    /* JADX INFO: compiled from: TTAppOpenAdCacheManager.java */
    private class a extends h {
        private final com.bytedance.sdk.openadsdk.component.e.a b;

        public a(com.bytedance.sdk.openadsdk.component.e.a aVar) {
            super("App Open Ad Write Cache");
            this.b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad_materialMeta", "material" + this.b.a(), com.bytedance.sdk.component.utils.a.a(this.b.b().ao()).toString());
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: compiled from: TTAppOpenAdCacheManager.java */
    public interface b {
        void a();

        void a(@Nullable com.bytedance.sdk.openadsdk.k.a.b bVar);
    }

    /* JADX INFO: compiled from: TTAppOpenAdCacheManager.java */
    interface c {
        void a();

        void a(int i, String str);
    }

    /* JADX INFO: compiled from: TTAppOpenAdCacheManager.java */
    public interface d {
        void a();

        void a(Bitmap bitmap);
    }

    private f(Context context) {
        if (context != null) {
            this.f1292d = context.getApplicationContext();
        } else {
            this.f1292d = o.a();
        }
        this.b = new com.bytedance.sdk.openadsdk.a.b(10, 8, true);
        this.c = o.c();
    }

    public static f a(Context context) {
        if (a == null) {
            synchronized (f.class) {
                if (a == null) {
                    a = new f(context);
                }
            }
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull final q qVar, final AdSlot adSlot, final v vVar) {
        final int iAZ = qVar.aZ();
        a(qVar, adSlot, vVar, new c() { // from class: com.bytedance.sdk.openadsdk.component.f.4
            @Override // com.bytedance.sdk.openadsdk.component.f.c
            public void a() {
                com.bytedance.sdk.openadsdk.component.e.a aVar = new com.bytedance.sdk.openadsdk.component.e.a(iAZ, qVar);
                f.this.a(aVar);
                com.bytedance.sdk.openadsdk.component.d.a.a(aVar.b(), 1, vVar);
                f.this.b(adSlot);
            }

            @Override // com.bytedance.sdk.openadsdk.component.f.c
            public void a(int i, String str) {
                f.this.b(adSlot);
            }
        });
    }

    public static void a(q qVar, d dVar) {
        a(qVar, dVar, 0);
    }

    public static void a(q qVar, final d dVar, final int i) {
        String strJ = qVar.K().j();
        if (TextUtils.isEmpty(strJ)) {
            return;
        }
        com.bytedance.sdk.openadsdk.f.d.a(strJ).a(qVar.K().c()).b(qVar.K().b()).d(ad.d(o.a())).c(ad.c(o.a())).a(u.BITMAP).a(new com.bytedance.sdk.component.d.h() { // from class: com.bytedance.sdk.openadsdk.component.f.2
            @Override // com.bytedance.sdk.component.d.h
            public Bitmap a(Bitmap bitmap) {
                if (i <= 0) {
                    return bitmap;
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    return com.bytedance.sdk.component.adexpress.c.a.a(o.a(), bitmap, i);
                }
                return null;
            }
        }).a(new com.bytedance.sdk.openadsdk.f.b(qVar, strJ, new com.bytedance.sdk.component.d.o<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.component.f.1
            @Override // com.bytedance.sdk.component.d.o
            public void a(int i2, String str, @Nullable Throwable th) {
                d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.a();
                }
            }

            @Override // com.bytedance.sdk.component.d.o
            public void a(k<Bitmap> kVar) {
                if (kVar == null || kVar.b() == null || kVar.c() == null) {
                    d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.a();
                        return;
                    }
                    return;
                }
                d dVar3 = dVar;
                if (dVar3 != null) {
                    dVar3.a(kVar.b());
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(AdSlot adSlot) {
        AtomicInteger atomicInteger = this.f1293e.get(adSlot.getCodeId());
        if (atomicInteger == null) {
            atomicInteger = new AtomicInteger(0);
        } else {
            atomicInteger.decrementAndGet();
        }
        this.f1293e.put(adSlot.getCodeId(), atomicInteger);
    }

    private void b(com.bytedance.sdk.openadsdk.component.e.a aVar) {
        aa.a(new a(aVar), 5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@NonNull final q qVar, final AdSlot adSlot, final v vVar) {
        final int iAZ = qVar.aZ();
        a(qVar, vVar, new b() { // from class: com.bytedance.sdk.openadsdk.component.f.5
            @Override // com.bytedance.sdk.openadsdk.component.f.b
            public void a() {
                f.this.b(adSlot);
            }

            @Override // com.bytedance.sdk.openadsdk.component.f.b
            public void a(com.bytedance.sdk.openadsdk.k.a.b bVar) {
                com.bytedance.sdk.openadsdk.component.e.a aVar = new com.bytedance.sdk.openadsdk.component.e.a(iAZ, qVar);
                f.this.a(aVar);
                com.bytedance.sdk.openadsdk.component.d.a.a(aVar.b(), 1, vVar);
                f.this.b(adSlot);
            }
        });
    }

    private int c(AdSlot adSlot) {
        long jA = com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad", "material_expiration_time" + adSlot.getCodeId(), -1L);
        Object[] objArr = new Object[2];
        objArr[0] = "local cache number : ";
        objArr[1] = Integer.valueOf(jA == -1 ? 0 : 1);
        l.a("TTAppOpenAdCacheManager", objArr);
        return jA == -1 ? 0 : 1;
    }

    @Nullable
    public String a(q qVar) {
        if (qVar != null && qVar.K() != null && !TextUtils.isEmpty(qVar.K().k())) {
            String strK = qVar.K().k();
            String strN = qVar.K().n();
            if (TextUtils.isEmpty(strN)) {
                strN = com.bytedance.sdk.component.utils.e.a(strK);
            }
            File fileA = com.bytedance.sdk.openadsdk.component.g.a.a(strN);
            if (fileA.exists() && fileA.isFile()) {
                return fileA.getAbsolutePath();
            }
        }
        return null;
    }

    public void a() {
        File[] fileArrListFiles;
        try {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad_materialMeta");
            com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad");
        } catch (Throwable unused) {
        }
        try {
            File cacheDir = this.f1292d.getCacheDir();
            if (cacheDir == null || !cacheDir.exists() || !cacheDir.isDirectory() || (fileArrListFiles = cacheDir.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.f.8
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    if (file == null) {
                        return false;
                    }
                    String name = file.getName();
                    return name.contains("openad_image_cache") || name.contains("openad_video_cache");
                }
            })) == null) {
                return;
            }
            for (File file : fileArrListFiles) {
                try {
                    com.bytedance.sdk.component.utils.f.c(file);
                } catch (Throwable unused2) {
                }
            }
        } catch (Throwable unused3) {
        }
    }

    public void a(int i) {
        com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad", "video_has_cached" + i, Boolean.TRUE);
    }

    public void a(final AdSlot adSlot) {
        if (adSlot == null || !TextUtils.isEmpty(adSlot.getBidAdm())) {
            return;
        }
        AtomicInteger atomicInteger = this.f1293e.get(adSlot.getCodeId());
        if (atomicInteger == null) {
            atomicInteger = new AtomicInteger(0);
        }
        l.a("TTAppOpenAdCacheManager", "local Requesting:", atomicInteger);
        int iC = atomicInteger.get() + c(adSlot);
        if (iC >= 1) {
            l.a("TTAppOpenAdCacheManager", Integer.valueOf(iC), ",The number of preloads exceeds the limit ", 1);
            return;
        }
        atomicInteger.incrementAndGet();
        this.f1293e.put(adSlot.getCodeId(), atomicInteger);
        final v vVar = new v();
        vVar.a(ab.a());
        s sVar = new s();
        sVar.h = vVar;
        sVar.f1593d = 2;
        sVar.f1595f = 2;
        this.c.a(adSlot, sVar, 3, new p.a() { // from class: com.bytedance.sdk.openadsdk.component.f.3
            @Override // com.bytedance.sdk.openadsdk.core.p.a
            public void a(int i, String str) {
                l.b("TTAppOpenAdCacheManager", "cache Load App OpenAd From Network fail");
                f.this.b(adSlot);
            }

            @Override // com.bytedance.sdk.openadsdk.core.p.a
            public void a(com.bytedance.sdk.openadsdk.core.model.a aVar, com.bytedance.sdk.openadsdk.core.model.b bVar) {
                l.b("TTAppOpenAdCacheManager", "cache Load App Open Ad From Network success");
                if (aVar == null || aVar.c() == null || aVar.c().size() == 0) {
                    l.b("TTAppOpenAdCacheManager", "material is null");
                    bVar.a(-3);
                    com.bytedance.sdk.openadsdk.core.model.b.a(bVar);
                    return;
                }
                q qVar = aVar.c().get(0);
                if (qVar == null || !qVar.br()) {
                    if (q.c(qVar)) {
                        f.this.a(qVar, adSlot, vVar);
                        return;
                    } else {
                        f.this.b(qVar, adSlot, vVar);
                        return;
                    }
                }
                com.bytedance.sdk.openadsdk.component.e.a aVar2 = new com.bytedance.sdk.openadsdk.component.e.a(qVar.aZ(), qVar);
                f.this.a(aVar2);
                com.bytedance.sdk.openadsdk.component.d.a.a(aVar2.b(), 1, vVar);
                f.this.b(adSlot);
            }
        });
    }

    public void a(com.bytedance.sdk.openadsdk.component.e.a aVar) {
        if (aVar.b() != null) {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad", "material_expiration_time" + aVar.a(), Long.valueOf(aVar.b().ag()));
            b(aVar);
        }
    }

    public void a(@NonNull final q qVar, AdSlot adSlot, final v vVar, final c cVar) {
        final ab abVarA = ab.a();
        final int iAZ = qVar.aZ();
        com.bykv.vk.openvk.component.video.api.c.b bVarK = qVar.K();
        String strK = bVarK.k();
        String strN = bVarK.n();
        if (TextUtils.isEmpty(strN)) {
            strN = com.bytedance.sdk.component.utils.e.a(strK);
        }
        final File fileA = com.bytedance.sdk.openadsdk.component.g.a.a(strN);
        if (fileA.exists()) {
            l.b("TTAppOpenAdCacheManager", "The video cache exists locally, use the cache directly");
            com.bytedance.sdk.openadsdk.component.g.a.a(fileA);
            a(iAZ);
            long jC = abVarA.c();
            if (vVar != null) {
                vVar.a(jC);
                vVar.a(1);
            }
            cVar.a();
            a(qVar, (d) null);
            return;
        }
        if (o.d().y(String.valueOf(iAZ)) && !com.bytedance.sdk.component.utils.o.d(o.a())) {
            cVar.a(100, "OnlyWifi");
            return;
        }
        com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(fileA.getParent(), qVar);
        bVarA.a("material_meta", qVar);
        bVarA.a("ad_slot", adSlot);
        com.bytedance.sdk.openadsdk.core.video.d.a.a(bVarA, new a.InterfaceC0093a() { // from class: com.bytedance.sdk.openadsdk.component.f.6
            @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
            public void a(com.bykv.vk.openvk.component.video.api.c.c cVar2, int i) {
                l.b("TTAppOpenAdCacheManager", "Video file caching success");
                f.this.a(iAZ);
                long jC2 = abVarA.c();
                com.bytedance.sdk.openadsdk.component.d.a.b(qVar, jC2, true);
                v vVar2 = vVar;
                if (vVar2 != null) {
                    vVar2.a(jC2);
                    vVar.a(2);
                }
                cVar.a();
                f.a(qVar, (d) null);
            }

            @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
            public void a(com.bykv.vk.openvk.component.video.api.c.c cVar2, int i, String str) {
                l.b("TTAppOpenAdCacheManager", "Video file caching failed");
                long jC2 = abVarA.c();
                com.bytedance.sdk.openadsdk.component.d.a.b(qVar, jC2, false);
                v vVar2 = vVar;
                if (vVar2 != null) {
                    vVar2.a(jC2);
                }
                cVar.a(i, str);
                try {
                    if (fileA.exists() && fileA.isFile()) {
                        com.bytedance.sdk.component.utils.f.c(fileA);
                    }
                } catch (Throwable unused) {
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
            public void b(com.bykv.vk.openvk.component.video.api.c.c cVar2, int i) {
            }
        });
        if (Build.VERSION.SDK_INT < 23) {
            a(new File(com.bykv.vk.openvk.component.video.api.c.a().getCacheDir(), "proxy_cache"));
            a(iAZ);
            long jC2 = abVarA.c();
            com.bytedance.sdk.openadsdk.component.d.a.b(qVar, jC2, true);
            if (vVar != null) {
                vVar.a(jC2);
                vVar.a(2);
            }
            cVar.a();
            a(qVar, (d) null);
        }
    }

    public void a(final q qVar, final v vVar, final b bVar) {
        final ab abVarA = ab.a();
        final int iAZ = qVar.aZ();
        n nVar = qVar.Q().get(0);
        String strG = nVar.g();
        String strA = nVar.a();
        int iB = nVar.b();
        int iC = nVar.c();
        File fileB = com.bytedance.sdk.openadsdk.component.g.a.b(TextUtils.isEmpty(strG) ? com.bytedance.sdk.component.utils.e.a(strA) : strG);
        if (!a(strA, strG)) {
            j.a(new com.bytedance.sdk.openadsdk.k.a(strA, nVar.g()), iB, iC, new j.a() { // from class: com.bytedance.sdk.openadsdk.component.f.7
                @Override // com.bytedance.sdk.openadsdk.utils.j.a
                @MainThread
                public void a() {
                    l.b("TTAppOpenAdCacheManager", "Image loading failed");
                    com.bytedance.sdk.openadsdk.component.d.a.a(qVar, abVarA.c(), false);
                    bVar.a();
                }

                @Override // com.bytedance.sdk.openadsdk.utils.j.a
                @MainThread
                public void a(@NonNull com.bytedance.sdk.openadsdk.k.a.b bVar2) {
                    if (!bVar2.d()) {
                        com.bytedance.sdk.openadsdk.component.d.a.a(qVar, abVarA.c(), false);
                        bVar.a();
                        return;
                    }
                    l.b("TTAppOpenAdCacheManager", "Image loaded successfully");
                    f.this.c(iAZ);
                    long jC = abVarA.c();
                    com.bytedance.sdk.openadsdk.component.d.a.a(qVar, jC, true);
                    v vVar2 = vVar;
                    if (vVar2 != null) {
                        vVar2.a(jC);
                        vVar.a(2);
                    }
                    bVar.a(bVar2);
                }

                @Override // com.bytedance.sdk.openadsdk.utils.j.a
                public void b() {
                    l.b("TTAppOpenAdCacheManager", "Image caching success");
                }
            }, fileB.getParent());
            return;
        }
        l.b("TTAppOpenAdCacheManager", "The image cache exists locally, directly use the cache");
        c(iAZ);
        long jC = abVarA.c();
        if (vVar != null) {
            vVar.a(jC);
            vVar.a(1);
        }
        bVar.a(null);
    }

    public void a(File file) {
        try {
            this.b.a(file);
        } catch (IOException e2) {
            l.c("TTAppOpenAdCacheManager", "trimFileCache fail", e2);
        }
    }

    public boolean a(String str, String str2) {
        boolean z;
        try {
            if (TextUtils.isEmpty(str2)) {
                str2 = com.bytedance.sdk.component.utils.e.a(str);
            }
            File fileB = com.bytedance.sdk.openadsdk.component.g.a.b(str2);
            InputStream inputStreamA = com.bytedance.sdk.openadsdk.f.d.a(str, str2);
            if (inputStreamA != null) {
                try {
                    inputStreamA.close();
                } catch (IOException e2) {
                    l.e("TTAppOpenAdCacheManager", e2.getMessage());
                }
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                if (com.bytedance.sdk.openadsdk.f.d.a(str, str2, fileB.getParent())) {
                    return true;
                }
                if (new File(fileB.getPath() + ".0").exists()) {
                    return true;
                }
            }
            return z;
        } catch (Exception e3) {
            l.e("TTAppOpenAdCacheManager", e3.getMessage());
            return false;
        }
    }

    public String b() {
        String name = new File(CacheDirFactory.getRootDir()).getName();
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            return name + "/openad_image_cache/";
        }
        return name + "//openad_image_cache/";
    }

    public boolean b(int i) {
        return com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad", "video_has_cached" + i, false);
    }

    public boolean b(q qVar) {
        if (qVar == null || qVar.Q() == null || qVar.Q().size() == 0 || TextUtils.isEmpty(qVar.Q().get(0).a())) {
            return false;
        }
        n nVar = qVar.Q().get(0);
        return a(nVar.a(), nVar.g());
    }

    public void c(int i) {
        com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad", "image_has_cached" + i, Boolean.TRUE);
    }

    public boolean d(int i) {
        return com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad", "image_has_cached" + i, false);
    }

    @Nullable
    public q e(int i) {
        long jA = com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad", "material_expiration_time" + i, -1L);
        q qVarF = f(i);
        if (System.currentTimeMillis() / 1000 < jA && qVarF != null) {
            return qVarF;
        }
        if (qVarF == null && jA == -1) {
            return null;
        }
        g(i);
        if (qVarF == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.component.d.a.a(qVarF);
        return null;
    }

    @Nullable
    public q f(int i) {
        String strC;
        String strB = com.bytedance.sdk.openadsdk.multipro.d.d.b("tt_openad_materialMeta", "material" + i, null);
        if (!TextUtils.isEmpty(strB)) {
            try {
                strC = com.bytedance.sdk.component.utils.a.c(new JSONObject(strB).optString("message"));
            } catch (JSONException e2) {
                l.e("TTAppOpenAdCacheManager", e2.getMessage());
                strC = null;
            }
            if (!TextUtils.isEmpty(strC)) {
                try {
                    q qVarA = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(strC));
                    if (qVarA != null) {
                        return qVarA;
                    }
                } catch (JSONException e3) {
                    l.e("TTAppOpenAdCacheManager", e3.getMessage());
                }
            }
        }
        return null;
    }

    public void g(int i) {
        com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad_materialMeta", "material" + i);
        com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad", "material_expiration_time" + i);
        com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad", "video_has_cached" + i);
        com.bytedance.sdk.openadsdk.multipro.d.d.a("tt_openad", "image_has_cached" + i);
    }
}
