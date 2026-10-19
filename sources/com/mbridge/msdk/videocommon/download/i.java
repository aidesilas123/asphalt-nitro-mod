package com.mbridge.msdk.videocommon.download;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: ResDownloadCheckManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class i {
    private static ConcurrentHashMap<String, Boolean> b = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, Boolean> a;
    private ConcurrentHashMap<String, Boolean> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ConcurrentHashMap<String, Boolean> f7612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ConcurrentHashMap<String, Boolean> f7613e;

    /* JADX INFO: compiled from: ResDownloadCheckManager.java */
    private static final class a {
        public static i a = new i();
    }

    private i() {
        this.a = new ConcurrentHashMap<>();
        this.c = new ConcurrentHashMap<>();
        this.f7612d = new ConcurrentHashMap<>();
        this.f7613e = new ConcurrentHashMap<>();
    }

    public static i a() {
        return a.a;
    }

    public final void a(String str, boolean z) {
        if (this.a == null) {
            this.a = new ConcurrentHashMap<>();
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.put(str, Boolean.valueOf(z));
    }

    public final void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        List<CampaignEx.c.a> listF;
        List<String> list;
        ConcurrentHashMap<String, Boolean> concurrentHashMap;
        ConcurrentHashMap<String, Boolean> concurrentHashMap2;
        ConcurrentHashMap<String, Boolean> concurrentHashMap3;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() == 0) {
            return;
        }
        for (CampaignEx campaignEx : copyOnWriteArrayList) {
            if (campaignEx != null) {
                String videoUrlEncode = campaignEx.getVideoUrlEncode();
                if (!TextUtils.isEmpty(videoUrlEncode) && (concurrentHashMap3 = this.a) != null && !concurrentHashMap3.containsKey(videoUrlEncode)) {
                    this.a.put(videoUrlEncode, Boolean.FALSE);
                }
                String str = campaignEx.getendcard_url();
                if (!TextUtils.isEmpty(str) && (concurrentHashMap2 = this.c) != null && !concurrentHashMap2.containsKey(str)) {
                    this.c.put(str, Boolean.FALSE);
                }
                CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
                if (rewardTemplateMode != null && (listF = rewardTemplateMode.f()) != null) {
                    for (CampaignEx.c.a aVar : listF) {
                        if (aVar != null && (list = aVar.b) != null && list.size() != 0) {
                            for (String str2 : list) {
                                if (!TextUtils.isEmpty(str2) && (concurrentHashMap = b) != null && !concurrentHashMap.containsKey(str2)) {
                                    b.put(str2, Boolean.valueOf(com.mbridge.msdk.foundation.same.c.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).b(str2)));
                                }
                            }
                        }
                    }
                }
                String id = campaignEx.getId();
                if (this.f7612d == null) {
                    this.f7612d = new ConcurrentHashMap<>();
                }
                if (!TextUtils.isEmpty(id)) {
                    this.f7612d.put(id, Boolean.FALSE);
                }
            }
        }
    }

    public final boolean a(String str) {
        if (this.a == null || TextUtils.isEmpty(str) || !this.a.containsKey(str)) {
            return false;
        }
        return this.a.get(str).booleanValue();
    }

    public final void b(String str, boolean z) {
        if (this.c == null) {
            this.c = new ConcurrentHashMap<>();
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.c.put(str, Boolean.valueOf(z));
    }

    public final boolean b(String str) {
        if (this.c == null || TextUtils.isEmpty(str) || !this.c.containsKey(str)) {
            return false;
        }
        return this.c.get(str).booleanValue();
    }

    public final void c(String str, boolean z) {
        if (b == null) {
            b = new ConcurrentHashMap<>();
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        b.put(str, Boolean.valueOf(z));
    }

    public final boolean c(String str) {
        if (!TextUtils.isEmpty(str) && this.f7613e.containsKey(str)) {
            return this.f7613e.get(str).booleanValue();
        }
        return false;
    }

    public final void d(String str, boolean z) {
        if (this.f7613e == null) {
            this.f7613e = new ConcurrentHashMap<>();
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f7613e.put(str, Boolean.valueOf(z));
    }
}
