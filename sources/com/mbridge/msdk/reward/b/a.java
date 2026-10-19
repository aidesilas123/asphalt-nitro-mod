package com.mbridge.msdk.reward.b;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.b.a;
import com.mbridge.msdk.foundation.db.f;
import com.mbridge.msdk.foundation.db.h;
import com.mbridge.msdk.foundation.db.i;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.e;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ai;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.reward.adapter.b;
import com.mbridge.msdk.videocommon.a;
import com.mbridge.msdk.videocommon.download.g;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardVideoController.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static String b = "";
    public static String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f7433d = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f7434f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f7435g = "";
    private volatile String A;
    private String B;
    private int F;
    private int G;
    private int H;
    private boolean M;
    private Queue<Integer> U;
    private String V;
    b a;
    private CopyOnWriteArrayList<CampaignEx> ae;
    private List<CampaignEx> af;
    private Context n;
    private int o;
    private com.mbridge.msdk.reward.adapter.c p;
    private com.mbridge.msdk.videocommon.d.c q;
    private com.mbridge.msdk.videocommon.d.a r;
    private volatile InterVideoOutListener s;
    private volatile c t;
    private String u;
    private String v;
    private MBridgeIds w;
    private String z;
    private static ConcurrentHashMap<String, Integer> S = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, String> T = new ConcurrentHashMap<>();
    public static ConcurrentHashMap<String, d> h = new ConcurrentHashMap<>();
    private String x = "";
    private String y = "";
    private int C = 0;
    private int E = 2;
    private boolean I = false;
    private boolean J = false;
    private boolean K = false;
    private boolean L = false;
    private boolean N = false;
    private ArrayList<Integer> O = new ArrayList<>(7);
    private boolean P = false;
    private final Object Q = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7436e = false;
    private List<CampaignEx> R = new ArrayList();
    private h W = null;
    private volatile boolean X = true;
    private volatile boolean Y = false;
    private volatile boolean Z = false;
    private volatile boolean aa = false;
    private volatile boolean ab = false;
    private volatile boolean ac = false;
    private volatile boolean ad = false;
    volatile boolean i = false;
    volatile boolean j = false;
    volatile boolean k = false;
    volatile boolean l = false;
    volatile boolean m = false;
    private Handler D = new Handler(Looper.getMainLooper()) { // from class: com.mbridge.msdk.reward.b.a.1
        /* JADX WARN: Removed duplicated region for block: B:149:0x0463  */
        /* JADX WARN: Removed duplicated region for block: B:155:0x0483  */
        /* JADX WARN: Removed duplicated region for block: B:158:0x0488 A[Catch: Exception -> 0x04c0, TryCatch #0 {Exception -> 0x04c0, blocks: (B:134:0x0415, B:136:0x041d, B:137:0x0422, B:139:0x042e, B:140:0x043b, B:142:0x0445, B:144:0x0451, B:146:0x0457, B:150:0x0464, B:152:0x0474, B:154:0x047e, B:158:0x0488, B:159:0x0499, B:161:0x04af), top: B:218:0x0415 }] */
        /* JADX WARN: Removed duplicated region for block: B:159:0x0499 A[Catch: Exception -> 0x04c0, TryCatch #0 {Exception -> 0x04c0, blocks: (B:134:0x0415, B:136:0x041d, B:137:0x0422, B:139:0x042e, B:140:0x043b, B:142:0x0445, B:144:0x0451, B:146:0x0457, B:150:0x0464, B:152:0x0474, B:154:0x047e, B:158:0x0488, B:159:0x0499, B:161:0x04af), top: B:218:0x0415 }] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void handleMessage(android.os.Message r18) {
            /*
                Method dump skipped, instruction units count: 1596
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.b.a.AnonymousClass1.handleMessage(android.os.Message):void");
        }
    };

    /* JADX INFO: renamed from: com.mbridge.msdk.reward.b.a$4, reason: invalid class name */
    /* JADX INFO: compiled from: RewardVideoController.java */
    final class AnonymousClass4 implements b.c {
        final /* synthetic */ boolean a;
        final /* synthetic */ CampaignEx b;
        final /* synthetic */ com.mbridge.msdk.reward.adapter.c c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f7437d;

        AnonymousClass4(boolean z, CampaignEx campaignEx, com.mbridge.msdk.reward.adapter.c cVar, int i) {
            this.a = z;
            this.b = campaignEx;
            this.c = cVar;
            this.f7437d = i;
        }

        @Override // com.mbridge.msdk.reward.adapter.b.c
        public final void a(final String str, final String str2, final String str3, final CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            a.this.i = true;
            if (this.a) {
                if (!a.this.j || a.this.k || a.this.D == null) {
                    return;
                }
                a.this.k = true;
                a.this.D.post(new Runnable() { // from class: com.mbridge.msdk.reward.b.a.4.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.mbridge.msdk.reward.adapter.b.a().a(a.this.N, a.this.D, a.this.I, a.this.J, str3, AnonymousClass4.this.b.getRequestIdNotice(), str, str2, AnonymousClass4.this.b.getCMPTEntryUrl(), a.this.E, AnonymousClass4.this.b, copyOnWriteArrayList, g.a().b(AnonymousClass4.this.b.getCMPTEntryUrl()), str2, a.this.q, new b.j() { // from class: com.mbridge.msdk.reward.b.a.4.2.1
                            @Override // com.mbridge.msdk.reward.adapter.b.j
                            public final void a(String str4, String str5, String str6, String str7, String str8, a.C0437a c0437a) {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                com.mbridge.msdk.reward.adapter.c cVar = anonymousClass4.c;
                                if (cVar != null && cVar.a(copyOnWriteArrayList, anonymousClass4.a, anonymousClass4.f7437d)) {
                                    if (a.this.t == null || a.this.m) {
                                        return;
                                    }
                                    a.this.m = true;
                                    aa.a("RewardVideoController", "Cache onVideoLoadSuccessForCache");
                                    AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                    a.this.a(copyOnWriteArrayList);
                                    a.this.t.b(str5, str6);
                                    return;
                                }
                                a aVar = a.this;
                                a.a(aVar, str6, aVar.af);
                                if (a.this.t == null || a.this.l) {
                                    return;
                                }
                                a.this.l = true;
                                e eVar = new e(15, "errorCode: 3504 errorMessage: tpl temp preload success but isReady false");
                                if (a.this.ae != null && a.this.ae.size() > 0) {
                                    com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), a.this.n, eVar, a.this.v, a.this.J, str7, AnonymousClass4.this.b.getRequestIdNotice());
                                }
                                c.a(a.this.t, eVar.e());
                            }

                            @Override // com.mbridge.msdk.reward.adapter.b.j
                            public final void a(String str4, String str5, String str6, String str7, String str8, a.C0437a c0437a, e eVar) {
                                a aVar = a.this;
                                a.a(aVar, str6, aVar.af);
                                if (a.this.t == null || a.this.l) {
                                    return;
                                }
                                a.this.l = true;
                                if (a.this.ae != null && a.this.ae.size() > 0) {
                                    eVar.b("errorCode: 3302 errorMessage: tpl temp preload failed: " + eVar.e());
                                    com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), a.this.n, eVar, a.this.v, a.this.J, str7, AnonymousClass4.this.b.getRequestIdNotice());
                                }
                                c.a(a.this.t, eVar.e());
                            }
                        }, true);
                    }
                });
                return;
            }
            for (final CampaignEx campaignEx : copyOnWriteArrayList) {
                if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e()) || campaignEx.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY) || a.this.D == null) {
                    com.mbridge.msdk.reward.adapter.c cVar = this.c;
                    if (cVar == null || !cVar.a(copyOnWriteArrayList, this.a, this.f7437d)) {
                        a aVar = a.this;
                        a.a(aVar, str2, aVar.af);
                        if (a.this.t != null && !a.this.l) {
                            a.this.l = true;
                            aa.a("RewardVideoController", "Cache onVideoLoadFailForCache");
                            e eVar = new e(15, "errorCode: 3503 errorMessage: have no temp but isReady false");
                            if (a.this.ae != null && a.this.ae.size() > 0) {
                                com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), a.this.n, eVar, a.this.v, a.this.J, str3, campaignEx.getRequestIdNotice());
                            }
                            c.a(a.this.t, eVar.e());
                        }
                    } else if (a.this.t != null && !a.this.m) {
                        a.this.m = true;
                        aa.a("RewardVideoController", "Cache onVideoLoadSuccessForCache");
                        a.this.a(copyOnWriteArrayList);
                        a.this.t.b(str, str2);
                    }
                } else {
                    a.this.D.post(new Runnable() { // from class: com.mbridge.msdk.reward.b.a.4.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.mbridge.msdk.reward.adapter.b.a().a(a.this.N, a.this.D, a.this.I, a.this.J, null, campaignEx.getRewardTemplateMode().e(), a.this.E, AnonymousClass4.this.b, copyOnWriteArrayList, g.a().b(campaignEx.getRewardTemplateMode().e()), str, str2, str3, campaignEx.getRequestIdNotice(), a.this.q, new b.j() { // from class: com.mbridge.msdk.reward.b.a.4.1.1
                                @Override // com.mbridge.msdk.reward.adapter.b.j
                                public final void a(String str4, String str5, String str6, String str7, String str8, a.C0437a c0437a) {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    com.mbridge.msdk.reward.adapter.c cVar2 = anonymousClass4.c;
                                    if (cVar2 != null && cVar2.a(copyOnWriteArrayList, anonymousClass4.a, anonymousClass4.f7437d)) {
                                        if (a.this.t == null || a.this.m) {
                                            return;
                                        }
                                        a.this.m = true;
                                        AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                        a.this.a(copyOnWriteArrayList);
                                        a.this.t.b(str5, str6);
                                        return;
                                    }
                                    a aVar2 = a.this;
                                    a.a(aVar2, str6, aVar2.af);
                                    if (a.this.t == null || a.this.l) {
                                        return;
                                    }
                                    a.this.l = true;
                                    e eVar2 = new e(15, "errorCode: 3502 errorMessage: temp preload success but isReady false");
                                    if (a.this.ae != null && a.this.ae.size() > 0) {
                                        com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), a.this.n, eVar2, a.this.v, a.this.J, str7, campaignEx.getRequestIdNotice());
                                    }
                                    c.a(a.this.t, eVar2.e());
                                }

                                @Override // com.mbridge.msdk.reward.adapter.b.j
                                public final void a(String str4, String str5, String str6, String str7, String str8, a.C0437a c0437a, e eVar2) {
                                    a aVar2 = a.this;
                                    a.a(aVar2, str6, aVar2.af);
                                    if (a.this.t == null || a.this.l) {
                                        return;
                                    }
                                    a.this.l = true;
                                    if (a.this.ae != null && a.this.ae.size() > 0) {
                                        eVar2.b("errorCode: 3301 errorMessage: temp preload failed: " + eVar2.e());
                                        com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), a.this.n, eVar2, a.this.v, a.this.J, str7, campaignEx.getRequestIdNotice());
                                    }
                                    c.a(a.this.t, eVar2.e());
                                }
                            });
                        }
                    });
                }
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.c
        public final void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, e eVar) {
            a.this.i = false;
            a aVar = a.this;
            a.a(aVar, str2, aVar.af);
            if (a.this.t == null || a.this.l) {
                return;
            }
            a.this.l = true;
            if (a.this.ae != null && a.this.ae.size() > 0) {
                eVar.b("errorCode: 3201 errorMessage: campaign resource download failed");
                com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), a.this.n, eVar, a.this.v, a.this.J, str3, this.b.getRequestIdNotice());
            }
            c.a(a.this.t, eVar.e());
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.reward.b.a$6, reason: invalid class name */
    /* JADX INFO: compiled from: RewardVideoController.java */
    final class AnonymousClass6 implements b.i {
        final /* synthetic */ CampaignEx a;
        final /* synthetic */ CopyOnWriteArrayList b;
        final /* synthetic */ com.mbridge.msdk.reward.adapter.c c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f7445d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f7446e;

        AnonymousClass6(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, com.mbridge.msdk.reward.adapter.c cVar, boolean z, int i) {
            this.a = campaignEx;
            this.b = copyOnWriteArrayList;
            this.c = cVar;
            this.f7445d = z;
            this.f7446e = i;
        }

        @Override // com.mbridge.msdk.reward.adapter.b.i
        public final void a(final String str, final String str2, final String str3, String str4) {
            a.this.j = true;
            if (!a.this.i || a.this.k || a.this.D == null) {
                return;
            }
            a.this.k = true;
            a.this.D.post(new Runnable() { // from class: com.mbridge.msdk.reward.b.a.6.1
                @Override // java.lang.Runnable
                public final void run() {
                    com.mbridge.msdk.reward.adapter.b bVarA = com.mbridge.msdk.reward.adapter.b.a();
                    boolean z = a.this.N;
                    Handler handler = a.this.D;
                    boolean z2 = a.this.I;
                    boolean z3 = a.this.J;
                    String str5 = str3;
                    String requestIdNotice = AnonymousClass6.this.a.getRequestIdNotice();
                    String str6 = str;
                    String str7 = str2;
                    String cMPTEntryUrl = AnonymousClass6.this.a.getCMPTEntryUrl();
                    int i = a.this.E;
                    AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                    bVarA.a(z, handler, z2, z3, str5, requestIdNotice, str6, str7, cMPTEntryUrl, i, anonymousClass6.a, anonymousClass6.b, g.a().b(AnonymousClass6.this.a.getCMPTEntryUrl()), str2, a.this.q, new b.j() { // from class: com.mbridge.msdk.reward.b.a.6.1.1
                        @Override // com.mbridge.msdk.reward.adapter.b.j
                        public final void a(String str8, String str9, String str10, String str11, String str12, a.C0437a c0437a) {
                            AnonymousClass6 anonymousClass62 = AnonymousClass6.this;
                            com.mbridge.msdk.reward.adapter.c cVar = anonymousClass62.c;
                            if (cVar != null && cVar.a(anonymousClass62.b, anonymousClass62.f7445d, anonymousClass62.f7446e)) {
                                if (a.this.t == null || a.this.m) {
                                    return;
                                }
                                a.this.m = true;
                                aa.a("RewardVideoController", "Cache onVideoLoadSuccess");
                                AnonymousClass6 anonymousClass63 = AnonymousClass6.this;
                                a.this.a(anonymousClass63.b);
                                a.this.t.b(str9, str10);
                                return;
                            }
                            a aVar = a.this;
                            a.a(aVar, str10, aVar.af);
                            if (a.this.t == null || a.this.l) {
                                return;
                            }
                            a.this.l = true;
                            e eVar = new e(15, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                            if (a.this.ae != null && a.this.ae.size() > 0) {
                                com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), a.this.n, eVar, a.this.v, a.this.J, str11, AnonymousClass6.this.a.getRequestIdNotice());
                            }
                            c.a(a.this.t, eVar.e());
                        }

                        @Override // com.mbridge.msdk.reward.adapter.b.j
                        public final void a(String str8, String str9, String str10, String str11, String str12, a.C0437a c0437a, e eVar) {
                            a aVar = a.this;
                            a.a(aVar, str10, aVar.af);
                            if (a.this.t == null || a.this.l) {
                                return;
                            }
                            a.this.l = true;
                            if (a.this.ae != null && a.this.ae.size() > 0) {
                                eVar.b("errorCode: 3303 errorMessage: tpl temp preload failed: " + eVar.e());
                                com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), a.this.n, eVar, a.this.v, a.this.J, str11, AnonymousClass6.this.a.getRequestIdNotice());
                            }
                            c.a(a.this.t, eVar.e());
                        }
                    }, true);
                }
            });
        }

        @Override // com.mbridge.msdk.reward.adapter.b.i
        public final void a(String str, String str2, String str3, String str4, e eVar) {
            a aVar = a.this;
            a.a(aVar, str2, aVar.af);
            a.this.j = false;
            if (a.this.t == null || a.this.l) {
                return;
            }
            a.this.l = true;
            if (a.this.ae != null && a.this.ae.size() > 0) {
                eVar.b("errorCode: 3203 errorMessage: tpl temp resource download failed");
                com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), a.this.n, eVar, a.this.v, a.this.J, str3, this.a.getRequestIdNotice());
            }
            c.a(a.this.t, eVar.e());
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.reward.b.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RewardVideoController.java */
    public class RunnableC0424a implements Runnable {
        private final com.mbridge.msdk.reward.adapter.c b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f7449d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f7450e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f7451f = "";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f7452g;
        private String h;

        public RunnableC0424a(com.mbridge.msdk.reward.adapter.c cVar, int i, boolean z, String str) {
            this.f7450e = false;
            this.b = cVar;
            this.c = i;
            this.f7449d = z;
            this.f7450e = false;
            if (cVar != null) {
                cVar.d(false);
            }
            this.h = str;
        }

        public final void a() {
            this.f7450e = true;
        }

        public final void a(int i) {
            this.f7452g = i;
        }

        public final void a(String str) {
            this.f7451f = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str = MBridgeConstans.API_REUQEST_CATEGORY_APP;
            if (this.f7450e) {
                return;
            }
            com.mbridge.msdk.reward.adapter.c cVar = this.b;
            if (cVar != null) {
                cVar.d(true);
            }
            aa.d("RewardVideoController", "adSource=" + this.c + " CommonCancelTimeTask mIsDevCall：" + this.f7449d);
            try {
                HashMap map = new HashMap();
                map.put("timeout", this.f7452g + "");
                map.put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                StringBuilder sb = new StringBuilder();
                if (!this.f7449d) {
                    str = "1";
                }
                sb.append(str);
                sb.append("");
                map.put("auto_load", sb.toString());
                if (TextUtils.isEmpty(this.f7451f)) {
                    map.put(MBridgeConstans.PROPERTIES_UNIT_ID, a.this.v);
                }
                map.put("bid_tk", this.h);
                m.a().a("2000126", this.f7451f, map);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            }
            try {
                com.mbridge.msdk.reward.c.a.a(null, a.this.n, new e(2, "v3 is timeout"), a.this.v, a.this.J, "", "");
            } catch (Exception unused) {
            }
            a.this.b("v3 is timeout");
        }
    }

    /* JADX INFO: compiled from: RewardVideoController.java */
    public class b implements com.mbridge.msdk.reward.adapter.a {
        private com.mbridge.msdk.reward.adapter.c b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private RunnableC0424a f7453d;

        public b(com.mbridge.msdk.reward.adapter.c cVar, boolean z) {
            this.b = cVar;
            this.c = z;
        }

        public final void a(RunnableC0424a runnableC0424a) {
            this.f7453d = runnableC0424a;
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public final void a(String str) {
            RunnableC0424a runnableC0424a = this.f7453d;
            if (runnableC0424a != null) {
                runnableC0424a.a();
                a.this.D.removeCallbacks(this.f7453d);
            }
            if (a.this.t != null) {
                c.f(a.this.t, a.this.A, a.this.v);
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public final void a(List<CampaignEx> list) {
            RunnableC0424a runnableC0424a = this.f7453d;
            if (runnableC0424a != null) {
                runnableC0424a.a();
                a.this.D.removeCallbacks(this.f7453d);
            }
            a.this.a(list);
            if (a.this.t != null) {
                a.this.t.a(a.this.A, a.this.v);
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public final void a(List<CampaignEx> list, String str) {
            RunnableC0424a runnableC0424a = this.f7453d;
            if (runnableC0424a != null) {
                runnableC0424a.a();
                a.this.D.removeCallbacks(this.f7453d);
            }
            com.mbridge.msdk.reward.adapter.c cVar = this.b;
            if (cVar != null) {
                cVar.a((com.mbridge.msdk.reward.adapter.a) null);
                this.b = null;
            }
            a.this.a(list);
            if (a.this.t != null) {
                c.a(a.this.t, str, false);
            }
        }
    }

    /* JADX INFO: compiled from: RewardVideoController.java */
    private final class c {
        private WeakReference<InterVideoOutListener> b;
        private volatile AtomicInteger c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Handler f7454d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f7455e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f7456f;

        private c(InterVideoOutListener interVideoOutListener, Handler handler, String str) {
            this.b = new WeakReference<>(interVideoOutListener);
            this.c = new AtomicInteger(0);
            this.f7454d = handler;
            this.f7455e = str;
        }

        static /* synthetic */ int a(c cVar) {
            return cVar.c.get();
        }

        static /* synthetic */ void a(c cVar, int i) {
            cVar.c.set(i);
        }

        static /* synthetic */ void a(c cVar, String str) {
            if (cVar.b == null || cVar.c.get() == 2 || cVar.f7454d == null) {
                return;
            }
            a.this.ac = true;
            if (str.contains("resource load timeout")) {
                a.this.ab = true;
            }
            if (a.this.ac && a.this.ab && !a.this.aa) {
                cVar.c.set(2);
                Message messageObtain = Message.obtain();
                InterVideoOutListener interVideoOutListener = cVar.b.get();
                try {
                    e eVarB = m.a().b(cVar.f7455e, str);
                    if (eVarB != null) {
                        eVarB.a(true);
                        m.a().a(cVar.f7455e, eVarB);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                if (interVideoOutListener != null) {
                    messageObtain.obj = str;
                    messageObtain.what = 16;
                    cVar.f7454d.sendMessage(messageObtain);
                } else if (a.this.M && ac.a().a("r_l_b_m_t_r_i", true)) {
                    m.a().a("2000047", a.this.x, a.this.R, a.this.v, str);
                }
            }
        }

        static /* synthetic */ void a(c cVar, String str, boolean z) {
            if (a.this.p != null) {
                a.this.p.a(a.this.a);
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListF = a.this.p.f();
                CampaignEx campaignEx = (a.this.R == null || a.this.R.size() == 0) ? null : (CampaignEx) a.this.R.get(0);
                if (campaignEx == null) {
                    campaignEx = (copyOnWriteArrayListF == null || copyOnWriteArrayListF.size() == 0) ? null : copyOnWriteArrayListF.get(0);
                }
                if (a.this.J && ((campaignEx == null || TextUtils.isEmpty(campaignEx.getNLRid())) && (copyOnWriteArrayListF == null || copyOnWriteArrayListF.size() == 0))) {
                    if (a.this.p.a(campaignEx, z, m.a().b(cVar.f7455e, str), 2)) {
                        return;
                    }
                } else if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getNLRid())) {
                    try {
                        e eVarB = m.a().b(cVar.f7455e, str);
                        if (eVarB != null) {
                            eVarB.a(campaignEx.getErrReasonByDefaultAd());
                            eVarB.a(campaignEx.getErrTypeByDefaultAd());
                            m.a().a(cVar.f7455e, eVarB);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                a.this.p.a((com.mbridge.msdk.reward.adapter.a) null);
            }
            Handler handler = cVar.f7454d;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            if (cVar.b == null || cVar.c.get() == 2 || cVar.f7454d == null) {
                return;
            }
            a.this.ab = true;
            if (!a.this.ad || str.contains("resource load timeout")) {
                a.this.ac = true;
            }
            if (a.this.aa) {
                cVar.c.set(2);
            }
            if (a.this.ab && a.this.ac && !a.this.aa) {
                cVar.c.set(2);
                if (cVar.b.get() != null) {
                    Message messageObtain = Message.obtain();
                    messageObtain.obj = str;
                    messageObtain.what = 16;
                    cVar.f7454d.sendMessage(messageObtain);
                    return;
                }
                if (a.this.M && ac.a().a("r_l_b_m_t_r_i", true)) {
                    m.a().a("2000047", a.this.x, a.this.R, a.this.v, str);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, String str2) {
            Handler handler = this.f7454d;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            if (this.b == null || this.c.get() == 2 || this.f7454d == null) {
                return;
            }
            this.c.set(2);
            if (a.this.aa) {
                return;
            }
            a.this.aa = true;
            if (this.b.get() == null) {
                if (a.this.M && ac.a().a("r_l_b_m_t_r_i", true)) {
                    m.a().a("2000048", a.this.w.getLocalRequestId(), a.this.R, a.this.v, "");
                    return;
                }
                return;
            }
            Message messageObtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
            messageObtain.setData(bundle);
            messageObtain.obj = str2;
            messageObtain.what = 9;
            this.f7454d.sendMessage(messageObtain);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str, String str2) {
            Handler handler = this.f7454d;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            if (this.b == null || this.c.get() == 2 || this.f7454d == null) {
                return;
            }
            if (this.c.get() == 1) {
                this.c.set(3);
            }
            if (a.this.aa) {
                return;
            }
            a.this.aa = true;
            if (this.b.get() != null) {
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 9;
                this.f7454d.sendMessage(messageObtain);
            } else if (a.this.M && ac.a().a("r_l_b_m_t_r_i", true)) {
                m.a().a("2000048", a.this.w.getLocalRequestId(), a.this.R, a.this.v, "");
            }
            if (a.this.ab) {
                this.c.set(2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(String str, String str2) {
            if (this.f7454d != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 18;
                if (!TextUtils.isEmpty(str2)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("local_id", str2);
                    messageObtain.setData(bundle);
                }
                this.f7454d.sendMessage(messageObtain);
            }
        }

        static /* synthetic */ void d(c cVar, String str, String str2) {
            cVar.c.set(2);
            cVar.c(str, str2);
        }

        static /* synthetic */ void e(c cVar, String str, String str2) {
            WeakReference<InterVideoOutListener> weakReference = cVar.b;
            if (weakReference == null || weakReference.get() == null || cVar.f7454d == null || a.this.Z) {
                return;
            }
            a.this.Z = true;
            Message messageObtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
            bundle.putBoolean(MBridgeConstans.PROPERTIES_IS_CACHED_CAMPAIGN, true);
            messageObtain.setData(bundle);
            messageObtain.obj = str2;
            messageObtain.what = 17;
            cVar.f7454d.sendMessage(messageObtain);
            if (ac.a().a("l_s_i_l_v_s", false)) {
                cVar.b(str, str2);
            }
        }

        static /* synthetic */ void f(c cVar, String str, String str2) {
            WeakReference<InterVideoOutListener> weakReference = cVar.b;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            if ((cVar.c.get() != 1 && cVar.c.get() != 3) || cVar.f7454d == null || a.this.Z) {
                return;
            }
            a.this.Z = true;
            Message messageObtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
            bundle.putBoolean(MBridgeConstans.PROPERTIES_IS_CACHED_CAMPAIGN, false);
            messageObtain.setData(bundle);
            messageObtain.obj = str2;
            messageObtain.what = 17;
            cVar.f7454d.sendMessage(messageObtain);
            if (ac.a().a("l_s_i_l_v_s", false)) {
                cVar.a(str, str2);
            }
        }

        public final void a(boolean z) {
            this.f7456f = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: RewardVideoController.java */
    public final class d implements com.mbridge.msdk.video.bt.module.b.h {
        private a b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Handler f7457d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f7458e;

        private d(a aVar, int i, Handler handler) {
            this.f7458e = 0;
            this.b = aVar;
            this.c = i;
            this.f7457d = handler;
        }

        @Override // com.mbridge.msdk.video.bt.module.b.h
        public final void a() {
            a.this.f7436e = false;
            try {
                com.mbridge.msdk.reward.a.a aVar = new com.mbridge.msdk.reward.a.a(a.this.v, a.this.I);
                a aVar2 = this.b;
                aVar.a(a.c, (aVar2 == null || aVar2.p == null) ? "" : this.b.p.b, 3, a.f7433d);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            try {
                a aVar3 = this.b;
                if (aVar3 != null) {
                    aVar3.P = true;
                    if (this.b.p != null) {
                        this.b.p.b = "";
                    }
                    final a aVar4 = this.b;
                    final int i = this.c;
                    com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.reward.b.a.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                if (a.this.W == null) {
                                    a.this.W = h.a(com.mbridge.msdk.foundation.controller.b.d().g());
                                }
                                i iVarA = i.a(a.this.W);
                                if (iVarA != null) {
                                    iVarA.a(a.this.v);
                                }
                            } catch (Throwable unused) {
                                aa.d("RewardVideoController", "can't find DailyPlayCapDao");
                            }
                            if (i != 1) {
                                return;
                            }
                            ai.a(a.this.n, a.this.A + "_" + i, Integer.valueOf(a.this.o + 1));
                        }
                    });
                    if (a.this.J) {
                        a.j(a.this);
                    }
                    if (this.b.s != null) {
                        if (TextUtils.isEmpty(a.b) && !TextUtils.isEmpty(a.f7435g)) {
                            a.b = a.f7435g;
                        }
                        this.b.s.onAdShow(a.b, a.this.w);
                        this.f7458e = 2;
                    }
                }
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    th.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.b.h
        public final void a(int i, String str, String str2) {
            this.f7458e = i;
            a aVar = this.b;
            if (aVar == null || aVar.J || this.b.I || this.b.q == null || !this.b.q.s(this.f7458e) || this.b.t == null || c.a(this.b.t) == 1 || c.a(this.b.t) == 3 || a.this.O.contains(Integer.valueOf(this.f7458e))) {
                return;
            }
            a.this.O.add(Integer.valueOf(this.f7458e));
            int iB = this.b.q.B() * 1000;
            if (this.f7458e == 4) {
                iB = 3000;
            }
            Handler handler = this.f7457d;
            if (handler != null) {
                handler.removeMessages(1001001);
                this.f7457d.sendEmptyMessageDelayed(1001001, iB);
                return;
            }
            final HashMap map = new HashMap();
            try {
                String md5 = SameMD5.getMD5(af.c());
                map.put(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, md5);
                com.mbridge.msdk.reward.c.a.a("2000123", a.this.v, md5, "auto_load", 94, false);
            } catch (Exception unused) {
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.mbridge.msdk.reward.b.a.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (d.this.b != null) {
                        d.this.b.a(false, map);
                    }
                }
            }, iB);
        }

        @Override // com.mbridge.msdk.video.bt.module.b.h
        public final void a(String str) {
            try {
                a aVar = a.this;
                aVar.f7436e = false;
                if (this.b != null) {
                    if (aVar.J) {
                        a.j(a.this);
                    }
                    this.b.P = false;
                    if (this.b.s != null) {
                        try {
                            if (a.this.ae != null && a.this.ae.size() > 0) {
                                com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), com.mbridge.msdk.foundation.controller.b.d().g(), "show failed: " + str, a.this.v, a.this.J, "", "", 0L);
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            this.b.s.onShowFail(a.b, a.this.w, str);
                        } catch (Exception e2) {
                            if (MBridgeConstans.DEBUG) {
                                e2.printStackTrace();
                            }
                        }
                        this.f7458e = 4;
                    }
                }
            } catch (Exception e3) {
                this.f7458e = 0;
                if (MBridgeConstans.DEBUG) {
                    e3.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.b.h
        public final void a(String str, String str2) {
            try {
                a aVar = this.b;
                if (aVar == null || aVar.s == null) {
                    return;
                }
                try {
                    this.b.s.onVideoComplete(a.this.w);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        e2.printStackTrace();
                    }
                }
                this.f7458e = 5;
            } catch (Exception e3) {
                if (MBridgeConstans.DEBUG) {
                    e3.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.b.h
        public final void a(boolean z, int i) {
            try {
                a aVar = this.b;
                if (aVar == null || aVar.s == null) {
                    return;
                }
                try {
                    this.b.s.onAdCloseWithIVReward(a.this.w, new RewardInfo(z, i));
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        e2.printStackTrace();
                    }
                }
            } catch (Exception e3) {
                if (MBridgeConstans.DEBUG) {
                    e3.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.b.h
        public final void a(boolean z, com.mbridge.msdk.videocommon.b.c cVar) {
            try {
                a aVar = this.b;
                if (aVar == null || aVar.s == null) {
                    return;
                }
                if (cVar == null) {
                    cVar = com.mbridge.msdk.videocommon.b.c.b(this.b.B);
                }
                if (a.this.J) {
                    a.j(a.this);
                    a.this.c();
                    com.mbridge.msdk.foundation.same.a.d.d(a.this.v, a.this.a());
                }
                RewardInfo rewardInfo = new RewardInfo(z, cVar.a(), String.valueOf(cVar.b()));
                if (TextUtils.isEmpty(a.b) && !TextUtils.isEmpty(a.f7435g)) {
                    a.b = a.f7435g;
                }
                this.b.s.onAdClose(a.b, a.this.w, rewardInfo);
                this.f7458e = 7;
                this.b.P = false;
                a.this.O.clear();
                this.b = null;
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.b.h
        public final void a(boolean z, String str, String str2) {
            try {
                a aVar = this.b;
                if (aVar == null || aVar.s == null) {
                    return;
                }
                if (a.this.J) {
                    a.j(a.this);
                }
                this.b.P = false;
                try {
                    this.b.s.onVideoAdClicked(z, a.this.w);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        e2.printStackTrace();
                    }
                }
            } catch (Exception e3) {
                if (MBridgeConstans.DEBUG) {
                    e3.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.b.h
        public final void b(String str, String str2) {
            try {
                a aVar = this.b;
                if (aVar == null || aVar.s == null) {
                    return;
                }
                try {
                    this.b.s.onEndcardShow(a.this.w);
                    com.mbridge.msdk.foundation.c.b.a().b(str2 + "_2", 2);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        e2.printStackTrace();
                    }
                }
                this.f7458e = 6;
            } catch (Exception e3) {
                if (MBridgeConstans.DEBUG) {
                    e3.printStackTrace();
                }
            }
        }
    }

    public static int a(String str) {
        ConcurrentHashMap<String, Integer> concurrentHashMap;
        Integer num;
        try {
            if (!ak.b(str) || (concurrentHashMap = S) == null || !concurrentHashMap.containsKey(str) || (num = S.get(str)) == null) {
                return 0;
            }
            return num.intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    private CopyOnWriteArrayList<CampaignEx> a(String str, List<CampaignEx> list) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int vcn = 1;
                    for (CampaignEx campaignEx : list) {
                        if (campaignEx != null) {
                            if (campaignEx.getVcn() > vcn) {
                                vcn = campaignEx.getVcn();
                            }
                            if (campaignEx.getTokenRule() == 1) {
                                String requestId = campaignEx.getRequestId();
                                if (!TextUtils.isEmpty(requestId)) {
                                    if (linkedHashMap.containsKey(requestId)) {
                                        ((List) linkedHashMap.get(requestId)).add(campaignEx);
                                    } else {
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.add(campaignEx);
                                        linkedHashMap.put(requestId, arrayList);
                                    }
                                }
                            } else {
                                String requestId2 = campaignEx.getRequestId();
                                if (!TextUtils.isEmpty(requestId2)) {
                                    if (linkedHashMap2.containsKey(requestId2)) {
                                        ((List) linkedHashMap2.get(requestId2)).add(campaignEx);
                                    } else {
                                        ArrayList arrayList2 = new ArrayList();
                                        arrayList2.add(campaignEx);
                                        linkedHashMap2.put(requestId2, arrayList2);
                                    }
                                }
                            }
                        }
                    }
                    if (linkedHashMap2.size() + linkedHashMap.size() >= vcn && linkedHashMap.size() > 0 && linkedHashMap.entrySet() != null && linkedHashMap.entrySet().iterator() != null && linkedHashMap.entrySet().iterator().next() != null && ((Map.Entry) linkedHashMap.entrySet().iterator().next()).getValue() != null) {
                        copyOnWriteArrayList.addAll((Collection) ((Map.Entry) linkedHashMap.entrySet().iterator().next()).getValue());
                        com.mbridge.msdk.foundation.same.a.d.a(this.v, str, vcn);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return copyOnWriteArrayList;
    }

    private void a(int i, int i2, boolean z, String str, Map<String, String> map) {
        try {
            com.mbridge.msdk.reward.adapter.c cVar = this.p;
            if (cVar == null || !this.v.equals(cVar.b())) {
                com.mbridge.msdk.reward.adapter.c cVar2 = new com.mbridge.msdk.reward.adapter.c(this.n, this.A, this.v);
                this.p = cVar2;
                cVar2.b(this.I);
                this.p.c(this.J);
            }
            if (this.I) {
                this.p.a(this.F, this.G, this.H);
            }
            this.p.a(this.E);
            this.p.a(this.q);
            RunnableC0424a runnableC0424a = new RunnableC0424a(this.p, i, z, str);
            runnableC0424a.a(map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID));
            runnableC0424a.a(i2);
            b bVar = new b(this.p, z);
            this.a = bVar;
            bVar.a(runnableC0424a);
            this.p.a(this.a);
            this.w.setLocalRequestId(map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID));
            this.y = map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
            this.p.a(i, i2, z, str, this.N, map);
            this.D.postDelayed(runnableC0424a, i2 * 1000);
        } catch (Exception e2) {
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.ae;
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                com.mbridge.msdk.reward.c.a.a(this.ae.get(0), this.n, new e(0, e2.getMessage()), this.v, this.J, "", "");
            }
            b(e2.getMessage());
        }
    }

    static /* synthetic */ void a(a aVar, String str, List list) {
        if (list != null) {
            try {
                if (list.size() <= 0 || aVar.aa) {
                    return;
                }
                f.a(h.a(com.mbridge.msdk.foundation.controller.b.d().g())).a((List<CampaignEx>) list, str);
            } catch (Throwable th) {
                aa.d("RewardVideoController", th.getMessage());
            }
        }
    }

    public static void a(String str, int i) {
        try {
            if (S == null || !ak.b(str)) {
                return;
            }
            S.put(str, Integer.valueOf(i));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (concurrentHashMap = T) == null || concurrentHashMap.containsKey(str)) {
            return;
        }
        T.put(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<CampaignEx> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.R = list;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.util.Queue<java.lang.Integer> r9, boolean r10, java.lang.String r11, java.util.Map<java.lang.String, java.lang.String> r12) {
        /*
            r8 = this;
            r0 = 25
            r2 = 1
            r7 = 0
            if (r9 == 0) goto L18
            int r1 = r9.size()     // Catch: java.lang.Exception -> L84
            if (r1 <= 0) goto L18
            java.lang.Object r9 = r9.poll()     // Catch: java.lang.Exception -> L84
            java.lang.Integer r9 = (java.lang.Integer) r9     // Catch: java.lang.Exception -> L84
            int r0 = r9.intValue()     // Catch: java.lang.Exception -> L84
            r3 = r0
            goto L1a
        L18:
            r3 = 25
        L1a:
            com.mbridge.msdk.out.MBridgeIds r9 = r8.w     // Catch: java.lang.Exception -> L84
            java.lang.String r0 = "local_rid"
            java.lang.Object r0 = r12.get(r0)     // Catch: java.lang.Exception -> L84
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L84
            r9.setLocalRequestId(r0)     // Catch: java.lang.Exception -> L84
            r1 = r8
            r4 = r10
            r5 = r11
            r6 = r12
            r1.a(r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L30
            goto Lb6
        L30:
            r9 = move-exception
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r10 = r8.ae     // Catch: java.lang.Exception -> L84
            java.lang.String r11 = "load mv api error:"
            if (r10 == 0) goto L6d
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r10 = r8.ae     // Catch: java.lang.Exception -> L84
            int r10 = r10.size()     // Catch: java.lang.Exception -> L84
            if (r10 <= 0) goto L6d
            com.mbridge.msdk.foundation.entity.e r2 = new com.mbridge.msdk.foundation.entity.e     // Catch: java.lang.Exception -> L84
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L84
            r10.<init>()     // Catch: java.lang.Exception -> L84
            r10.append(r11)     // Catch: java.lang.Exception -> L84
            java.lang.String r12 = r9.getMessage()     // Catch: java.lang.Exception -> L84
            r10.append(r12)     // Catch: java.lang.Exception -> L84
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Exception -> L84
            r2.<init>(r7, r10)     // Catch: java.lang.Exception -> L84
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r10 = r8.ae     // Catch: java.lang.Exception -> L84
            java.lang.Object r10 = r10.get(r7)     // Catch: java.lang.Exception -> L84
            r0 = r10
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = (com.mbridge.msdk.foundation.entity.CampaignEx) r0     // Catch: java.lang.Exception -> L84
            android.content.Context r1 = r8.n     // Catch: java.lang.Exception -> L84
            java.lang.String r3 = r8.v     // Catch: java.lang.Exception -> L84
            boolean r4 = r8.J     // Catch: java.lang.Exception -> L84
            java.lang.String r5 = ""
            java.lang.String r6 = ""
            com.mbridge.msdk.reward.c.a.a(r0, r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L84
        L6d:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L84
            r10.<init>()     // Catch: java.lang.Exception -> L84
            r10.append(r11)     // Catch: java.lang.Exception -> L84
            java.lang.String r9 = r9.getMessage()     // Catch: java.lang.Exception -> L84
            r10.append(r9)     // Catch: java.lang.Exception -> L84
            java.lang.String r9 = r10.toString()     // Catch: java.lang.Exception -> L84
            r8.b(r9)     // Catch: java.lang.Exception -> L84
            goto Lb6
        L84:
            r9 = move-exception
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r10 = r8.ae
            java.lang.String r11 = "can't show because unknow error"
            if (r10 == 0) goto Lac
            int r10 = r10.size()
            if (r10 <= 0) goto Lac
            com.mbridge.msdk.foundation.entity.e r2 = new com.mbridge.msdk.foundation.entity.e
            r2.<init>(r7, r11)
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r10 = r8.ae
            java.lang.Object r10 = r10.get(r7)
            r0 = r10
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = (com.mbridge.msdk.foundation.entity.CampaignEx) r0
            android.content.Context r1 = r8.n
            java.lang.String r3 = r8.v
            boolean r4 = r8.J
            java.lang.String r5 = ""
            java.lang.String r6 = ""
            com.mbridge.msdk.reward.c.a.a(r0, r1, r2, r3, r4, r5, r6)
        Lac:
            r8.b(r11)
            boolean r10 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r10 == 0) goto Lb6
            r9.printStackTrace()
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.b.a.a(java.util.Queue, boolean, java.lang.String, java.util.Map):void");
    }

    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.reward.adapter.c cVar) {
        final CampaignEx campaignEx = copyOnWriteArrayList.get(0);
        final boolean z = !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl());
        final int nscpt = campaignEx.getNscpt();
        this.i = false;
        this.j = false;
        this.k = false;
        this.l = false;
        this.m = false;
        com.mbridge.msdk.reward.adapter.b.a().a(this.n, z, nscpt, this.J, this.I ? 287 : 94, this.A, this.v, campaignEx.getRequestId(), copyOnWriteArrayList, new AnonymousClass4(z, campaignEx, cVar, nscpt), new b.i() { // from class: com.mbridge.msdk.reward.b.a.5
            @Override // com.mbridge.msdk.reward.adapter.b.i
            public final void a(String str, String str2, String str3, String str4) {
            }

            @Override // com.mbridge.msdk.reward.adapter.b.i
            public final void a(String str, String str2, String str3, String str4, e eVar) {
                a aVar = a.this;
                a.a(aVar, str2, aVar.af);
                if (!z && a.this.t != null) {
                    if (a.this.l) {
                        return;
                    }
                    a.this.l = true;
                    if (a.this.ae != null && a.this.ae.size() > 0) {
                        eVar.b("errorCode: 3202 errorMessage: temp resource download failed");
                        com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), a.this.n, eVar, a.this.v, a.this.J, str3, campaignEx.getRequestIdNotice());
                    }
                    c.a(a.this.t, eVar.e());
                    return;
                }
                if (nscpt != 1 || a.this.l || a.this.t == null) {
                    return;
                }
                a.this.l = true;
                if (a.this.ae != null && a.this.ae.size() > 0) {
                    eVar.b("errorCode: 3202 errorMessage: temp resource download failed");
                    com.mbridge.msdk.reward.c.a.a((CampaignEx) a.this.ae.get(0), a.this.n, eVar, a.this.v, a.this.J, str3, campaignEx.getRequestIdNotice());
                }
                c.a(a.this.t, eVar.e());
            }
        });
        if (z) {
            com.mbridge.msdk.reward.adapter.b.a().a(this.n, campaignEx, this.A, this.v, campaignEx.getRequestId(), new AnonymousClass6(campaignEx, copyOnWriteArrayList, cVar, z, nscpt));
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x00b5 -> B:19:0x00be). Please report as a decompilation issue!!! */
    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str, String str2) {
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        HashMap map = new HashMap();
        this.ad = true;
        this.t.a(this.J);
        c.e(this.t, this.A, this.v);
        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
        a(campaignEx.getRequestId(), str);
        com.mbridge.msdk.reward.adapter.c cVar = this.p;
        if (cVar == null || !cVar.a(copyOnWriteArrayList, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt())) {
            a(copyOnWriteArrayList, this.p);
        } else {
            a(copyOnWriteArrayList);
            this.t.b(this.A, this.v);
        }
        try {
            m.a().a(str2, this.v, copyOnWriteArrayList.get(0).getAdType() + "", "1", str);
            map.put(WebPreferenceConstants.CLEAR_CACHE_EXIT, "1");
            m.a().c(str2, "2000127", map);
            m.a().c(str2, "2000048", map);
            if (copyOnWriteArrayList.size() > 1) {
                m.a().b(copyOnWriteArrayList);
            } else {
                m.a().a(copyOnWriteArrayList.get(0));
            }
        } catch (Exception e2) {
            aa.d("RewardVideoController", e2.getMessage());
        }
    }

    private boolean a(List<com.mbridge.msdk.foundation.entity.b> list, String str) {
        if (list == null) {
            return false;
        }
        for (com.mbridge.msdk.foundation.entity.b bVar : list) {
            if (bVar != null && str.equals(bVar.a())) {
                this.p.a(bVar.b());
                this.p.c = bVar.f();
                if (this.p.c()) {
                    return true;
                }
            }
        }
        return false;
    }

    private CopyOnWriteArrayList<CampaignEx> b(String str, List<CampaignEx> list) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        if (list != null && list.size() > 0 && !TextUtils.isEmpty(str)) {
            for (CampaignEx campaignEx : list) {
                if (campaignEx != null && str.equals(campaignEx.getBidToken())) {
                    copyOnWriteArrayList.add(campaignEx);
                }
            }
        }
        return copyOnWriteArrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (this.t != null) {
            this.ac = true;
            c.a(this.t, str, true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.List, java.util.concurrent.CopyOnWriteArrayList] */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.mbridge.msdk.foundation.same.report.m] */
    /* JADX WARN: Type inference failed for: r0v36, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v39, types: [java.util.List, java.util.concurrent.CopyOnWriteArrayList] */
    /* JADX WARN: Type inference failed for: r0v68, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v86, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r22v0, types: [com.mbridge.msdk.reward.b.a] */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v10, types: [com.mbridge.msdk.reward.adapter.c] */
    /* JADX WARN: Type inference failed for: r3v20, types: [com.mbridge.msdk.reward.adapter.c] */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v39, types: [java.util.List, java.util.concurrent.CopyOnWriteArrayList] */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v44 */
    /* JADX WARN: Type inference failed for: r3v45 */
    /* JADX WARN: Type inference failed for: r3v47 */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r3v50 */
    /* JADX WARN: Type inference failed for: r4v44, types: [com.mbridge.msdk.reward.adapter.c] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void b(boolean z, String str, Map<String, String> map) {
        String str2;
        com.mbridge.msdk.reward.a.a aVar;
        Object obj;
        ?? r2;
        com.mbridge.msdk.foundation.b.c cVar;
        com.mbridge.msdk.foundation.b.c cVar2;
        com.mbridge.msdk.foundation.b.c cVar3;
        ?? r3;
        ?? r22 = z;
        if (this.t != null) {
            try {
                HashMap map2 = new HashMap();
                com.mbridge.msdk.videocommon.d.c cVar4 = this.q;
                if (cVar4 != null && !TextUtils.isEmpty(cVar4.l())) {
                    map2.put("rus_rid", this.q.l());
                }
                com.mbridge.msdk.videocommon.d.a aVar2 = this.r;
                if (aVar2 != null && !TextUtils.isEmpty(aVar2.c())) {
                    map2.put("rs_rid", this.r.c());
                }
                map2.put("r_stid", com.mbridge.msdk.videocommon.d.b.a().b().b());
                if (map != null) {
                    map.put("isDev", r22 != 0 ? MBridgeConstans.API_REUQEST_CATEGORY_APP : "1");
                    str2 = map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                    try {
                        this.y = str2;
                    } catch (Exception unused) {
                    }
                } else {
                    str2 = "";
                }
                m.a().a(str2, map2);
            } catch (Exception unused2) {
                str2 = "";
            }
            String str3 = str2;
            HashMap map3 = new HashMap();
            Object copyOnWriteArrayList = null;
            if (!this.J) {
                this.ad = c(this.v, str3);
                if (!this.ad) {
                    if (!k()) {
                        this.ad = false;
                        com.mbridge.msdk.reward.adapter.c cVar5 = this.p;
                        if (cVar5 != null) {
                            cVar5.a(this.ae);
                        }
                        this.t.a(this.J);
                        map3.put(WebPreferenceConstants.CLEAR_CACHE_EXIT, MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        m.a().c(str3, "2000127", map3);
                        m.a().c(str3, "2000048", map3);
                        a(this.U, r22, str, map);
                        return;
                    }
                    if (r22 == 0) {
                        this.ad = false;
                        com.mbridge.msdk.reward.adapter.c cVar6 = this.p;
                        if (cVar6 != null) {
                            cVar6.a(this.ae);
                        }
                        this.t.a(this.J);
                        map3.put(WebPreferenceConstants.CLEAR_CACHE_EXIT, MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        m.a().c(str3, "2000127", map3);
                        m.a().c(str3, "2000048", map3);
                        a(this.U, r22, str, map);
                        return;
                    }
                    if (this.t != null) {
                        e eVar = new e(19, "checkOverCap failed");
                        if (map != null) {
                            try {
                                if (map.containsKey(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID)) {
                                    copyOnWriteArrayList = map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                                }
                            } catch (Exception e2) {
                                if (MBridgeConstans.DEBUG) {
                                    e2.printStackTrace();
                                }
                            }
                        }
                        com.mbridge.msdk.reward.c.a.a(null, this.n, eVar, this.v, this.J, "", "");
                        c.d(this.t, "checkOverCap failed", copyOnWriteArrayList);
                        return;
                    }
                    return;
                }
                if (k()) {
                    aa.a("RewardVideoController", "非BID，本地存在可用的缓存，超过上限");
                    CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.ae;
                    if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
                        Iterator<CampaignEx> it = this.ae.iterator();
                        while (it.hasNext()) {
                            com.mbridge.msdk.videocommon.a.a.a().a(it.next(), this.v);
                        }
                    }
                    com.mbridge.msdk.reward.adapter.c cVar7 = this.p;
                    if (cVar7 != null) {
                        cVar7.a(this.ae);
                    }
                    if (r22 == 0) {
                        this.ad = false;
                        this.t.a(this.J);
                        map3.put(WebPreferenceConstants.CLEAR_CACHE_EXIT, MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        m.a().c(str3, "2000127", map3);
                        m.a().c(str3, "2000048", map3);
                        a(this.U, r22, str, map);
                        return;
                    }
                    if (this.t != null) {
                        e eVar2 = new e(19, "checkOverCap failed");
                        if (map != null) {
                            try {
                                if (map.containsKey(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID)) {
                                    copyOnWriteArrayList = map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                                }
                            } catch (Exception e3) {
                                if (MBridgeConstans.DEBUG) {
                                    e3.printStackTrace();
                                }
                            }
                        }
                        com.mbridge.msdk.reward.c.a.a(null, this.n, eVar2, this.v, this.J, "", "");
                        c.d(this.t, "checkOverCap failed", copyOnWriteArrayList);
                        return;
                    }
                    return;
                }
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList3 = this.ae;
                if (copyOnWriteArrayList3 == null || copyOnWriteArrayList3.size() <= 0) {
                    return;
                }
                try {
                    try {
                        m.a().a(str3, this.v, copyOnWriteArrayList3.get(0).getAdType() + "", "0", str);
                        map3.put(WebPreferenceConstants.CLEAR_CACHE_EXIT, "1");
                        m.a().c(str3, "2000127", map3);
                        m.a().c(str3, "2000048", map3);
                        r3 = 1;
                        try {
                            if (copyOnWriteArrayList3.size() > 1) {
                                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList4 = copyOnWriteArrayList3;
                                m.a().b(copyOnWriteArrayList4);
                                r3 = copyOnWriteArrayList4;
                            } else {
                                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList5 = copyOnWriteArrayList3;
                                m.a().a(copyOnWriteArrayList5.get(0));
                                r3 = copyOnWriteArrayList5;
                            }
                        } catch (Exception unused3) {
                        }
                    } catch (Exception unused4) {
                        r3 = copyOnWriteArrayList3;
                    }
                } catch (Exception unused5) {
                    r3 = copyOnWriteArrayList3;
                }
                c.e(this.t, this.A, this.v);
                CampaignEx campaignEx = (CampaignEx) r3.get(0);
                this.t.a(this.J);
                ?? r4 = this.p;
                if (r4 == 0 || !r4.a(r3, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt())) {
                    a(r3, this.p);
                } else {
                    a(r3);
                    this.t.b(this.A, this.v);
                }
                if (this.X) {
                    com.mbridge.msdk.reward.adapter.c cVar8 = this.p;
                    if (cVar8 != null) {
                        cVar8.a(this.ae);
                    }
                    a(this.U, r22, str, map);
                    return;
                }
                return;
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA = com.mbridge.msdk.videocommon.a.a.a().a(this.v, 1, this.J, "");
            if (copyOnWriteArrayListA != null && copyOnWriteArrayListA.size() > 0) {
                if (k()) {
                    com.mbridge.msdk.videocommon.a.a.a().a(this.v, str);
                    if (r22 == 0 || this.t == null) {
                        return;
                    }
                    e eVar3 = new e(19, "checkOverCap failed");
                    if (map != null) {
                        try {
                            if (map.containsKey(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID)) {
                                copyOnWriteArrayList = map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                            }
                        } catch (Exception e4) {
                            if (MBridgeConstans.DEBUG) {
                                e4.printStackTrace();
                            }
                        }
                    }
                    com.mbridge.msdk.reward.c.a.a(null, this.n, eVar3, this.v, this.J, "", "");
                    c.d(this.t, "checkOverCap failed", copyOnWriteArrayList);
                    return;
                }
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = b(str, copyOnWriteArrayListA);
                if (copyOnWriteArrayListB != null && copyOnWriteArrayListB.size() > 0) {
                    a(copyOnWriteArrayListB, str, str3);
                    return;
                }
                com.mbridge.msdk.reward.a.a aVar3 = new com.mbridge.msdk.reward.a.a(this.v, this.I);
                try {
                    com.mbridge.msdk.foundation.b.c cVar9 = new com.mbridge.msdk.foundation.b.c();
                    if (aVar3.a(str)) {
                        com.mbridge.msdk.foundation.b.c cVarA = aVar3.a(str, str3, (CampaignEx) null, new e(21, "cb is open"), 2, this.p);
                        if (this.p == null) {
                            com.mbridge.msdk.reward.adapter.c cVar10 = new com.mbridge.msdk.reward.adapter.c(this.n, this.A, this.v);
                            this.p = cVar10;
                            cVar10.b(this.I);
                            this.p.c(this.J);
                        }
                        if (this.I) {
                            this.p.a(this.F, this.G, this.H);
                        }
                        this.p.a(this.E);
                        this.p.a(this.q);
                        if (cVarA != null && cVarA.e() == com.mbridge.msdk.foundation.b.c.c && cVarA.g() != null && cVarA.g().size() > 0 && this.p != null) {
                            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListG = cVarA.g();
                            ArrayList arrayList = new ArrayList();
                            Iterator<CampaignEx> it2 = copyOnWriteArrayListA.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    break;
                                }
                                CampaignEx next = it2.next();
                                if (next != null) {
                                    String requestId = next.getRequestId();
                                    if (!TextUtils.isEmpty(requestId)) {
                                        for (int i = 0; i < copyOnWriteArrayListG.size(); i++) {
                                            CampaignEx campaignEx2 = copyOnWriteArrayListG.get(i);
                                            if (campaignEx2 != null) {
                                                if (requestId.equals(campaignEx2.getRequestId())) {
                                                    break;
                                                } else if (i == copyOnWriteArrayListG.size() - 1) {
                                                    arrayList.add(next);
                                                }
                                            }
                                        }
                                        if (copyOnWriteArrayListG.size() == 0) {
                                            arrayList.add(next);
                                        }
                                    }
                                }
                            }
                            this.p.a(arrayList);
                            this.p.a(cVarA.g(), false, true);
                            copyOnWriteArrayList = new CopyOnWriteArrayList(cVarA.g());
                        }
                        cVar3 = cVarA;
                    } else {
                        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA2 = a(str, copyOnWriteArrayListA);
                        try {
                            if (copyOnWriteArrayListA2.size() > 0) {
                                com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).a(str, copyOnWriteArrayListA2);
                            }
                            cVar9.e("cb is closed");
                            cVar9.a(com.mbridge.msdk.foundation.b.c.f7012d);
                            copyOnWriteArrayList = copyOnWriteArrayListA2;
                            cVar3 = cVar9;
                        } catch (Exception e5) {
                            e = e5;
                            copyOnWriteArrayList = copyOnWriteArrayListA2;
                            e.printStackTrace();
                        }
                    }
                    aVar3.a(this.x, str, cVar3, (List<a.C0398a>) null, (JSONObject) null, 1);
                } catch (Exception e6) {
                    e = e6;
                }
                ?? r0 = copyOnWriteArrayList;
                if (r0 != 0 && r0.size() > 0) {
                    a(r0, str, str3);
                    if (this.p != null && !aVar3.a(str)) {
                        this.p.a(r0);
                    }
                }
                this.ad = false;
                this.t.a(this.J);
                a(this.U, r22, str, map);
                return;
            }
            if (k()) {
                com.mbridge.msdk.videocommon.a.a.a().a(this.v, str);
                if (r22 == 0 || this.t == null) {
                    return;
                }
                e eVar4 = new e(19, "checkOverCap failed");
                if (map != null) {
                    try {
                        if (map.containsKey(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID)) {
                            copyOnWriteArrayList = map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                        }
                    } catch (Exception e7) {
                        if (MBridgeConstans.DEBUG) {
                            e7.printStackTrace();
                        }
                    }
                }
                com.mbridge.msdk.reward.c.a.a(null, this.n, eVar4, this.v, this.J, "", "");
                c.d(this.t, "checkOverCap failed", copyOnWriteArrayList);
                return;
            }
            com.mbridge.msdk.reward.a.a aVar4 = new com.mbridge.msdk.reward.a.a(this.v, this.I);
            try {
                cVar = new com.mbridge.msdk.foundation.b.c();
            } catch (Exception e8) {
                e = e8;
                aVar = aVar4;
                r22 = "2000127";
                obj = MBridgeConstans.API_REUQEST_CATEGORY_APP;
            }
            try {
                if (aVar4.a(str)) {
                    e eVar5 = new e(21, "cb is open");
                    com.mbridge.msdk.reward.adapter.c cVar11 = this.p;
                    aVar = aVar4;
                    obj = MBridgeConstans.API_REUQEST_CATEGORY_APP;
                    r22 = "2000127";
                    com.mbridge.msdk.foundation.b.c cVarA2 = aVar4.a(str, str3, (CampaignEx) null, eVar5, 2, cVar11);
                    if (this.p == null) {
                        com.mbridge.msdk.reward.adapter.c cVar12 = new com.mbridge.msdk.reward.adapter.c(this.n, this.A, this.v);
                        this.p = cVar12;
                        cVar12.b(this.I);
                        this.p.c(this.J);
                    }
                    if (this.I) {
                        this.p.a(this.F, this.G, this.H);
                    }
                    this.p.a(this.E);
                    this.p.a(this.q);
                    if (cVarA2 != null && cVarA2.e() == com.mbridge.msdk.foundation.b.c.c && cVarA2.g() != null && cVarA2.g().size() > 0 && this.p != null) {
                        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListG2 = cVarA2.g();
                        if (copyOnWriteArrayListA != null) {
                            ArrayList arrayList2 = new ArrayList();
                            Iterator<CampaignEx> it3 = copyOnWriteArrayListA.iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    break;
                                }
                                CampaignEx next2 = it3.next();
                                if (next2 != null) {
                                    String requestId2 = next2.getRequestId();
                                    if (!TextUtils.isEmpty(requestId2)) {
                                        for (int i2 = 0; i2 < copyOnWriteArrayListG2.size(); i2++) {
                                            CampaignEx campaignEx3 = copyOnWriteArrayListG2.get(i2);
                                            if (campaignEx3 != null) {
                                                if (requestId2.equals(campaignEx3.getRequestId())) {
                                                    break;
                                                } else if (i2 == copyOnWriteArrayListG2.size() - 1) {
                                                    arrayList2.add(next2);
                                                }
                                            }
                                        }
                                        if (copyOnWriteArrayListG2.size() == 0) {
                                            arrayList2.add(next2);
                                        }
                                    }
                                }
                            }
                            this.p.a(arrayList2);
                        }
                        this.p.a(cVarA2.g(), false, true);
                        copyOnWriteArrayList = new CopyOnWriteArrayList(cVarA2.g());
                    }
                    cVar2 = cVarA2;
                } else {
                    aVar = aVar4;
                    r22 = "2000127";
                    obj = MBridgeConstans.API_REUQEST_CATEGORY_APP;
                    cVar.e("cb is closed 2");
                    cVar.a(com.mbridge.msdk.foundation.b.c.f7012d);
                    cVar2 = cVar;
                }
                aVar.a(this.x, str, cVar2, (List<a.C0398a>) null, (JSONObject) null, 1);
                r2 = r22;
            } catch (Exception e9) {
                e = e9;
                e.printStackTrace();
                r2 = r22;
            }
            ?? r02 = copyOnWriteArrayList;
            if (r02 != 0 && r02.size() > 0) {
                a(r02, str, str3);
                if (this.p != null && !aVar.a(str)) {
                    this.p.a(r02);
                }
            }
            this.ad = false;
            this.t.a(this.J);
            map3.put(WebPreferenceConstants.CLEAR_CACHE_EXIT, obj);
            m.a().c(str3, r2, map3);
            m.a().c(str3, "2000048", map3);
            a(this.U, z, str, map);
        }
    }

    private void c(String str) {
        com.mbridge.msdk.videocommon.d.c cVar;
        com.mbridge.msdk.videocommon.d.c cVar2;
        Map<String, Integer> mapJ;
        try {
            com.mbridge.msdk.videocommon.d.a aVar = this.r;
            int iIntValue = (aVar == null || (mapJ = aVar.j()) == null || !mapJ.containsKey("1")) ? 0 : mapJ.get("1").intValue();
            if (ai.b(this.n, this.A + "_1", 0) != null) {
                this.o = ((Integer) ai.b(this.n, this.A + "_1", 0)).intValue();
            }
            if (this.p == null) {
                j();
            }
            if (this.p != null) {
                aa.d("RewardVideoController", "controller 819");
                if (this.J ? h() : this.p.c()) {
                    if (this.o >= iIntValue && iIntValue > 0) {
                        this.f7436e = false;
                        return;
                    }
                    aa.b("RewardVideoController", "invoke adapter show isReady");
                    d dVar = new d(this, 1, this.D);
                    h.put(this.v, dVar);
                    this.p.a(dVar, str, this.u, this.E, this.z);
                    this.f7436e = false;
                    return;
                }
                if (this.J ? i() : this.p.d()) {
                    aa.b("RewardVideoController", "invoke adapter show isSpareOfferReady");
                    d dVar2 = new d(this, 1, this.D);
                    h.put(this.v, dVar2);
                    this.p.a(dVar2, str, this.u, this.E, this.z);
                    this.f7436e = false;
                    return;
                }
            }
            if (this.o != 0) {
                ai.a(this.n, this.A + "_1", 0);
                c(str);
                return;
            }
            this.f7436e = false;
            if (this.s != null) {
                try {
                    this.s.onShowFail(b, this.w, "can't show because load is failed");
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        e2.printStackTrace();
                    }
                }
            }
            if (this.I || this.J || (cVar2 = this.q) == null || !cVar2.s(4) || this.t == null || c.a(this.t) == 1 || c.a(this.t) == 3) {
                return;
            }
            HashMap map = new HashMap();
            try {
                String md5 = SameMD5.getMD5(af.c());
                map.put(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, md5);
                com.mbridge.msdk.reward.c.a.a("2000123", this.v, md5, "auto_load", 94, false);
            } catch (Exception unused) {
            }
            a(false, (Map<String, String>) map);
        } catch (Exception e3) {
            this.f7436e = false;
            if (MBridgeConstans.DEBUG) {
                aa.d("RewardVideoController", e3.getLocalizedMessage());
            }
            if (this.s != null) {
                try {
                    this.s.onShowFail(b, this.w, "show exception");
                } catch (Exception unused2) {
                    if (MBridgeConstans.DEBUG) {
                        e3.printStackTrace();
                    }
                }
            }
            if (this.I || this.J || (cVar = this.q) == null || !cVar.s(4) || this.t == null || c.a(this.t) == 1 || c.a(this.t) == 3) {
                return;
            }
            HashMap map2 = new HashMap();
            try {
                String md52 = SameMD5.getMD5(af.c());
                map2.put(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, md52);
                com.mbridge.msdk.reward.c.a.a("2000123", this.v, md52, "auto_load", 94, false);
            } catch (Exception unused3) {
            }
            a(false, (Map<String, String>) map2);
        }
    }

    private boolean c(String str, String str2) {
        try {
            com.mbridge.msdk.reward.adapter.c cVar = this.p;
            if (cVar == null || !str.equals(cVar.b())) {
                com.mbridge.msdk.reward.adapter.c cVar2 = new com.mbridge.msdk.reward.adapter.c(this.n, this.A, str);
                this.p = cVar2;
                cVar2.b(this.I);
                this.p.c(this.J);
            }
            this.p.a(this.E);
            this.p.a(this.q);
        } catch (Exception unused) {
        }
        List<CampaignEx> listA = com.mbridge.msdk.videocommon.a.a.a().a(str, 1, this.J);
        this.af = com.mbridge.msdk.videocommon.a.a.a().b(str, 1, this.J);
        if (listA == null || listA.size() <= 0) {
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.ae;
            if (copyOnWriteArrayList == null) {
                return false;
            }
            copyOnWriteArrayList.clear();
            return false;
        }
        com.mbridge.msdk.videocommon.a.a.a().a(str, listA, str2);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.ae;
        if (copyOnWriteArrayList2 == null) {
            this.ae = new CopyOnWriteArrayList<>();
        } else {
            copyOnWriteArrayList2.clear();
        }
        for (CampaignEx campaignEx : listA) {
            campaignEx.setLocalRequestId(str2);
            this.ae.add(campaignEx);
        }
        a(this.ae);
        return true;
    }

    private void d() {
        f.a(h.a(this.n)).a(this.v);
    }

    private void e() {
        try {
            List<CampaignEx> listB = f.a(h.a(this.n)).b(this.v);
            if (listB == null || listB.size() <= 0) {
                return;
            }
            for (CampaignEx campaignEx : listB) {
                if (TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                    com.mbridge.msdk.videocommon.a.b(campaignEx.getAdType(), campaignEx);
                } else {
                    com.mbridge.msdk.videocommon.a.b(this.v + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl());
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        com.mbridge.msdk.videocommon.a.b(this.v + "_" + campaignEx.getId() + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    private void f() {
        try {
            List<com.mbridge.msdk.videocommon.b.b> listY = this.q.y();
            if (listY == null || listY.size() <= 0) {
                return;
            }
            for (int i = 0; i < listY.size(); i++) {
                com.mbridge.msdk.videocommon.b.b bVar = listY.get(i);
                ai.a(this.n, this.A + "_" + bVar.a(), 0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean g() {
        try {
            List<com.mbridge.msdk.videocommon.b.b> listY = this.q.y();
            if (this.r == null) {
                this.r = com.mbridge.msdk.videocommon.d.b.a().b();
            }
            Map<String, Integer> mapJ = this.r.j();
            if (listY == null || listY.size() <= 0) {
                return true;
            }
            for (int i = 0; i < listY.size(); i++) {
                com.mbridge.msdk.videocommon.b.b bVar = listY.get(i);
                int iIntValue = mapJ.containsKey(bVar.a() + "") ? mapJ.get(bVar.a() + "").intValue() : 0;
                Object objB = ai.b(this.n, this.A + "_" + bVar.a(), 0);
                if ((objB != null ? ((Integer) objB).intValue() : 0) < iIntValue) {
                    return false;
                }
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d("RewardVideoController", e2.getMessage());
            return true;
        }
    }

    private boolean h() {
        if (this.p == null) {
            j();
        }
        List<com.mbridge.msdk.foundation.entity.b> listA = com.mbridge.msdk.videocommon.a.a.a().a(this.v);
        if (listA == null || listA.size() <= 0) {
            return false;
        }
        String strC = com.mbridge.msdk.foundation.same.a.d.c(this.v);
        boolean zA = TextUtils.isEmpty(strC) ? false : a(listA, strC);
        if (zA) {
            return zA;
        }
        for (com.mbridge.msdk.foundation.entity.b bVar : listA) {
            if (bVar != null) {
                this.p.a(bVar.b());
                this.p.c = bVar.f();
                if (this.p.c()) {
                    return true;
                }
            }
        }
        return zA;
    }

    private boolean i() {
        if (this.p == null) {
            j();
        }
        List<com.mbridge.msdk.foundation.entity.b> listA = com.mbridge.msdk.videocommon.a.a.a().a(this.v);
        if (listA == null || listA.size() <= 0) {
            return false;
        }
        for (com.mbridge.msdk.foundation.entity.b bVar : listA) {
            if (bVar != null) {
                this.p.a(bVar.b());
                this.p.c = bVar.f();
                if (this.p.d()) {
                    return true;
                }
                com.mbridge.msdk.videocommon.a.a.a().c(this.v, bVar.b());
            }
        }
        return false;
    }

    public static void insertExcludeId(String str, CampaignEx campaignEx) {
        if (TextUtils.isEmpty(str) || campaignEx == null || com.mbridge.msdk.foundation.controller.b.d().g() == null) {
            return;
        }
        j jVarA = j.a(h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
        com.mbridge.msdk.foundation.entity.f fVar = new com.mbridge.msdk.foundation.entity.f();
        fVar.a(System.currentTimeMillis());
        fVar.b(str);
        fVar.a(campaignEx.getId());
        jVarA.a(fVar);
    }

    private void j() {
        com.mbridge.msdk.reward.adapter.c cVar = new com.mbridge.msdk.reward.adapter.c(this.n, this.A, this.v);
        this.p = cVar;
        cVar.b(this.I);
        this.p.c(this.J);
        if (this.I) {
            this.p.a(this.F, this.G, this.H);
        }
        this.p.a(this.q);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ void j(com.mbridge.msdk.reward.b.a r2) {
        /*
            com.mbridge.msdk.out.MBridgeIds r0 = r2.w
            if (r0 == 0) goto L3b
            boolean r0 = r2.P
            if (r0 != 0) goto L9
            goto L34
        L9:
            java.lang.String r0 = r2.a()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L3b
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r1 = com.mbridge.msdk.reward.b.a.T
            if (r1 == 0) goto L34
            boolean r1 = r1.containsKey(r0)
            if (r1 == 0) goto L34
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r1 = com.mbridge.msdk.reward.b.a.T
            java.lang.Object r1 = r1.get(r0)
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L34
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r1 = com.mbridge.msdk.reward.b.a.T
            java.lang.Object r0 = r1.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            goto L36
        L34:
            java.lang.String r0 = ""
        L36:
            com.mbridge.msdk.out.MBridgeIds r2 = r2.w
            r2.setBidToken(r0)
        L3b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.b.a.j(com.mbridge.msdk.reward.b.a):void");
    }

    private boolean k() {
        try {
            if (this.W == null) {
                this.W = h.a(com.mbridge.msdk.foundation.controller.b.d().g());
            }
            i iVarA = i.a(this.W);
            if (this.q == null) {
                this.q = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), this.v, this.I);
            }
            int iD = this.q.d();
            if (iVarA != null) {
                return iVarA.a(this.v, iD);
            }
            return false;
        } catch (Throwable unused) {
            aa.d("RewardVideoController", "cap check error");
            return false;
        }
    }

    public final String a() {
        com.mbridge.msdk.reward.adapter.c cVar = this.p;
        return cVar != null ? cVar.a(this.P) : "";
    }

    public final void a(int i) {
        this.E = i;
    }

    public final void a(int i, int i2, int i3) {
        this.F = i;
        this.G = i2;
        if (i2 == com.mbridge.msdk.foundation.same.a.r) {
            this.H = i3 < 0 ? 5 : i3;
        }
        if (i2 == com.mbridge.msdk.foundation.same.a.q) {
            this.H = i3 < 0 ? 80 : i3;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ivRewardEnable", 1);
            jSONObject.put("ivRewardMode", i == com.mbridge.msdk.foundation.same.a.o ? 0 : 1);
            jSONObject.put("ivRewardPlayValueMode", i2 == com.mbridge.msdk.foundation.same.a.q ? 0 : 1);
            jSONObject.put("ivRewardPlayValue", i3);
            com.mbridge.msdk.c.f.a();
            String str = this.v;
            String string = jSONObject.toString();
            com.mbridge.msdk.foundation.a.a.a.a().a("ivreward_" + str, string);
        } catch (Exception unused) {
            aa.d("RewardVideoController", "setIVRewardEnable to SP was ERROR");
        }
    }

    public final void a(InterVideoOutListener interVideoOutListener) {
        this.s = interVideoOutListener;
        this.t = new c(interVideoOutListener, this.D, this.v);
    }

    /* JADX WARN: Removed duplicated region for block: B:160:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0262 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instruction units count: 702
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.b.a.a(java.lang.String, java.lang.String, java.lang.String):void");
    }

    public final void a(String str, String str2, String str3, String str4) {
        if (!TextUtils.isEmpty(str)) {
            ai.a(this.n, "MBridge_ConfirmTitle" + this.v, str.trim());
        }
        if (!TextUtils.isEmpty(str2)) {
            ai.a(this.n, "MBridge_ConfirmContent" + this.v, str2.trim());
        }
        if (!TextUtils.isEmpty(str4)) {
            ai.a(this.n, "MBridge_CancelText" + this.v, str4.trim());
        }
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        ai.a(this.n, "MBridge_ConfirmText" + this.v, str3.trim());
    }

    public final void a(boolean z) {
        this.I = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:156:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(boolean r28, java.lang.String r29, java.util.Map<java.lang.String, java.lang.String> r30) {
        /*
            Method dump skipped, instruction units count: 733
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.b.a.a(boolean, java.lang.String, java.util.Map):void");
    }

    public final void a(boolean z, Map<String, String> map) {
        a(z, "", map);
    }

    public final String b() {
        com.mbridge.msdk.reward.adapter.c cVar = this.p;
        return cVar != null ? cVar.a() : "";
    }

    public final void b(String str, String str2) {
        try {
            this.n = com.mbridge.msdk.foundation.controller.b.d().g();
            this.v = str2;
            this.A = str;
            this.w = new MBridgeIds(this.A, this.v);
            if (!TextUtils.isEmpty(b)) {
                this.w.setLocalRequestId(b);
            }
            this.r = com.mbridge.msdk.videocommon.d.b.a().b();
            com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.reward.b.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA;
                    if (a.this.n == null || TextUtils.isEmpty(a.this.v)) {
                        return;
                    }
                    try {
                        com.mbridge.msdk.reward.c.a.a(a.this.n, a.this.v);
                        y.b();
                        y.c(com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_RES));
                        y.c(com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_HTML));
                        com.mbridge.msdk.videocommon.d.b.a().b(a.this.v);
                        if (ac.a().a("c_d_v_w_i", false) || TextUtils.isEmpty(a.this.v) || (copyOnWriteArrayListA = com.mbridge.msdk.videocommon.a.a.a().a(a.this.v, 1)) == null || copyOnWriteArrayListA.size() <= 0) {
                            return;
                        }
                        com.mbridge.msdk.videocommon.download.c.getInstance().createUnitCache(a.this.n, a.this.v, copyOnWriteArrayListA, 94, (com.mbridge.msdk.videocommon.listener.a) null);
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            aa.b("RewardVideoController", "initRewardVideoController task ", e2);
                        }
                    }
                }
            });
            if (this.W == null) {
                this.W = h.a(com.mbridge.msdk.foundation.controller.b.d().g());
            }
        } catch (Throwable th) {
            aa.b("RewardVideoController", th.getMessage(), th);
        }
    }

    public final void b(boolean z) {
        this.J = z;
    }

    public final void c() {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (!this.P || (concurrentHashMap = T) == null || concurrentHashMap.containsKey(a())) {
            return;
        }
        T.remove(a());
    }

    public final void c(boolean z) {
        this.N = z;
    }

    public final boolean d(boolean z) {
        try {
            if (k()) {
                return false;
            }
            if (this.J) {
                try {
                    return h();
                } catch (Exception unused) {
                    return false;
                }
            }
            if (this.p == null) {
                j();
            }
            com.mbridge.msdk.reward.adapter.c cVar = this.p;
            if (cVar == null) {
                return false;
            }
            boolean zC = cVar.c();
            return !zC ? this.p.d() : zC;
        } catch (Throwable th) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }
}
