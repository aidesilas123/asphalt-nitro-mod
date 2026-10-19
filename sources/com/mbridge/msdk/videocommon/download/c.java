package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: DownLoadManager.java */
/* JADX INFO: loaded from: classes4.dex */
public class c {
    private static volatile c a;
    private ThreadPoolExecutor b;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ConcurrentHashMap<String, n> f7600d = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ConcurrentHashMap<String, CopyOnWriteArrayList<Map<String, a>>> f7601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> f7602f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ConcurrentHashMap<String, CopyOnWriteArrayList<a>> f7603g;

    private c() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 15, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
        this.b = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public static c getInstance() {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    a = new c();
                }
            }
        }
        return a;
    }

    public final a a(String str, String str2) {
        n nVarC = c(str);
        if (nVarC != null) {
            return nVarC.a(str2);
        }
        return null;
    }

    public final CopyOnWriteArrayList<CampaignEx> a(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> concurrentHashMap = this.f7602f;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.f7602f.get(str);
    }

    public final void a() {
        ConcurrentHashMap<String, n> concurrentHashMap = this.f7600d;
        if (concurrentHashMap != null) {
            for (Map.Entry<String, n> entry : concurrentHashMap.entrySet()) {
                n value = entry.getValue();
                String key = entry.getKey();
                try {
                    Class.forName("com.mbridge.msdk.videocommon.d.a");
                    com.mbridge.msdk.videocommon.d.c cVarA = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), key);
                    if (cVarA != null) {
                        if (cVarA.w() == 2) {
                            value.b();
                        } else {
                            value.a();
                        }
                    }
                } catch (Exception e2) {
                    aa.d("DownLoadManager", e2.getMessage());
                    try {
                        if (!TextUtils.isEmpty(key)) {
                            com.mbridge.msdk.c.h hVarE = com.mbridge.msdk.c.f.a().e(com.mbridge.msdk.foundation.controller.b.d().h(), key);
                            if (hVarE == null) {
                                hVarE = com.mbridge.msdk.c.h.e(key);
                            }
                            if (hVarE.k() == 2) {
                                value.b();
                            } else {
                                value.a();
                            }
                        }
                    } catch (Exception e3) {
                        aa.d("DownLoadManager", e3.getMessage());
                    }
                }
            }
        }
    }

    public final void a(boolean z) {
        this.c = z;
        ConcurrentHashMap<String, n> concurrentHashMap = this.f7600d;
        if (concurrentHashMap != null) {
            Iterator<Map.Entry<String, n>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                n value = it.next().getValue();
                if (value != null) {
                    value.b();
                }
            }
        }
    }

    public final boolean a(int i, String str, boolean z) {
        try {
            n nVarC = c(str);
            if (nVarC != null) {
                return nVarC.a(i, z) != null;
            }
            return false;
        } catch (Exception e2) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            e2.printStackTrace();
            return false;
        }
    }

    public final boolean a(int i, String str, boolean z, int i2, boolean z2, int i3, List<CampaignEx> list) {
        return a(i, str, z, i2, z2, i3, list, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x018b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(int r15, java.lang.String r16, boolean r17, int r18, boolean r19, int r20, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r21, boolean r22) {
        /*
            Method dump skipped, instruction units count: 583
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.c.a(int, java.lang.String, boolean, int, boolean, int, java.util.List, boolean):boolean");
    }

    public final int b(String str, String str2) {
        CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayListC;
        a value;
        CampaignEx campaignExK;
        ConcurrentHashMap<String, n> concurrentHashMap = this.f7600d;
        if (concurrentHashMap != null) {
            Iterator<Map.Entry<String, n>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                n value2 = it.next().getValue();
                if (value2 != null && (copyOnWriteArrayListC = value2.c()) != null) {
                    int size = copyOnWriteArrayListC.size();
                    for (int i = 0; i < size; i++) {
                        Map<String, a> map = copyOnWriteArrayListC.get(i);
                        if (map != null) {
                            Iterator<Map.Entry<String, a>> it2 = map.entrySet().iterator();
                            if (it2.hasNext() && (value = it2.next().getValue()) != null && (campaignExK = value.k()) != null) {
                                String videoUrlEncode = campaignExK.getVideoUrlEncode();
                                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(videoUrlEncode) && str2.equals(videoUrlEncode)) {
                                    return value.j();
                                }
                            }
                        }
                    }
                }
            }
        }
        return 0;
    }

    public final CopyOnWriteArrayList<a> b(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<a>> concurrentHashMap = this.f7603g;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.f7603g.get(str);
    }

    public final void b(boolean z) {
        if (!z) {
            this.c = false;
        } else if (this.c) {
            return;
        }
        ConcurrentHashMap<String, n> concurrentHashMap = this.f7600d;
        if (concurrentHashMap != null) {
            Iterator<Map.Entry<String, n>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().a();
            }
        }
    }

    public final n c(String str) {
        ConcurrentHashMap<String, n> concurrentHashMap = this.f7600d;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.f7600d.get(str);
    }

    public n createUnitCache(Context context, String str, CampaignEx campaignEx, int i, com.mbridge.msdk.videocommon.listener.a aVar) {
        if (TextUtils.isEmpty(str) || campaignEx == null) {
            return null;
        }
        if (!this.f7600d.containsKey(str)) {
            n nVar = new n(context, campaignEx, this.b, str, i);
            if (aVar != null) {
                nVar.a(aVar);
            }
            this.f7600d.put(str, nVar);
            return nVar;
        }
        n nVar2 = this.f7600d.get(str);
        if (i == 94 || i == 287) {
            nVar2.a(campaignEx.getRequestId(), aVar);
        } else {
            nVar2.a(aVar);
        }
        nVar2.a(campaignEx);
        return nVar2;
    }

    public n createUnitCache(Context context, String str, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, int i, com.mbridge.msdk.videocommon.listener.a aVar) {
        if (TextUtils.isEmpty(str) || copyOnWriteArrayList == null || copyOnWriteArrayList.size() == 0) {
            return null;
        }
        if (!this.f7600d.containsKey(str)) {
            n nVar = new n(context, copyOnWriteArrayList, this.b, str, i);
            if (aVar != null) {
                nVar.a(aVar);
            }
            this.f7600d.put(str, nVar);
            return nVar;
        }
        n nVar2 = this.f7600d.get(str);
        if (i == 94 || i == 287) {
            nVar2.a(copyOnWriteArrayList.get(0).getRequestId(), aVar);
        } else {
            nVar2.a(aVar);
        }
        nVar2.a(copyOnWriteArrayList);
        return nVar2;
    }

    public void load(String str) {
        n nVarC = c(str);
        if (nVarC != null) {
            nVarC.a();
        }
    }
}
