package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.videocommon.download.h;
import com.mbridge.msdk.videocommon.download.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: UnitCacheCtroller.java */
/* JADX INFO: loaded from: classes4.dex */
public final class n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f7619e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> f7621g;
    private Context j;
    private ExecutorService k;
    private String m;
    private com.mbridge.msdk.videocommon.d.c n;
    private int p;
    private m q;
    private boolean r;
    private List<CampaignEx> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7618d = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7620f = "";
    private d h = new d() { // from class: com.mbridge.msdk.videocommon.download.n.1
        @Override // com.mbridge.msdk.videocommon.download.d
        public final void a(long j, int i) {
            if (i == 5 || i == 4) {
                n.this.f7618d = true;
                n.this.a();
            }
            if (i == 2) {
                n.this.f7618d = true;
            }
        }
    };
    private CopyOnWriteArrayList<Map<String, a>> i = new CopyOnWriteArrayList<>();
    private long l = 3600;
    private int o = 1;
    com.mbridge.msdk.c.h a = null;
    com.mbridge.msdk.c.h b = null;

    public n(Context context, CampaignEx campaignEx, ExecutorService executorService, String str, int i) {
        this.p = 1;
        try {
            boolean zA = l.a.a.a(i);
            this.r = zA;
            if (zA) {
                this.m = str;
                this.p = i;
                this.q = new m(campaignEx, str, i);
                return;
            }
        } catch (Exception unused) {
            this.q = null;
            this.r = false;
        }
        this.j = com.mbridge.msdk.foundation.controller.b.d().g();
        List<CampaignEx> list = this.c;
        if (list != null && campaignEx != null) {
            list.add(campaignEx);
        }
        this.k = executorService;
        this.m = str;
        this.p = i;
        b(this.c);
    }

    public n(Context context, List<CampaignEx> list, ExecutorService executorService, String str, int i) {
        this.p = 1;
        try {
            boolean zA = l.a.a.a(i);
            this.r = zA;
            if (zA) {
                this.m = str;
                this.p = i;
                this.q = new m(list, str, i);
                return;
            }
        } catch (Exception unused) {
            this.q = null;
            this.r = false;
        }
        this.j = com.mbridge.msdk.foundation.controller.b.d().g();
        List<CampaignEx> list2 = this.c;
        if (list2 != null && list != null) {
            list2.addAll(list);
        }
        this.k = executorService;
        this.m = str;
        this.p = i;
        b(this.c);
    }

    private boolean a(int i, CampaignEx campaignEx, String str) {
        if (campaignEx.isDynamicView()) {
            return true;
        }
        if (campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(1)) {
            return (!TextUtils.isEmpty(str) && campaignEx.getLoadTimeoutState() == 0 && g.a().b(str) == null) ? false : true;
        }
        aa.b("UnitCacheCtroller", "Is not check template download status");
        return true;
    }

    public static boolean a(a aVar, int i) {
        long jL = aVar.l();
        long jI = aVar.i();
        if (TextUtils.isEmpty(aVar.e())) {
            aa.a("UnitCacheCtroller", "checkVideoDownload video done return true");
            return true;
        }
        if (i == 0) {
            if (aVar.k() != null && !TextUtils.isEmpty(aVar.k().getVideoUrlEncode())) {
                return true;
            }
        } else if (jI > 0 && jL * 100 >= jI * ((long) i)) {
            if (i != 100 || aVar.j() == 5) {
                return true;
            }
            aVar.r();
            return false;
        }
        return false;
    }

    private static boolean a(a aVar, int i, boolean z) {
        long jL = aVar.l();
        long jI = aVar.i();
        if (TextUtils.isEmpty(aVar.e())) {
            aa.a("UnitCacheCtroller", "checkVideoDownload video done return true");
            return true;
        }
        CampaignEx campaignExK = aVar.k();
        if (campaignExK != null) {
            if (campaignExK.getRsIgnoreCheckRule() != null && campaignExK.getRsIgnoreCheckRule().size() > 0 && campaignExK.getRsIgnoreCheckRule().contains(0)) {
                aa.b("UnitCacheCtroller", "Is not check video download status");
                return true;
            }
            if (campaignExK.getIsTimeoutCheckVideoStatus() == 1 && campaignExK.getVideoCheckType() == 1) {
                return true;
            }
            if (z && campaignExK.getVideoCheckType() == 1) {
                if (i == 0) {
                    return true;
                }
                if ((jI != 0 || jL != 0) && jL >= ((long) (i / 100)) * jI) {
                    campaignExK.setIsTimeoutCheckVideoStatus(1);
                    return true;
                }
            }
        }
        return a(aVar, i);
    }

    private boolean a(String str, CampaignEx campaignEx) {
        try {
            if (campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(2)) {
                return (campaignEx.isDynamicView() && !af.j(str)) || ak.a(str) || b(str, campaignEx);
            }
            aa.b("UnitCacheCtroller", "Is not check endCard download status : " + str);
            return true;
        } catch (Throwable th) {
            aa.b("UnitCacheCtroller", th.getMessage(), th);
            return false;
        }
    }

    private boolean a(CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayList) {
        try {
            for (Map<String, a> map : copyOnWriteArrayList) {
                if (map != null) {
                    Iterator<Map.Entry<String, a>> it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        if (it.next().getValue().j() == 1) {
                            return true;
                        }
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    private int b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            return campaignEx.getReady_rate() != -1 ? campaignEx.getReady_rate() : e(campaignEx);
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x00b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r13) {
        /*
            Method dump skipped, instruction units count: 544
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.n.b(java.util.List):void");
    }

    private boolean b(String str, CampaignEx campaignEx) {
        if (campaignEx.isMraid() || TextUtils.isEmpty(str)) {
            return true;
        }
        if (campaignEx.getLoadTimeoutState() == 1 && !c(campaignEx)) {
            return true;
        }
        if (campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(2)) {
            return ak.b(g.a().b(str)) || ak.b(h.a.a.b(str));
        }
        aa.b("UnitCacheCtroller", "Is not check endCard download status : " + str);
        return true;
    }

    private boolean c(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return false;
        }
        try {
            return campaignEx.getPlayable_ads_without_video() == 2;
        } catch (Throwable th) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    private int d(CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.c.h hVar = this.a;
            if (hVar != null) {
                return hVar.f();
            }
            return 100;
        } catch (Exception unused) {
            return 100;
        }
    }

    private void d() {
        CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayList;
        if ((this.r && this.q != null) || ac.a().a("u_n_c_e_d", true) || (copyOnWriteArrayList = this.i) == null) {
            return;
        }
        try {
            synchronized (copyOnWriteArrayList) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                int i = 0;
                while (i < this.i.size()) {
                    Map<String, a> map = this.i.get(i);
                    Iterator<Map.Entry<String, a>> it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        a value = it.next().getValue();
                        if (value != null) {
                            if (jCurrentTimeMillis - value.g() > this.l * 1000 && value.j() == 1) {
                                value.b("download timeout");
                                value.a(this.o);
                                value.r();
                                this.i.remove(map);
                                i--;
                            }
                            if (value.j() != 1 && value.j() != 5 && value.j() != 0) {
                                value.r();
                                this.i.remove(map);
                                i--;
                            }
                        }
                    }
                    i++;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private int e(CampaignEx campaignEx) {
        try {
            if (campaignEx.getAdType() == 298) {
                if (this.b == null) {
                    this.b = com.mbridge.msdk.c.f.a().c(com.mbridge.msdk.foundation.controller.b.d().h(), this.m);
                }
                return this.b.f();
            }
            if (campaignEx.getAdType() == 42) {
                return d(null);
            }
            if (this.n == null) {
                this.n = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), this.m, false);
            }
            return this.n.r();
        } catch (Throwable th) {
            aa.b("UnitCacheCtroller", th.getMessage(), th);
            return 100;
        }
    }

    private void e() {
        CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayList = this.i;
        if (copyOnWriteArrayList != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    int i = 0;
                    while (i < this.i.size()) {
                        Map<String, a> map = this.i.get(i);
                        Iterator<Map.Entry<String, a>> it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            a value = it.next().getValue();
                            if (value != null && value.k() != null && value.f()) {
                                value.q();
                                this.i.remove(map);
                                i--;
                            }
                        }
                        i++;
                    }
                }
            } catch (Throwable unused) {
                aa.d("UnitCacheCtroller", "cleanDisplayTask ERROR");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x01a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x014f A[Catch: all -> 0x0281, Exception -> 0x0283, TRY_ENTER, TryCatch #1 {Exception -> 0x0283, blocks: (B:11:0x0019, B:15:0x0025, B:28:0x0071, B:29:0x0076, B:31:0x007e, B:32:0x008e, B:34:0x0094, B:36:0x00a2, B:39:0x00aa, B:40:0x00b4, B:42:0x00ba, B:49:0x00d8, B:52:0x00e0, B:55:0x00e8, B:57:0x00f8, B:58:0x0100, B:83:0x014f, B:85:0x0161, B:91:0x0172, B:93:0x0178, B:95:0x018e, B:99:0x0198, B:107:0x01a4, B:109:0x01b1, B:111:0x01bb, B:113:0x01c8, B:119:0x01e2, B:121:0x01e8, B:123:0x01ee, B:128:0x0201, B:134:0x0214, B:137:0x0220, B:140:0x0229, B:142:0x022d, B:144:0x0237, B:148:0x023f, B:151:0x0249, B:153:0x0253, B:62:0x010d, B:64:0x0113, B:66:0x011d, B:69:0x0126, B:71:0x012c, B:73:0x0132, B:75:0x013b, B:79:0x0143, B:19:0x0033, B:21:0x003f, B:27:0x0057, B:162:0x0277, B:25:0x0049), top: B:176:0x0019, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0172 A[Catch: all -> 0x0281, Exception -> 0x0283, TRY_ENTER, TryCatch #1 {Exception -> 0x0283, blocks: (B:11:0x0019, B:15:0x0025, B:28:0x0071, B:29:0x0076, B:31:0x007e, B:32:0x008e, B:34:0x0094, B:36:0x00a2, B:39:0x00aa, B:40:0x00b4, B:42:0x00ba, B:49:0x00d8, B:52:0x00e0, B:55:0x00e8, B:57:0x00f8, B:58:0x0100, B:83:0x014f, B:85:0x0161, B:91:0x0172, B:93:0x0178, B:95:0x018e, B:99:0x0198, B:107:0x01a4, B:109:0x01b1, B:111:0x01bb, B:113:0x01c8, B:119:0x01e2, B:121:0x01e8, B:123:0x01ee, B:128:0x0201, B:134:0x0214, B:137:0x0220, B:140:0x0229, B:142:0x022d, B:144:0x0237, B:148:0x023f, B:151:0x0249, B:153:0x0253, B:62:0x010d, B:64:0x0113, B:66:0x011d, B:69:0x0126, B:71:0x012c, B:73:0x0132, B:75:0x013b, B:79:0x0143, B:19:0x0033, B:21:0x003f, B:27:0x0057, B:162:0x0277, B:25:0x0049), top: B:176:0x0019, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.mbridge.msdk.videocommon.download.a a(int r25, boolean r26) {
        /*
            Method dump skipped, instruction units count: 654
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.n.a(int, boolean):com.mbridge.msdk.videocommon.download.a");
    }

    public final a a(String str) {
        m mVar;
        if (this.r && (mVar = this.q) != null) {
            return mVar.a(str);
        }
        CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayList = this.i;
        if (copyOnWriteArrayList == null) {
            return null;
        }
        synchronized (copyOnWriteArrayList) {
            try {
            } catch (Throwable unused) {
                aa.d("UnitCacheCtroller", "failed to get campaignTast by cid");
            }
            for (Map<String, a> map : this.i) {
                if (map != null && map.containsKey(str)) {
                    return map.get(str);
                }
                return null;
            }
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0144 A[Catch: all -> 0x0229, Exception -> 0x022b, TryCatch #0 {Exception -> 0x022b, blocks: (B:11:0x0021, B:12:0x0026, B:14:0x002e, B:15:0x003e, B:17:0x0044, B:19:0x0052, B:22:0x005a, B:23:0x0063, B:25:0x0069, B:28:0x0073, B:30:0x007d, B:32:0x0087, B:34:0x0095, B:36:0x00a3, B:38:0x00ad, B:39:0x00b4, B:41:0x00be, B:47:0x00cf, B:50:0x00d7, B:53:0x00df, B:55:0x00ef, B:56:0x00f7, B:78:0x0144, B:80:0x0153, B:82:0x0159, B:84:0x016b, B:86:0x0173, B:87:0x0177, B:89:0x017e, B:95:0x0186, B:97:0x0193, B:99:0x019d, B:101:0x01ab, B:115:0x01da, B:118:0x01e1, B:120:0x01e5, B:122:0x01ef, B:124:0x01f5, B:129:0x0201, B:131:0x020b, B:133:0x0211, B:111:0x01ca, B:59:0x0104, B:61:0x010a, B:63:0x0112, B:66:0x0119, B:68:0x011f, B:70:0x0125, B:72:0x012c, B:74:0x0132, B:75:0x0136, B:77:0x0140), top: B:147:0x0021, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.mbridge.msdk.videocommon.download.a> a(java.lang.String r26, int r27, boolean r28, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r29, boolean r30) {
        /*
            Method dump skipped, instruction units count: 564
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.n.a(java.lang.String, int, boolean, java.util.List, boolean):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00db A[Catch: all -> 0x0223, TryCatch #1 {, blocks: (B:11:0x0016, B:13:0x001f, B:14:0x0021, B:15:0x0027, B:17:0x002d, B:20:0x0036, B:21:0x003e, B:23:0x0044, B:26:0x0054, B:29:0x005b, B:31:0x0061, B:32:0x0063, B:35:0x006f, B:36:0x007f, B:38:0x0090, B:40:0x0094, B:41:0x009c, B:42:0x00a0, B:48:0x00b5, B:50:0x00b9, B:51:0x00cd, B:53:0x00d1, B:55:0x00d7, B:57:0x00db, B:59:0x00df, B:60:0x00f3, B:62:0x00f7, B:74:0x0125, B:76:0x012a, B:78:0x0130, B:80:0x0163, B:82:0x0167, B:85:0x016f, B:86:0x0176, B:88:0x017a, B:90:0x0180, B:92:0x018f, B:94:0x019b, B:98:0x01c9, B:97:0x01c0, B:102:0x01d5, B:106:0x01de, B:108:0x01e9, B:110:0x01ed, B:113:0x01f1, B:116:0x01f7, B:118:0x0202, B:122:0x020a, B:123:0x020f, B:129:0x021c, B:128:0x0219, B:63:0x00fc, B:65:0x0100, B:69:0x0115, B:70:0x011b, B:72:0x011f, B:130:0x0221), top: B:138:0x0016, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() {
        /*
            Method dump skipped, instruction units count: 551
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.n.a():void");
    }

    public final void a(CampaignEx campaignEx) {
        m mVar;
        if (this.r && (mVar = this.q) != null) {
            mVar.a(campaignEx);
            return;
        }
        List<CampaignEx> list = this.c;
        if (list != null && campaignEx != null) {
            list.add(campaignEx);
        }
        b(this.c);
    }

    public final void a(com.mbridge.msdk.videocommon.listener.a aVar) {
        m mVar;
        if (!this.r || (mVar = this.q) == null) {
            this.f7619e = aVar;
        } else {
            mVar.a(aVar);
        }
    }

    public final void a(String str, com.mbridge.msdk.videocommon.listener.a aVar) {
        m mVar;
        if (this.r && (mVar = this.q) != null) {
            mVar.a(str, aVar);
            return;
        }
        if (this.f7621g == null) {
            this.f7621g = new ConcurrentHashMap<>();
        }
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f7621g.put(str, aVar);
    }

    public final void a(List<CampaignEx> list) {
        m mVar;
        if (this.r && (mVar = this.q) != null) {
            mVar.a(list);
            return;
        }
        List<CampaignEx> list2 = this.c;
        if (list2 != null && list != null) {
            list2.addAll(list);
        }
        b(this.c);
    }

    public final boolean a(List<CampaignEx> list, String str) {
        if (list == null || list.size() == 0) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            CampaignEx campaignEx = list.get(i);
            if (campaignEx == null || !a(new a(com.mbridge.msdk.foundation.controller.b.d().g(), campaignEx, str, this.o), b(campaignEx), false) || !a(campaignEx.getendcard_url(), campaignEx)) {
                return false;
            }
        }
        return true;
    }

    public final a b(int i, boolean z) {
        m mVar;
        if (this.r && (mVar = this.q) != null) {
            return mVar.c();
        }
        try {
            return a(i, z);
        } catch (Throwable th) {
            aa.b("UnitCacheCtroller", th.getMessage(), th);
            return null;
        }
    }

    public final void b() {
        CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayList;
        if ((!this.r || this.q == null) && (copyOnWriteArrayList = this.i) != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    for (Map<String, a> map : this.i) {
                        if (map != null) {
                            Iterator<Map.Entry<String, a>> it = map.entrySet().iterator();
                            while (it.hasNext()) {
                                a value = it.next().getValue();
                                if (value != null && value.j() == 1) {
                                    value.b("playing and stop download");
                                    value.r();
                                    this.i.remove(map);
                                    return;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void b(String str) {
        CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayList;
        m mVar;
        if (this.r && (mVar = this.q) != null) {
            mVar.b(str);
            return;
        }
        try {
            synchronized (this.i) {
                if (!TextUtils.isEmpty(str) && (copyOnWriteArrayList = this.i) != null && copyOnWriteArrayList.size() > 0) {
                    for (Map<String, a> map : this.i) {
                        if (map != null) {
                            for (Map.Entry<String, a> entry : map.entrySet()) {
                                if (entry != null && TextUtils.equals(entry.getKey(), str)) {
                                    this.i.remove(map);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public final CopyOnWriteArrayList<Map<String, a>> c() {
        m mVar;
        return (!this.r || (mVar = this.q) == null) ? this.i : mVar.d();
    }
}
