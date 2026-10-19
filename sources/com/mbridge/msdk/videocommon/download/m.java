package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ak;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: UnitCacheControllerRefactor.java */
/* JADX INFO: loaded from: classes4.dex */
public final class m {
    private com.mbridge.msdk.videocommon.listener.a a;
    private ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> b;
    private final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f7614d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.d.c f7615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f7616f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final CopyOnWriteArrayList<CampaignEx> f7617g;
    private final ConcurrentHashMap<String, com.mbridge.msdk.videocommon.download.a> h;

    /* JADX INFO: compiled from: UnitCacheControllerRefactor.java */
    private static final class a implements com.mbridge.msdk.videocommon.listener.a {
        private final String a;
        private final ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> b;
        private final com.mbridge.msdk.videocommon.listener.a c;

        public a(String str, ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> concurrentHashMap, com.mbridge.msdk.videocommon.listener.a aVar) {
            this.a = str;
            this.b = concurrentHashMap;
            this.c = aVar;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public final void a(String str) {
            com.mbridge.msdk.videocommon.listener.a aVar = this.c;
            if (aVar != null) {
                try {
                    aVar.a(str);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        aa.d("RewardVideoRefactorManager", this.a + " videoDownloadListener onDownLoadDone error: " + e2.getMessage());
                    }
                }
            }
            ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> concurrentHashMap = this.b;
            if (concurrentHashMap != null) {
                Iterator<com.mbridge.msdk.videocommon.listener.a> it = concurrentHashMap.values().iterator();
                while (it.hasNext()) {
                    try {
                        it.next().a(str);
                    } catch (Exception e3) {
                        if (MBridgeConstans.DEBUG) {
                            aa.d("RewardVideoRefactorManager", this.a + " videoDownloadListener onDownLoadDone error: " + e3.getMessage());
                        }
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public final void a(String str, String str2) {
            com.mbridge.msdk.videocommon.listener.a aVar = this.c;
            if (aVar != null) {
                try {
                    aVar.a(str, str2);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        aa.d("RewardVideoRefactorManager", this.a + " videoDownloadListener onDownLoadFailed error: " + e2.getMessage());
                    }
                }
            }
            ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> concurrentHashMap = this.b;
            if (concurrentHashMap != null) {
                Iterator<com.mbridge.msdk.videocommon.listener.a> it = concurrentHashMap.values().iterator();
                while (it.hasNext()) {
                    try {
                        it.next().a(str, str2);
                    } catch (Exception e3) {
                        if (MBridgeConstans.DEBUG) {
                            aa.d("RewardVideoRefactorManager", this.a + " videoDownloadListener onDownLoadFailed error: " + e3.getMessage());
                        }
                    }
                }
            }
        }
    }

    public m(CampaignEx campaignEx, String str, int i) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.f7617g = copyOnWriteArrayList;
        this.h = new ConcurrentHashMap<>();
        this.c = com.mbridge.msdk.foundation.controller.b.d().g();
        this.f7614d = str;
        this.f7616f = i;
        if (campaignEx != null) {
            copyOnWriteArrayList.add(campaignEx);
        }
    }

    public m(List<CampaignEx> list, String str, int i) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.f7617g = copyOnWriteArrayList;
        this.h = new ConcurrentHashMap<>();
        this.c = com.mbridge.msdk.foundation.controller.b.d().g();
        this.f7614d = str;
        this.f7616f = i;
        if (list != null) {
            copyOnWriteArrayList.addAll(list);
        }
    }

    private com.mbridge.msdk.videocommon.download.a a(CampaignEx campaignEx, String str, com.mbridge.msdk.videocommon.download.a aVar) {
        if (aVar != null) {
            return aVar;
        }
        com.mbridge.msdk.videocommon.download.a aVarC = c(campaignEx);
        aVarC.m();
        this.h.put(str, aVarC);
        return aVarC;
    }

    private boolean a(String str, CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar) {
        if (campaignEx != null && aVar != null) {
            try {
                if (aVar.b()) {
                    aa.a("RewardVideoRefactorManager", this.f7614d + " checkEndCardZipOrSourceDownLoad endCard download success");
                    return true;
                }
                if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                    return true;
                }
                if ((campaignEx.isDynamicView() && !af.j(str)) || ak.a(str)) {
                    return true;
                }
                if ((campaignEx.isMraid() || TextUtils.isEmpty(str) || (campaignEx.getLoadTimeoutState() == 1 && !e(campaignEx)) || ((campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(2)) || ak.b(j.a(str)))) ? true : ak.b(j.b(str))) {
                    return true;
                }
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    aa.a("RewardVideoRefactorManager", this.f7614d + " checkEndCardDownload error " + th.getMessage());
                }
            }
        }
        return false;
    }

    private String b(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return "";
        }
        try {
            CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
            if (rewardTemplateMode != null) {
                return rewardTemplateMode.e();
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.b("RewardVideoRefactorManager", this.f7614d + " getVideoTemplateUrl error", e2);
            }
        }
        return "";
    }

    private com.mbridge.msdk.videocommon.d.c c(String str) {
        try {
            if (this.f7615e == null) {
                this.f7615e = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), str, this.f7616f == 287);
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.a("RewardVideoRefactorManager", this.f7614d + " getRewardUnitSetting error " + e2.getMessage());
            }
        }
        return this.f7615e;
    }

    private com.mbridge.msdk.videocommon.download.a c(CampaignEx campaignEx) {
        com.mbridge.msdk.videocommon.download.a aVar;
        com.mbridge.msdk.videocommon.download.a aVar2 = null;
        try {
            aVar = new com.mbridge.msdk.videocommon.download.a(this.c, campaignEx, this.f7614d, f());
        } catch (Exception e2) {
            e = e2;
        }
        try {
            aVar.a(campaignEx);
            aVar.d(this.f7616f);
            aVar.c(f(campaignEx));
            aVar.b(e());
            aVar.e(d(campaignEx));
            aVar.a((d) null);
            aVar.a(new a(this.f7614d, this.b, this.a));
            return aVar;
        } catch (Exception e3) {
            e = e3;
            aVar2 = aVar;
            if (MBridgeConstans.DEBUG) {
                aa.a("RewardVideoRefactorManager", this.f7614d + " createAndStartCampaignDownloadTask error " + e.getMessage());
            }
            return aVar2;
        }
    }

    private int d(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return 1;
        }
        try {
            return campaignEx.getVideoCtnType();
        } catch (Exception e2) {
            if (!MBridgeConstans.DEBUG) {
                return 1;
            }
            aa.a("RewardVideoRefactorManager", this.f7614d + " getVideoCtnType error " + e2.getMessage());
            return 1;
        }
    }

    private int e() {
        com.mbridge.msdk.videocommon.d.c cVarC = c(this.f7614d);
        if (cVarC == null) {
            return 0;
        }
        try {
            return cVarC.s();
        } catch (Exception e2) {
            if (!MBridgeConstans.DEBUG) {
                return 0;
            }
            aa.a("RewardVideoRefactorManager", this.f7614d + " getCDRate error " + e2.getMessage());
            return 0;
        }
    }

    private boolean e(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return false;
        }
        try {
            return campaignEx.getPlayable_ads_without_video() == 2;
        } catch (Throwable th) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            aa.a("RewardVideoRefactorManager", this.f7614d + " isPlayerAbleAds error:" + th.getMessage());
            return false;
        }
    }

    private int f() {
        if (TextUtils.isEmpty(this.f7614d)) {
            return 1;
        }
        try {
            com.mbridge.msdk.videocommon.d.c cVarC = c(this.f7614d);
            if (cVarC != null) {
                return cVarC.w();
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.a("RewardVideoRefactorManager", this.f7614d + " getDlnet error " + e2.getMessage());
            }
        }
        return 1;
    }

    private int f(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return -1;
        }
        return campaignEx.getReady_rate() != -1 ? campaignEx.getReady_rate() : g();
    }

    private int g() {
        try {
            return c(this.f7614d).r();
        } catch (Throwable th) {
            if (!MBridgeConstans.DEBUG) {
                return 100;
            }
            aa.a("RewardVideoRefactorManager", this.f7614d + " getRewardReadyRate error:" + th.getMessage());
            return 100;
        }
    }

    public final com.mbridge.msdk.videocommon.download.a a(String str) {
        if (!TextUtils.isEmpty(str) && this.h.containsKey(str)) {
            return this.h.get(str);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01b6 A[Catch: Exception -> 0x035c, TryCatch #2 {Exception -> 0x035c, blocks: (B:13:0x002d, B:132:0x01b2, B:134:0x01b6, B:135:0x01cc, B:143:0x01dc, B:145:0x01e1, B:146:0x01e4, B:148:0x01e8, B:150:0x01ee, B:151:0x01f3, B:155:0x025b, B:170:0x0307), top: B:183:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01d2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01e1 A[Catch: Exception -> 0x035c, TryCatch #2 {Exception -> 0x035c, blocks: (B:13:0x002d, B:132:0x01b2, B:134:0x01b6, B:135:0x01cc, B:143:0x01dc, B:145:0x01e1, B:146:0x01e4, B:148:0x01e8, B:150:0x01ee, B:151:0x01f3, B:155:0x025b, B:170:0x0307), top: B:183:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x01e8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x001d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.mbridge.msdk.videocommon.download.a> a(java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r19, boolean r20) {
        /*
            Method dump skipped, instruction units count: 913
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.m.a(java.util.List, boolean):java.util.List");
    }

    public final void a() {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f7617g;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() == 0) {
            aa.a("RewardVideoRefactorManager", this.f7614d + " load campaignExes is null");
            return;
        }
        for (CampaignEx campaignEx : copyOnWriteArrayList) {
            if (campaignEx != null) {
                try {
                    String str = campaignEx.getRequestId() + campaignEx.getId() + campaignEx.getVideoUrlEncode();
                    if (!this.h.containsKey(str)) {
                        a(campaignEx, str, (com.mbridge.msdk.videocommon.download.a) null);
                    }
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        aa.b("RewardVideoRefactorManager", this.f7614d + " handlerCampaignLoadEvent error", e2);
                    }
                }
            }
        }
    }

    public final void a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                this.f7617g.add(campaignEx);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.b("RewardVideoRefactorManager", this.f7614d + " update error", e2);
                }
            }
        }
    }

    public final void a(com.mbridge.msdk.videocommon.listener.a aVar) {
        this.a = aVar;
    }

    public final void a(String str, com.mbridge.msdk.videocommon.listener.a aVar) {
        if (this.b == null) {
            this.b = new ConcurrentHashMap<>();
        }
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.b.put(str, aVar);
    }

    public final void a(List<CampaignEx> list) {
        if (list != null) {
            try {
                this.f7617g.addAll(list);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.b("RewardVideoRefactorManager", this.f7614d + " update error", e2);
                }
            }
        }
    }

    public final com.mbridge.msdk.videocommon.download.a b() {
        List<com.mbridge.msdk.videocommon.download.a> listA;
        if (this.f7617g.size() == 0) {
            aa.a("RewardVideoRefactorManager", this.f7614d + " isReady campaignExes is null");
            return null;
        }
        try {
            listA = a((List<CampaignEx>) this.f7617g, false);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.b("RewardVideoRefactorManager", this.f7614d + " isReady error", e2);
            }
            listA = null;
        }
        if (listA == null || listA.size() <= 0) {
            return null;
        }
        return listA.get(0);
    }

    public final void b(String str) {
        com.mbridge.msdk.videocommon.download.a aVarRemove;
        CampaignEx campaignExK;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (!this.h.containsKey(str) || (aVarRemove = this.h.remove(str)) == null || (campaignExK = aVarRemove.k()) == null) {
                return;
            }
            this.f7617g.remove(campaignExK);
            if (MBridgeConstans.DEBUG) {
                aa.a("RewardVideoRefactorManager", this.f7614d + " removeCampaignDownloadTask campaign name: " + campaignExK.getAppName());
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.d("RewardVideoRefactorManager", this.f7614d + " removeCampaignDownloadTask error:" + e2.getMessage());
            }
        }
    }

    public final com.mbridge.msdk.videocommon.download.a c() {
        try {
            return b();
        } catch (Throwable th) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            aa.d("RewardVideoRefactorManager", this.f7614d + " getCampaignDownLoadTask error:" + th.getMessage());
            return null;
        }
    }

    public final CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> d() {
        try {
            CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            copyOnWriteArrayList.add(this.h);
            return copyOnWriteArrayList;
        } catch (Exception e2) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            aa.d("RewardVideoRefactorManager", this.f7614d + " getCampaignDownLoadTaskList error:" + e2.getMessage());
            return null;
        }
    }
}
