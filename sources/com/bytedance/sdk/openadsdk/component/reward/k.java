package com.bytedance.sdk.openadsdk.component.reward;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.utils.ac;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardVideoCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile k a;
    private final Context b;
    private final m c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<q, Long> f1388d = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: compiled from: RewardVideoCache.java */
    interface a<T> {
        void a(boolean z, T t);
    }

    private k(Context context) {
        this.b = context == null ? com.bytedance.sdk.openadsdk.core.o.a() : context.getApplicationContext();
        this.c = new m("sp_reward_video");
    }

    public static k a(Context context) {
        if (a == null) {
            synchronized (k.class) {
                if (a == null) {
                    a = new k(context);
                }
            }
        }
        return a;
    }

    private File a(String str, int i) {
        return new File(CacheDirFactory.getICacheDir(i).a(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, q qVar, long j, String str) {
        Long lRemove = this.f1388d.remove(qVar);
        com.bytedance.sdk.openadsdk.b.c.b(qVar, "rewarded_video", z ? "load_video_success" : "load_video_error", ac.a(z, qVar, lRemove == null ? 0L : SystemClock.elapsedRealtime() - lRemove.longValue(), j, (z || str == null) ? null : str));
    }

    private boolean a(q qVar) {
        if (qVar == null) {
            return false;
        }
        if (t.k(qVar)) {
            return true;
        }
        if (qVar.K() == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            return !TextUtils.isEmpty(a(r0.k(), r0.n(), qVar.aK()));
        }
        return true;
    }

    public String a(String str, String str2, int i) {
        File fileA;
        if (!TextUtils.isEmpty(str) && (fileA = a(str2, i)) != null && fileA.exists() && fileA.isFile() && fileA.length() > 0) {
            return fileA.getAbsolutePath();
        }
        return null;
    }

    public void a() {
        File[] fileArrListFiles;
        File[] fileArrListFiles2;
        try {
            int i = Build.VERSION.SDK_INT;
            boolean z = i >= 19 && com.bytedance.sdk.openadsdk.core.h.e("sp_reward_video");
            String str = z ? "files" : "shared_prefs";
            File file = i >= 24 ? new File(this.b.getDataDir(), str) : new File(this.b.getDatabasePath("1").getParentFile().getParentFile(), str);
            if (file.exists() && file.isDirectory() && (fileArrListFiles2 = file.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.k.1
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    if (file2 != null) {
                        return file2.getName().contains("sp_reward_video");
                    }
                    return false;
                }
            })) != null) {
                for (File file2 : fileArrListFiles2) {
                    if (z) {
                        try {
                            com.bytedance.sdk.component.utils.f.c(file2);
                        } catch (Throwable unused) {
                        }
                    } else {
                        String strReplace = file2.getName().replace(".xml", "");
                        if (Build.VERSION.SDK_INT >= 24) {
                            this.b.deleteSharedPreferences(strReplace);
                        } else {
                            this.b.getSharedPreferences(strReplace, 0).edit().clear().apply();
                            com.bytedance.sdk.component.utils.f.c(file2);
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        try {
            File cacheDir = this.b.getCacheDir();
            if (cacheDir == null || !cacheDir.exists() || !cacheDir.isDirectory() || (fileArrListFiles = cacheDir.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.k.2
                @Override // java.io.FileFilter
                public boolean accept(File file3) {
                    if (file3 != null) {
                        return file3.getName().contains("reward_video_cache");
                    }
                    return false;
                }
            })) == null) {
                return;
            }
            for (File file3 : fileArrListFiles) {
                try {
                    com.bytedance.sdk.component.utils.f.c(file3);
                } catch (Throwable unused3) {
                }
            }
        } catch (Throwable unused4) {
        }
    }

    public void a(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.a aVar) {
        if (aVar == null || aVar.i()) {
            return;
        }
        synchronized (aVar) {
            if (!aVar.i()) {
                try {
                    this.c.a(adSlot.getCodeId(), aVar.k().toString());
                } catch (Throwable unused) {
                    aVar.j();
                }
            }
        }
    }

    public void a(final q qVar, final a<Object> aVar) {
        this.f1388d.put(qVar, Long.valueOf(SystemClock.elapsedRealtime()));
        if (qVar == null || qVar.K() == null || TextUtils.isEmpty(qVar.K().k())) {
            if (aVar != null) {
                aVar.a(false, null);
            }
            a(false, qVar, -1L, null);
        } else {
            String strK = qVar.K().k();
            File fileA = a(qVar.K().n(), qVar.aK());
            com.bytedance.sdk.component.f.b.a aVarD = com.bytedance.sdk.openadsdk.k.c.a().b().d();
            aVarD.a(strK);
            aVarD.a(fileA.getParent(), fileA.getName());
            aVarD.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.k.3
                @Override // com.bytedance.sdk.component.f.a.a
                public void a(com.bytedance.sdk.component.f.b.c cVar, com.bytedance.sdk.component.f.b bVar) {
                    if (bVar.f() && bVar.e() != null && bVar.e().exists()) {
                        a aVar2 = aVar;
                        if (aVar2 != null) {
                            aVar2.a(true, null);
                        }
                        com.bytedance.sdk.component.utils.l.c("RewardVideoCache", "onFailure: RewardVideo preload success ");
                        k.this.a(true, qVar, bVar.a(), bVar.b());
                        return;
                    }
                    a aVar3 = aVar;
                    if (aVar3 != null) {
                        aVar3.a(false, null);
                    }
                    com.bytedance.sdk.component.utils.l.c("RewardVideoCache", "onFailure: RewardVideo preload fail ");
                    k.this.a(false, qVar, bVar.a(), bVar.b());
                }

                @Override // com.bytedance.sdk.component.f.a.a
                public void a(com.bytedance.sdk.component.f.b.c cVar, IOException iOException) {
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a(false, null);
                    }
                    com.bytedance.sdk.component.utils.l.c("RewardVideoCache", "onFailure: RewardVideo preload fail ");
                    k.this.a(false, qVar, -2L, iOException.getMessage());
                }
            });
        }
    }

    public void a(String str) {
        this.c.d(str);
    }

    public com.bytedance.sdk.openadsdk.core.model.a b(String str) {
        com.bytedance.sdk.openadsdk.core.model.a aVarB;
        long jB = this.c.b(str);
        boolean zC = this.c.c(str);
        if ((System.currentTimeMillis() - jB < 10500000) && !zC) {
            try {
                String strA = this.c.a(str);
                if (!TextUtils.isEmpty(strA)) {
                    JSONObject jSONObject = new JSONObject(strA);
                    if (jSONObject.has("creatives")) {
                        aVarB = com.bytedance.sdk.openadsdk.core.model.a.b(jSONObject);
                    } else {
                        q qVarA = com.bytedance.sdk.openadsdk.core.b.a(jSONObject);
                        com.bytedance.sdk.openadsdk.core.model.a aVar = new com.bytedance.sdk.openadsdk.core.model.a();
                        aVar.a(qVarA);
                        aVarB = aVar;
                    }
                    if (aVarB != null && aVarB.d()) {
                        Iterator<q> it = aVarB.c().iterator();
                        while (it.hasNext()) {
                            if (!a(it.next())) {
                                it.remove();
                            }
                        }
                        if (aVarB.d()) {
                            return aVarB;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
