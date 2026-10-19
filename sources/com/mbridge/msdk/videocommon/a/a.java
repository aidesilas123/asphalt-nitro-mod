package com.mbridge.msdk.videocommon.a;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.db.f;
import com.mbridge.msdk.foundation.db.h;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.a.d;
import com.mbridge.msdk.foundation.tools.aa;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: VideoCampaignCache.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static final String a = "com.mbridge.msdk.videocommon.a.a";
    private static a b;
    private f c;

    private a() {
        try {
            Context contextG = b.d().g();
            if (contextG != null) {
                this.c = f.a(h.a(contextG));
            } else {
                aa.d(a, "RewardCampaignCache get Context is null");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static synchronized a a() {
        if (b == null) {
            b = new a();
        }
        return b;
    }

    public final List<com.mbridge.msdk.foundation.entity.b> a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return this.c.d(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final List<CampaignEx> a(String str, int i, boolean z) {
        return a(str, i, z, "");
    }

    public final List<CampaignEx> a(List<CampaignEx> list) {
        ArrayList arrayList = null;
        if (list == null) {
            return null;
        }
        try {
            com.mbridge.msdk.videocommon.d.a aVarB = com.mbridge.msdk.videocommon.d.b.a().b();
            long jF = aVarB != null ? aVarB.f() : 0L;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (list.size() <= 0) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            try {
                for (CampaignEx campaignEx : list) {
                    if (campaignEx != null) {
                        long plct = campaignEx.getPlct() * 1000;
                        long timestamp = jCurrentTimeMillis - campaignEx.getTimestamp();
                        if ((plct > 0 && plct >= timestamp) || (plct <= 0 && jF >= timestamp)) {
                            arrayList2.add(campaignEx);
                        }
                    }
                }
                return arrayList2;
            } catch (Exception e2) {
                e = e2;
                arrayList = arrayList2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        e.printStackTrace();
        return arrayList;
    }

    public final CopyOnWriteArrayList<CampaignEx> a(String str, int i) {
        List<CampaignEx> listA;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = null;
        try {
            if (TextUtils.isEmpty(str) || (listA = this.c.a(str, 0, 0, i)) == null) {
                return null;
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
            try {
                for (CampaignEx campaignEx : listA) {
                    if (campaignEx != null) {
                        copyOnWriteArrayList2.add(campaignEx);
                    }
                }
                return copyOnWriteArrayList2;
            } catch (Exception e2) {
                e = e2;
                copyOnWriteArrayList = copyOnWriteArrayList2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        e.printStackTrace();
        return copyOnWriteArrayList;
    }

    public final CopyOnWriteArrayList<CampaignEx> a(String str, int i, boolean z, String str2) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = null;
        try {
            com.mbridge.msdk.videocommon.d.a aVarB = com.mbridge.msdk.videocommon.d.b.a().b();
            long jF = aVarB != null ? aVarB.f() : 0L;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            List<CampaignEx> listA = z ? this.c.a(str, 0, 0, i, str2) : this.c.a(str, 0, 0, i, false);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (listA == null) {
                return null;
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
            try {
                for (CampaignEx campaignEx : listA) {
                    if (campaignEx != null && (campaignEx.getReadyState() == 0 || campaignEx.getLoadTimeoutState() == 1)) {
                        long plct = campaignEx.getPlct() * 1000;
                        long timestamp = jCurrentTimeMillis - campaignEx.getTimestamp();
                        if ((plct > 0 && plct >= timestamp) || (plct <= 0 && jF >= timestamp)) {
                            copyOnWriteArrayList2.add(campaignEx);
                        }
                    }
                }
                return copyOnWriteArrayList2;
            } catch (Exception e2) {
                e = e2;
                copyOnWriteArrayList = copyOnWriteArrayList2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        e.printStackTrace();
        return copyOnWriteArrayList;
    }

    public final synchronized void a(long j, String str) {
        try {
            this.c.a(j, str);
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d(a, e2.getMessage());
        }
    }

    public final void a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getId())) {
                    return;
                }
                this.c.b(campaignEx.getId(), campaignEx.getRequestId());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void a(CampaignEx campaignEx, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (campaignEx.isBidCampaign()) {
                    d.b(str, campaignEx.getRequestId());
                }
                this.c.a(campaignEx.getId(), str, campaignEx.isBidCampaign(), campaignEx.getRequestId());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void a(String str, String str2) {
        if (this.c == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.c.f(str, str2);
    }

    public final void a(String str, String str2, List<CampaignEx> list) {
        try {
            if (TextUtils.isEmpty(str2) || list == null || list.size() <= 0) {
                return;
            }
            this.c.a(list, str, str2, 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(String str, List<CampaignEx> list) {
        f fVar;
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0 || (fVar = this.c) == null) {
            return;
        }
        fVar.b(str, list);
    }

    public final void a(String str, List<CampaignEx> list, String str2) {
        f fVar;
        try {
            if (TextUtils.isEmpty(str) || list == null || list.size() <= 0 || (fVar = this.c) == null) {
                return;
            }
            fVar.a(str, list, str2);
        } catch (Exception e2) {
            aa.d(a, e2.getMessage());
        }
    }

    public final void a(String str, List<CampaignEx> list, String str2, int i) {
        f fVar;
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0 || TextUtils.isEmpty(str2) || (fVar = this.c) == null) {
            return;
        }
        fVar.a(str, list, str2, i);
    }

    public final int b(String str, int i, boolean z, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            ArrayList arrayList = new ArrayList();
            List<CampaignEx> listA = z ? this.c.a(str, 0, 0, i, str2) : this.c.a(str, 0, 0, i, false);
            if (listA == null) {
                return 0;
            }
            for (CampaignEx campaignEx : listA) {
                if (campaignEx != null && campaignEx.getReadyState() == 0) {
                    arrayList.add(campaignEx);
                }
            }
            return arrayList.size();
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public final List<CampaignEx> b(String str, int i, boolean z) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return this.c.a(str, 0, 0, i, z);
        } catch (Exception e2) {
            aa.d(a, e2.getLocalizedMessage());
            return null;
        }
    }

    public final void b(String str) {
        ConcurrentHashMap<String, com.mbridge.msdk.foundation.entity.b> concurrentHashMapF;
        try {
            if (TextUtils.isEmpty(str) || (concurrentHashMapF = this.c.f(str)) == null || concurrentHashMapF.size() <= 0) {
                return;
            }
            e eVarB = com.mbridge.msdk.c.f.a().b(b.d().h());
            if (eVarB == null) {
                eVarB = com.mbridge.msdk.c.f.a().b();
            }
            long jQ = eVarB != null ? eVarB.Q() : 0L;
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (com.mbridge.msdk.foundation.entity.b bVar : concurrentHashMapF.values()) {
                if (bVar != null) {
                    long jD = bVar.d();
                    if (jD <= 0) {
                        jD = jQ;
                    }
                    if (bVar.e() + (jD * 1000) < jCurrentTimeMillis && !TextUtils.isEmpty(bVar.b())) {
                        c(str, bVar.b());
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void b(String str, int i) {
        int size;
        try {
            List<com.mbridge.msdk.foundation.entity.b> listD = this.c.d(str);
            if (listD == null || listD.size() <= 0 || (size = listD.size() - i) <= 0) {
                return;
            }
            for (int i2 = 0; i2 < size; i2++) {
                c(str, listD.get(i2).b());
                d.b(str, listD.get(i2).b());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void b(String str, String str2) {
        f fVar = this.c;
        if (fVar != null) {
            fVar.e(str, str2);
        }
    }

    public final List<String> c(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            return this.c.e(str);
        } catch (Exception e2) {
            if (!MBridgeConstans.DEBUG) {
                return arrayList;
            }
            e2.printStackTrace();
            return arrayList;
        }
    }

    public final List<CampaignEx> c(String str, int i, boolean z, String str2) {
        ArrayList arrayList = null;
        try {
            e eVarB = com.mbridge.msdk.c.f.a().b(b.d().h());
            long jQ = (eVarB != null ? eVarB.Q() : com.mbridge.msdk.c.f.a().b().Q()) * 1000;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            List<CampaignEx> listA = z ? this.c.a(str, 0, 0, i, str2) : this.c.a(str, 0, 0, i, false);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (listA == null) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            try {
                for (CampaignEx campaignEx : listA) {
                    if (campaignEx != null && campaignEx.getReadyState() == 0) {
                        long plctb = campaignEx.getPlctb() * 1000;
                        long timestamp = jCurrentTimeMillis - campaignEx.getTimestamp();
                        if ((plctb <= 0 && jQ >= timestamp) || (plctb > 0 && plctb >= timestamp)) {
                            arrayList2.add(campaignEx);
                        }
                    }
                }
                return arrayList2;
            } catch (Exception e2) {
                e = e2;
                arrayList = arrayList2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        e.printStackTrace();
        return arrayList;
    }

    public final synchronized void c(String str, int i) {
        try {
            e eVarB = com.mbridge.msdk.c.f.a().b(b.d().h());
            if (eVarB == null) {
                eVarB = com.mbridge.msdk.c.f.a().b();
            }
            int iAA = eVarB.aA();
            if (iAA == 0) {
                return;
            }
            boolean z = true;
            List<CampaignEx> listB = this.c.b(str, i, iAA == 2);
            if (listB != null && listB.size() > 0) {
                for (CampaignEx campaignEx : listB) {
                    String requestIdNotice = campaignEx.getRequestIdNotice();
                    String id = campaignEx.getId();
                    com.mbridge.msdk.videocommon.a.b(campaignEx.getCampaignUnitId() + "_" + id + "_" + requestIdNotice + "_" + campaignEx.getCMPTEntryUrl());
                }
            }
            f fVar = this.c;
            if (iAA != 2) {
                z = false;
            }
            fVar.a(str, i, z);
        } catch (Exception e2) {
            aa.d(a, e2.getMessage());
        }
    }

    public final synchronized void c(String str, String str2) {
        try {
            this.c.c(str2, str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
