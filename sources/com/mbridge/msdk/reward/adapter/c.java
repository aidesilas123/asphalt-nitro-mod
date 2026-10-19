package com.mbridge.msdk.reward.adapter;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.drive.DriveFile;
import com.json.adapters.mintegral.MintegralAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.b.a;
import com.mbridge.msdk.foundation.db.k;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.reward.adapter.b;
import com.mbridge.msdk.reward.player.MBRewardVideoActivity;
import com.mbridge.msdk.video.bt.module.b.h;
import com.mbridge.msdk.video.signal.a.j;
import com.mbridge.msdk.videocommon.a;
import com.mbridge.msdk.videocommon.download.g;
import com.mbridge.msdk.videocommon.download.i;
import com.mbridge.msdk.videocommon.download.l;
import com.mbridge.msdk.videocommon.download.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardMVVideoAdapter.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    private int B;
    private int C;
    private int D;
    private CampaignUnit E;
    private CopyOnWriteArrayList<CampaignEx> F;
    private CopyOnWriteArrayList<CampaignEx> G;
    private String J;
    private d K;
    private List<CampaignEx> R;
    private List<CampaignEx> S;
    private Context l;
    private String m;
    private String n;
    private int o;
    private int p;
    private int q;
    private boolean r;
    private String s;
    private h t;
    private volatile com.mbridge.msdk.reward.adapter.a u;
    private com.mbridge.msdk.videocommon.d.c v;
    private boolean y;
    private boolean z;
    private CopyOnWriteArrayList<CampaignEx> w = new CopyOnWriteArrayList<>();
    private int x = 2;
    private String A = "";
    private boolean H = false;
    private long I = 0;
    private boolean L = false;
    private boolean M = false;
    public String a = "";
    public String b = "";
    public String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f7401d = new Object();
    private Handler N = new Handler(Looper.getMainLooper()) { // from class: com.mbridge.msdk.reward.adapter.c.1
        /* JADX WARN: Code restructure failed: missing block: B:172:0x0504, code lost:
        
            if (r6 == (-1)) goto L173;
         */
        /* JADX WARN: Removed duplicated region for block: B:101:0x0309  */
        /* JADX WARN: Removed duplicated region for block: B:268:0x02db A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0292  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0294  */
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
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void handleMessage(android.os.Message r25) {
            /*
                Method dump skipped, instruction units count: 1884
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.AnonymousClass1.handleMessage(android.os.Message):void");
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f7402e = false;
    private boolean O = false;
    private long P = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    volatile boolean f7403f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    volatile boolean f7404g = false;
    volatile boolean h = false;
    volatile boolean i = false;
    volatile boolean j = false;
    public volatile boolean k = false;
    private String Q = "";

    /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.c$3, reason: invalid class name */
    /* JADX INFO: compiled from: RewardMVVideoAdapter.java */
    final class AnonymousClass3 implements b.c {
        final /* synthetic */ boolean a;
        final /* synthetic */ CampaignEx b;
        final /* synthetic */ int c;

        AnonymousClass3(boolean z, CampaignEx campaignEx, int i) {
            this.a = z;
            this.b = campaignEx;
            this.c = i;
        }

        @Override // com.mbridge.msdk.reward.adapter.b.c
        public final void a(final String str, final String str2, final String str3, final CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            c.this.f7403f = true;
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                try {
                    com.mbridge.msdk.reward.c.a.a(copyOnWriteArrayList.get(0), c.this.l, "resource download success is tpl :" + this.a, c.this.m, c.this.z, str3, this.b.getRequestIdNotice(), System.currentTimeMillis() - c.this.P);
                } catch (Exception unused) {
                }
            }
            if (this.a) {
                if (!c.this.f7404g || c.this.h || c.this.N == null) {
                    return;
                }
                synchronized (c.this.f7401d) {
                    if (c.this.h) {
                        return;
                    }
                    c.this.h = true;
                    c.this.N.post(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.c.3.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.mbridge.msdk.reward.adapter.b bVar = b.m.a;
                            boolean z = c.this.H;
                            Handler handler = c.this.N;
                            boolean z2 = c.this.y;
                            boolean z3 = c.this.z;
                            String str4 = str3;
                            String requestIdNotice = AnonymousClass3.this.b.getRequestIdNotice();
                            String str5 = c.this.n;
                            String str6 = str2;
                            String cMPTEntryUrl = AnonymousClass3.this.b.getCMPTEntryUrl();
                            int i = c.this.x;
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            bVar.a(z, handler, z2, z3, str4, requestIdNotice, str5, str6, cMPTEntryUrl, i, anonymousClass3.b, c.this.F, g.a().b(AnonymousClass3.this.b.getCMPTEntryUrl()), str2, c.this.v, new b.j() { // from class: com.mbridge.msdk.reward.adapter.c.3.2.1
                                @Override // com.mbridge.msdk.reward.adapter.b.j
                                public final void a(String str7, String str8, String str9, String str10, String str11, a.C0437a c0437a) {
                                    try {
                                        CampaignEx campaignEx = (CampaignEx) copyOnWriteArrayList.get(0);
                                        Context context = c.this.l;
                                        String str12 = "preload template success is tpl :" + AnonymousClass3.this.a;
                                        String str13 = c.this.m;
                                        boolean z4 = c.this.z;
                                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                        com.mbridge.msdk.reward.c.a.a(campaignEx, context, str12, str13, z4, str3, AnonymousClass3.this.b.getRequestIdNotice(), System.currentTimeMillis() - c.this.P);
                                    } catch (Exception unused2) {
                                    }
                                    c cVar = c.this;
                                    CopyOnWriteArrayList copyOnWriteArrayList2 = cVar.F;
                                    AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                                    if (cVar.a(copyOnWriteArrayList2, anonymousClass32.a, anonymousClass32.c)) {
                                        c cVar2 = c.this;
                                        String str14 = cVar2.m;
                                        AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                        c.a(cVar2, str14, copyOnWriteArrayList, c.this.S, c.this.z);
                                        if (c.this.N != null) {
                                            c.this.N.removeMessages(5);
                                        }
                                        if (c.this.u == null || c.this.i) {
                                            return;
                                        }
                                        c.this.i = true;
                                        c.this.u.a(c.this.F);
                                        return;
                                    }
                                    c cVar3 = c.this;
                                    c.a(cVar3, str9, cVar3.R, c.this.z);
                                    if (c.this.N != null) {
                                        c.this.N.removeMessages(5);
                                    }
                                    if (c.this.u == null || c.this.j) {
                                        return;
                                    }
                                    c.this.j = true;
                                    com.mbridge.msdk.foundation.entity.e eVar = new com.mbridge.msdk.foundation.entity.e(15, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                                    if (!TextUtils.isEmpty(c.this.m) && c.this.R != null && c.this.R.size() > 0) {
                                        try {
                                            com.mbridge.msdk.reward.c.a.a((CampaignEx) c.this.R.get(0), c.this.l, eVar, c.this.m, c.this.z, str10, AnonymousClass3.this.b.getRequestIdNotice());
                                        } catch (Exception unused3) {
                                        }
                                    }
                                    c.this.u.a(c.this.R, eVar.e());
                                }

                                @Override // com.mbridge.msdk.reward.adapter.b.j
                                public final void a(String str7, String str8, String str9, String str10, String str11, a.C0437a c0437a, com.mbridge.msdk.foundation.entity.e eVar) {
                                    try {
                                        CampaignEx campaignEx = (CampaignEx) copyOnWriteArrayList.get(0);
                                        Context context = c.this.l;
                                        String str12 = "preload template failed is tpl :" + AnonymousClass3.this.a + " " + eVar.e();
                                        String str13 = c.this.m;
                                        boolean z4 = c.this.z;
                                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                        com.mbridge.msdk.reward.c.a.a(campaignEx, context, str12, str13, z4, str3, AnonymousClass3.this.b.getRequestIdNotice(), System.currentTimeMillis() - c.this.P);
                                    } catch (Exception unused2) {
                                    }
                                    if (AnonymousClass3.this.b.getRsIgnoreCheckRule() != null && AnonymousClass3.this.b.getRsIgnoreCheckRule().size() > 0 && AnonymousClass3.this.b.getRsIgnoreCheckRule().contains(3)) {
                                        aa.b("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                                        return;
                                    }
                                    c cVar = c.this;
                                    c.a(cVar, str9, cVar.R, c.this.z);
                                    if (c.this.N != null) {
                                        c.this.N.removeMessages(5);
                                    }
                                    if (c.this.u == null || c.this.j) {
                                        return;
                                    }
                                    c.this.j = true;
                                    if (c.this.R != null && c.this.R.size() > 0) {
                                        try {
                                            try {
                                                eVar.b("errorCode: 3303 errorMessage: tpl temp preload failed: " + eVar.e());
                                                com.mbridge.msdk.reward.c.a.a((CampaignEx) c.this.R.get(0), c.this.l, eVar, c.this.m, c.this.z, str10, AnonymousClass3.this.b.getRequestIdNotice());
                                            } catch (Exception unused3) {
                                            }
                                        } catch (Exception unused4) {
                                        }
                                    }
                                    c.this.u.a(c.this.R, eVar.e());
                                }
                            }, false);
                        }
                    });
                    return;
                }
            }
            for (final CampaignEx campaignEx : copyOnWriteArrayList) {
                if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e()) || campaignEx.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY) || c.this.N == null) {
                    c cVar = c.this;
                    if (cVar.a(cVar.F, this.a, this.c)) {
                        c cVar2 = c.this;
                        c.a(cVar2, cVar2.m, copyOnWriteArrayList, c.this.S, c.this.z);
                        if (c.this.N != null) {
                            c.this.N.removeMessages(5);
                        }
                        if (c.this.u != null && !c.this.i) {
                            c.this.i = true;
                            c.this.u.a(c.this.F);
                        }
                    } else {
                        c cVar3 = c.this;
                        c.a(cVar3, str2, cVar3.R, c.this.z);
                        if (c.this.N != null) {
                            c.this.N.removeMessages(5);
                        }
                        if (c.this.u != null && !c.this.j) {
                            c.this.j = true;
                            com.mbridge.msdk.foundation.entity.e eVar = new com.mbridge.msdk.foundation.entity.e(15, "errorCode: 3503 errorMessage: have no temp but isReady false");
                            if (!TextUtils.isEmpty(c.this.m) && c.this.F != null && c.this.F.size() > 0) {
                                try {
                                    com.mbridge.msdk.reward.c.a.a((CampaignEx) c.this.F.get(0), c.this.l, eVar, c.this.m, c.this.z, str3, this.b.getRequestIdNotice());
                                } catch (Exception unused2) {
                                }
                            }
                            c.this.u.a(c.this.F, eVar.e());
                        }
                    }
                } else {
                    c.this.N.post(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.c.3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.mbridge.msdk.reward.adapter.b bVar = b.m.a;
                            boolean z = c.this.H;
                            Handler handler = c.this.N;
                            boolean z2 = c.this.y;
                            boolean z3 = c.this.z;
                            String strE = campaignEx.getRewardTemplateMode().e();
                            int i = c.this.x;
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            bVar.a(z, handler, z2, z3, null, strE, i, anonymousClass3.b, c.this.F, g.a().b(campaignEx.getRewardTemplateMode().e()), str, str2, str3, campaignEx.getRequestIdNotice(), c.this.v, new b.j() { // from class: com.mbridge.msdk.reward.adapter.c.3.1.1
                                @Override // com.mbridge.msdk.reward.adapter.b.j
                                public final void a(String str4, String str5, String str6, String str7, String str8, a.C0437a c0437a) {
                                    try {
                                        CampaignEx campaignEx2 = (CampaignEx) copyOnWriteArrayList.get(0);
                                        Context context = c.this.l;
                                        String str9 = "preload template success is tpl :" + AnonymousClass3.this.a;
                                        String str10 = c.this.m;
                                        boolean z4 = c.this.z;
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        com.mbridge.msdk.reward.c.a.a(campaignEx2, context, str9, str10, z4, str3, AnonymousClass3.this.b.getRequestIdNotice(), System.currentTimeMillis() - c.this.P);
                                    } catch (Exception unused3) {
                                    }
                                    c cVar4 = c.this;
                                    CopyOnWriteArrayList copyOnWriteArrayList2 = cVar4.F;
                                    AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                                    if (cVar4.a(copyOnWriteArrayList2, anonymousClass32.a, anonymousClass32.c)) {
                                        c cVar5 = c.this;
                                        String str11 = cVar5.m;
                                        AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                        c.a(cVar5, str11, copyOnWriteArrayList, c.this.S, c.this.z);
                                        if (c.this.N != null) {
                                            c.this.N.removeMessages(5);
                                        }
                                        if (c.this.u == null || c.this.i) {
                                            return;
                                        }
                                        c.this.i = true;
                                        c.this.u.a(c.this.F);
                                        return;
                                    }
                                    c cVar6 = c.this;
                                    c.a(cVar6, str6, cVar6.R, c.this.z);
                                    if (c.this.N != null) {
                                        c.this.N.removeMessages(5);
                                    }
                                    if (c.this.u == null || c.this.j) {
                                        return;
                                    }
                                    c.this.j = true;
                                    com.mbridge.msdk.foundation.entity.e eVar2 = new com.mbridge.msdk.foundation.entity.e(15, "errorCode: 3502 errorMessage: temp preload success but isReady false");
                                    if (!TextUtils.isEmpty(c.this.m) && c.this.F != null && c.this.F.size() > 0) {
                                        try {
                                            com.mbridge.msdk.reward.c.a.a((CampaignEx) c.this.F.get(0), c.this.l, eVar2, c.this.m, c.this.z, str7, AnonymousClass3.this.b.getRequestIdNotice());
                                        } catch (Exception unused4) {
                                        }
                                    }
                                    c.this.u.a(c.this.F, eVar2.e());
                                }

                                @Override // com.mbridge.msdk.reward.adapter.b.j
                                public final void a(String str4, String str5, String str6, String str7, String str8, a.C0437a c0437a, com.mbridge.msdk.foundation.entity.e eVar2) {
                                    try {
                                        CampaignEx campaignEx2 = (CampaignEx) copyOnWriteArrayList.get(0);
                                        Context context = c.this.l;
                                        String str9 = "preload template failed is tpl :" + AnonymousClass3.this.a + " ";
                                        String str10 = c.this.m;
                                        boolean z4 = c.this.z;
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        com.mbridge.msdk.reward.c.a.a(campaignEx2, context, str9, str10, z4, str3, AnonymousClass3.this.b.getRequestIdNotice(), System.currentTimeMillis() - c.this.P);
                                    } catch (Exception unused3) {
                                    }
                                    if (AnonymousClass3.this.b.getRsIgnoreCheckRule() != null && AnonymousClass3.this.b.getRsIgnoreCheckRule().size() > 0 && AnonymousClass3.this.b.getRsIgnoreCheckRule().contains(1)) {
                                        aa.b("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                                        return;
                                    }
                                    c cVar4 = c.this;
                                    c.a(cVar4, str6, cVar4.R, c.this.z);
                                    if (c.this.N != null) {
                                        c.this.N.removeMessages(5);
                                    }
                                    if (c.this.u == null || c.this.j) {
                                        return;
                                    }
                                    c.this.j = true;
                                    if (!TextUtils.isEmpty(c.this.m) && c.this.R != null && c.this.R.size() > 0) {
                                        try {
                                            try {
                                                eVar2.b("errorCode: 3301 errorMessage: temp preload failed: " + eVar2.e());
                                                com.mbridge.msdk.reward.c.a.a((CampaignEx) c.this.R.get(0), c.this.l, eVar2, c.this.m, c.this.z, str7, AnonymousClass3.this.b.getRequestIdNotice());
                                            } catch (Exception unused4) {
                                            }
                                        } catch (Exception unused5) {
                                        }
                                    }
                                    c.this.u.a(c.this.R, eVar2.e());
                                }
                            });
                        }
                    });
                }
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.c
        public final void a(String str, final String str2, final String str3, final CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, final com.mbridge.msdk.foundation.entity.e eVar) {
            c.this.f7403f = false;
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                try {
                    com.mbridge.msdk.reward.c.a.a(copyOnWriteArrayList.get(0), c.this.l, "resource download failed:  is tpl: " + this.a, c.this.m, c.this.z, str3, this.b.getRequestIdNotice(), System.currentTimeMillis() - c.this.P);
                } catch (Exception unused) {
                }
            }
            if (c.this.u == null || c.this.N == null) {
                return;
            }
            c.this.N.post(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.c.3.3
                @Override // java.lang.Runnable
                public final void run() {
                    CopyOnWriteArrayList copyOnWriteArrayList2;
                    c cVar = c.this;
                    c.a(cVar, str2, cVar.R, c.this.z);
                    if (c.this.N != null) {
                        c.this.N.removeMessages(5);
                    }
                    if (c.this.j || c.this.u == null) {
                        return;
                    }
                    c.this.j = true;
                    if (!TextUtils.isEmpty(c.this.m) && (copyOnWriteArrayList2 = copyOnWriteArrayList) != null && copyOnWriteArrayList2.size() > 0) {
                        try {
                            eVar.b("errorCode: 3201 errorMessage: campaign resource download failed");
                            com.mbridge.msdk.reward.c.a.a((CampaignEx) copyOnWriteArrayList.get(0), c.this.l, eVar, c.this.m, c.this.z, str3, AnonymousClass3.this.b.getRequestIdNotice());
                        } catch (Exception unused2) {
                        }
                    }
                    c.this.u.a(copyOnWriteArrayList, eVar.e());
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.c$5, reason: invalid class name */
    /* JADX INFO: compiled from: RewardMVVideoAdapter.java */
    final class AnonymousClass5 implements b.i {
        final /* synthetic */ CampaignEx a;
        final /* synthetic */ boolean b;
        final /* synthetic */ int c;

        AnonymousClass5(CampaignEx campaignEx, boolean z, int i) {
            this.a = campaignEx;
            this.b = z;
            this.c = i;
        }

        @Override // com.mbridge.msdk.reward.adapter.b.i
        public final void a(final String str, final String str2, final String str3, String str4) {
            try {
                com.mbridge.msdk.reward.c.a.a(this.a, c.this.l, "resource download success is tpl :" + this.b, c.this.m, c.this.z, str3, this.a.getRequestIdNotice(), System.currentTimeMillis() - c.this.P);
            } catch (Exception unused) {
            }
            c.this.f7404g = true;
            if (!c.this.f7403f || c.this.h || c.this.N == null) {
                return;
            }
            synchronized (c.this.f7401d) {
                if (c.this.h) {
                    return;
                }
                c.this.h = true;
                c.this.N.post(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.c.5.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.mbridge.msdk.reward.adapter.b bVar = b.m.a;
                        boolean z = c.this.H;
                        Handler handler = c.this.N;
                        boolean z2 = c.this.y;
                        boolean z3 = c.this.z;
                        String str5 = str3;
                        String requestIdNotice = AnonymousClass5.this.a.getRequestIdNotice();
                        String str6 = str;
                        String str7 = str2;
                        String cMPTEntryUrl = AnonymousClass5.this.a.getCMPTEntryUrl();
                        int i = c.this.x;
                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                        bVar.a(z, handler, z2, z3, str5, requestIdNotice, str6, str7, cMPTEntryUrl, i, anonymousClass5.a, c.this.F, g.a().b(AnonymousClass5.this.a.getCMPTEntryUrl()), str2, c.this.v, new b.j() { // from class: com.mbridge.msdk.reward.adapter.c.5.1.1
                            @Override // com.mbridge.msdk.reward.adapter.b.j
                            public final void a(String str8, String str9, String str10, String str11, String str12, a.C0437a c0437a) {
                                try {
                                    AnonymousClass5 anonymousClass52 = AnonymousClass5.this;
                                    CampaignEx campaignEx = anonymousClass52.a;
                                    Context context = c.this.l;
                                    String str13 = "preload template success is tpl :" + AnonymousClass5.this.b;
                                    String str14 = c.this.m;
                                    boolean z4 = c.this.z;
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    com.mbridge.msdk.reward.c.a.a(campaignEx, context, str13, str14, z4, str3, AnonymousClass5.this.a.getRequestIdNotice(), System.currentTimeMillis() - c.this.P);
                                } catch (Exception unused2) {
                                }
                                c cVar = c.this;
                                CopyOnWriteArrayList copyOnWriteArrayList = cVar.F;
                                AnonymousClass5 anonymousClass53 = AnonymousClass5.this;
                                if (cVar.a(copyOnWriteArrayList, anonymousClass53.b, anonymousClass53.c)) {
                                    c cVar2 = c.this;
                                    c.a(cVar2, cVar2.m, c.this.R, c.this.S, c.this.z);
                                    if (c.this.N != null) {
                                        c.this.N.removeMessages(5);
                                    }
                                    if (c.this.u == null || c.this.i) {
                                        return;
                                    }
                                    c.this.i = true;
                                    c.this.u.a(c.this.F);
                                    return;
                                }
                                c cVar3 = c.this;
                                c.a(cVar3, str10, cVar3.R, c.this.z);
                                if (c.this.N != null) {
                                    c.this.N.removeMessages(5);
                                }
                                if (c.this.u == null || c.this.j) {
                                    return;
                                }
                                c.this.j = true;
                                com.mbridge.msdk.foundation.entity.e eVar = new com.mbridge.msdk.foundation.entity.e(8, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                                if (c.this.R != null && c.this.R.size() > 0) {
                                    try {
                                        com.mbridge.msdk.reward.c.a.a((CampaignEx) c.this.R.get(0), c.this.l, eVar, c.this.m, c.this.z, str11, AnonymousClass5.this.a.getRequestIdNotice());
                                    } catch (Exception unused3) {
                                    }
                                }
                                c.this.u.a(c.this.R, eVar.e());
                            }

                            @Override // com.mbridge.msdk.reward.adapter.b.j
                            public final void a(String str8, String str9, String str10, String str11, String str12, a.C0437a c0437a, com.mbridge.msdk.foundation.entity.e eVar) {
                                c cVar = c.this;
                                c.a(cVar, str10, cVar.R, c.this.z);
                                try {
                                    AnonymousClass5 anonymousClass52 = AnonymousClass5.this;
                                    CampaignEx campaignEx = anonymousClass52.a;
                                    Context context = c.this.l;
                                    String str13 = "preload template failed is tpl :" + AnonymousClass5.this.b + " " + eVar.e();
                                    String str14 = c.this.m;
                                    boolean z4 = c.this.z;
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    com.mbridge.msdk.reward.c.a.a(campaignEx, context, str13, str14, z4, str3, AnonymousClass5.this.a.getRequestIdNotice(), System.currentTimeMillis() - c.this.P);
                                } catch (Exception unused2) {
                                }
                                if (c.this.N != null) {
                                    c.this.N.removeMessages(5);
                                }
                                if (c.this.u == null || c.this.j) {
                                    return;
                                }
                                c.this.j = true;
                                if (c.this.R != null && c.this.R.size() > 0) {
                                    eVar.b("errorCode: 3303 errorMessage: tpl temp preload failed: " + eVar.e());
                                    com.mbridge.msdk.reward.c.a.a((CampaignEx) c.this.R.get(0), c.this.l, eVar, c.this.m, c.this.z, str11, AnonymousClass5.this.a.getRequestIdNotice());
                                }
                                c.this.u.a(c.this.R, eVar.e());
                            }
                        }, false);
                    }
                });
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.i
        public final void a(String str, String str2, String str3, String str4, com.mbridge.msdk.foundation.entity.e eVar) {
            if (this.a.getRsIgnoreCheckRule() != null && this.a.getRsIgnoreCheckRule().size() > 0) {
                if (this.a.getRsIgnoreCheckRule().contains(3)) {
                    aa.b("RewardMVVideoAdapter", "tpl download fail but hit ignoreCheckRule");
                    return;
                } else if (this.a.getCMPTEntryUrl().equals(this.a.getendcard_url()) && this.a.getRsIgnoreCheckRule().contains(2)) {
                    aa.b("RewardMVVideoAdapter", "endcard download fail but hit ignoreCheckRule at 3203");
                    return;
                }
            }
            c cVar = c.this;
            c.a(cVar, str2, cVar.R, c.this.z);
            c.this.f7404g = false;
            if (c.this.R.get(0) != null && c.this.R.size() > 0) {
                try {
                    com.mbridge.msdk.reward.c.a.a((CampaignEx) c.this.R.get(0), c.this.l, "resource download failed: " + eVar.e() + " is tpl: " + this.b, c.this.m, c.this.z, str3, ((CampaignEx) c.this.R.get(0)).getRequestIdNotice(), System.currentTimeMillis() - c.this.P);
                } catch (Exception unused) {
                }
            }
            if (c.this.N != null) {
                c.this.N.removeMessages(5);
            }
            if (c.this.u == null || c.this.j) {
                return;
            }
            c.this.j = true;
            if (c.this.R != null && c.this.R.size() > 0) {
                eVar.b("errorCode: 3203 errorMessage: tpl temp resource download failed");
                com.mbridge.msdk.reward.c.a.a((CampaignEx) c.this.R.get(0), c.this.l, eVar, c.this.m, c.this.z, str3, this.a.getRequestIdNotice());
            }
            c.this.u.a(c.this.R, eVar.e());
        }
    }

    /* JADX INFO: compiled from: RewardMVVideoAdapter.java */
    private static class a extends com.mbridge.msdk.mbsignalcommon.b.a {
        private c a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private a.C0437a f7417d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CampaignEx f7418e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f7419f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f7420g;
        private b h;
        private Handler i;

        public a(String str, String str2, a.C0437a c0437a, CampaignEx campaignEx, c cVar, b bVar, Handler handler) {
            this.b = str;
            this.c = str2;
            this.f7417d = c0437a;
            if (cVar != null) {
                this.a = cVar;
            }
            this.f7418e = campaignEx;
            this.h = bVar;
            this.i = handler;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.a, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, int i) {
            Handler handler;
            if (this.f7420g) {
                return;
            }
            b bVar = this.h;
            if (bVar != null && (handler = this.i) != null) {
                handler.removeCallbacks(bVar);
            }
            i.a().d(this.b, true);
            String str = this.c + "_" + this.b;
            a.C0437a c0437a = this.f7417d;
            if (c0437a != null) {
                c0437a.a(true);
            }
            List<CampaignEx> listA = com.mbridge.msdk.videocommon.a.a.a().a(this.c, 1, this.a.z);
            if (listA != null && listA.size() > 0) {
                Iterator<CampaignEx> it = listA.iterator();
                while (it.hasNext()) {
                    CampaignEx.c rewardTemplateMode = it.next().getRewardTemplateMode();
                    if (rewardTemplateMode != null && !TextUtils.isEmpty(rewardTemplateMode.e()) && !rewardTemplateMode.e().contains(CampaignEx.KEY_IS_CMPT_ENTRY) && TextUtils.equals(rewardTemplateMode.e(), this.b)) {
                        if (TextUtils.isEmpty(this.f7418e.getCMPTEntryUrl()) && this.f7418e.getMof_tplid() == -1) {
                            String str2 = this.c + "_" + this.f7418e.getRequestIdNotice();
                        } else {
                            String str3 = this.c + "_" + this.f7418e.getMof_tplid() + "_" + this.f7418e.getRequestIdNotice();
                        }
                        c cVar = this.a;
                        if (cVar == null || !cVar.y) {
                            if (this.f7418e.isBidCampaign()) {
                                com.mbridge.msdk.videocommon.a.a(94, this.f7418e.getRequestIdNotice(), this.f7417d);
                            }
                        } else if (this.f7418e.isBidCampaign()) {
                            com.mbridge.msdk.videocommon.a.a(287, this.f7418e.getRequestIdNotice(), this.f7417d);
                        }
                    }
                }
            }
            try {
                c cVar2 = this.a;
                if (cVar2 != null) {
                    synchronized (cVar2) {
                        c cVar3 = this.a;
                        if (cVar3 != null && cVar3.c() && this.a.N != null) {
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 6;
                            aa.a("RVWindVaneWebView", "WHAT_ON_RES_LOAD_SUCCESS TPL");
                            messageObtain.obj = this.f7418e;
                            this.a.N.sendMessage(messageObtain);
                            this.a.N.removeMessages(5);
                            this.a = null;
                        }
                    }
                }
            } catch (Throwable th) {
                aa.b("RVWindVaneWebView", th.getMessage(), th);
            }
            this.f7420g = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.a, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, int i, String str, String str2) {
            super.a(webView, i, str, str2);
            try {
                c cVar = this.a;
                if (cVar != null) {
                    synchronized (cVar) {
                        c.a(this.a, str, str2);
                        this.a = null;
                    }
                }
            } catch (Throwable th) {
                aa.b("RVWindVaneWebView", th.getMessage(), th);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.a, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, String str) {
            super.a(webView, str);
            if (this.f7419f) {
                return;
            }
            com.mbridge.msdk.mbsignalcommon.windvane.g.a().a(webView);
            this.f7419f = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.a
        public final void a(WebView webView, String str, String str2, int i, int i2) {
        }
    }

    /* JADX INFO: compiled from: RewardMVVideoAdapter.java */
    private class b implements Runnable {
        private String b;
        private CampaignEx c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f7421d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f7422e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.mbridge.msdk.videocommon.d.c f7423f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f7424g;
        private c h;

        public b(String str, CampaignEx campaignEx, String str2, String str3, com.mbridge.msdk.videocommon.d.c cVar, int i, c cVar2) {
            this.b = str;
            this.c = campaignEx;
            this.f7421d = str2;
            this.f7422e = str3;
            this.f7423f = cVar;
            this.f7424g = i;
            this.h = cVar2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                a.C0437a c0437a = new a.C0437a();
                WindVaneWebView windVaneWebView = new WindVaneWebView(com.mbridge.msdk.foundation.controller.b.d().g());
                c0437a.a(windVaneWebView);
                String strB = com.mbridge.msdk.video.bt.a.c.a().b();
                c0437a.a(strB);
                j jVar = (c.this.E.getAds() == null || c.this.E.getAds().size() <= 0) ? new j(null, this.c) : new j(null, this.c, c.this.E.getAds());
                jVar.a(this.f7424g);
                jVar.a(this.f7422e);
                jVar.c(strB);
                jVar.a(this.f7423f);
                jVar.d(c.this.H);
                windVaneWebView.setWebViewListener(new a(this.f7421d, this.b, c0437a, this.c, this.h, null, null));
                windVaneWebView.setObject(jVar);
                windVaneWebView.loadUrl(this.f7421d);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            } catch (Throwable th) {
                aa.a("RewardMVVideoAdapter", th.getMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RewardMVVideoAdapter.java */
    private class RunnableC0421c implements Runnable {
        private WindVaneWebView b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CampaignEx f7425d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<CampaignEx> f7426e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f7427f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f7428g;
        private com.mbridge.msdk.videocommon.d.c h;
        private int i;
        private c j;

        public RunnableC0421c(WindVaneWebView windVaneWebView, String str, CampaignEx campaignEx, List<CampaignEx> list, String str2, String str3, com.mbridge.msdk.videocommon.d.c cVar, int i, c cVar2) {
            this.b = windVaneWebView;
            this.c = str;
            this.f7425d = campaignEx;
            this.f7426e = list;
            this.f7427f = str2;
            this.f7428g = str3;
            this.h = cVar;
            this.i = i;
            this.j = cVar2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                a.C0437a c0437a = new a.C0437a();
                WindVaneWebView windVaneWebView = new WindVaneWebView(com.mbridge.msdk.foundation.controller.b.d().g());
                c0437a.a(windVaneWebView);
                List<CampaignEx> list = this.f7426e;
                j jVar = (list == null || list.size() <= 0) ? new j(null, this.f7425d) : new j(null, this.f7425d, this.f7426e);
                jVar.a(this.i);
                jVar.a(this.f7428g);
                jVar.a(this.h);
                jVar.d(c.this.H);
                windVaneWebView.setWebViewListener(new f(this.b, this.f7427f, this.c, c0437a, this.f7425d, this.j, null, null));
                windVaneWebView.setObject(jVar);
                windVaneWebView.loadUrl(this.f7427f);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            } catch (Throwable th) {
                aa.a("RewardMVVideoAdapter", th.getMessage());
            }
        }
    }

    /* JADX INFO: compiled from: RewardMVVideoAdapter.java */
    public class d implements Runnable {
        private String b;
        private Map<String, String> c;

        public d(String str, Map<String, String> map) {
            this.b = str;
            this.c = map;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (c.this.L) {
                    return;
                }
                c.this.M = true;
                if (c.this.N != null) {
                    Message messageObtainMessage = c.this.N.obtainMessage();
                    messageObtainMessage.obj = this.b;
                    messageObtainMessage.what = 2;
                    c.this.N.sendMessage(messageObtainMessage);
                }
            } catch (Exception e2) {
                aa.d("RewardMVVideoAdapter", e2.getMessage());
            }
        }
    }

    /* JADX INFO: compiled from: RewardMVVideoAdapter.java */
    public class e implements Runnable {
        private String b;
        private Map<String, String> c;

        public e(String str, Map<String, String> map) {
            this.b = str;
            this.c = map;
            map.put("bid_token", str);
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                c cVar = c.this;
                cVar.s = af.b(cVar.l, c.this.m);
                if (c.this.M) {
                    return;
                }
                if (c.this.K != null && c.this.N != null) {
                    c.this.N.removeCallbacks(c.this.K);
                }
                c.this.L = true;
                if (c.this.N != null) {
                    Message messageObtainMessage = c.this.N.obtainMessage();
                    messageObtainMessage.obj = this.c;
                    messageObtainMessage.what = 1;
                    c.this.N.sendMessage(messageObtainMessage);
                }
                if (TextUtils.isEmpty(c.this.s)) {
                    return;
                }
                aa.d("RewardMVVideoAdapter", "excludeId : " + c.this.s);
            } catch (Exception e2) {
                aa.d("RewardMVVideoAdapter", e2.getMessage());
            }
        }
    }

    /* JADX INFO: compiled from: RewardMVVideoAdapter.java */
    private static class f extends com.mbridge.msdk.mbsignalcommon.b.b {
        private c a;
        private WindVaneWebView b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f7429d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private a.C0437a f7430e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CampaignEx f7431f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f7432g;
        private boolean h;
        private RunnableC0421c i;
        private Handler j;

        public f(WindVaneWebView windVaneWebView, String str, String str2, a.C0437a c0437a, CampaignEx campaignEx, c cVar, RunnableC0421c runnableC0421c, Handler handler) {
            this.b = windVaneWebView;
            this.c = str;
            this.f7429d = str2;
            this.f7430e = c0437a;
            if (cVar != null) {
                this.a = cVar;
            }
            this.f7431f = campaignEx;
            this.i = runnableC0421c;
            this.j = handler;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, int i) {
            Handler handler;
            if (this.h) {
                return;
            }
            RunnableC0421c runnableC0421c = this.i;
            if (runnableC0421c != null && (handler = this.j) != null) {
                handler.removeCallbacks(runnableC0421c);
            }
            String str = this.f7429d + "_" + this.c;
            a.C0437a c0437a = this.f7430e;
            if (c0437a != null) {
                c0437a.a(true);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("type", 1);
                jSONObject.put("id", str);
                jSONObject.put("unitid", this.f7429d);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            i.a().d(this.c, true);
            com.mbridge.msdk.videocommon.a.a.a().a(this.f7429d, 1, this.a.z);
            c cVar = this.a;
            if (cVar == null || !cVar.y) {
                if (this.f7431f.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(94, this.f7431f.getRequestIdNotice(), this.f7430e);
                }
            } else if (this.f7431f.isBidCampaign()) {
                com.mbridge.msdk.videocommon.a.a(287, this.f7431f.getRequestIdNotice(), this.f7430e);
            }
            try {
                c cVar2 = this.a;
                if (cVar2 != null) {
                    synchronized (cVar2) {
                        c cVar3 = this.a;
                        if (cVar3 != null && cVar3.c() && this.a.N != null) {
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 6;
                            messageObtain.obj = this.f7431f;
                            this.a.N.sendMessage(messageObtain);
                            this.a.N.removeMessages(5);
                            this.a = null;
                        }
                    }
                }
            } catch (Throwable th) {
                aa.b("WindVaneWebView", th.getMessage(), th);
            }
            this.h = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, int i, String str, String str2) {
            super.a(webView, i, str, str2);
            try {
                c cVar = this.a;
                if (cVar != null) {
                    synchronized (cVar) {
                        c.a(this.a, str, str2);
                        this.a = null;
                    }
                }
            } catch (Throwable th) {
                aa.b("WindVaneWebView", th.getMessage(), th);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, String str) {
            super.a(webView, str);
            if (this.f7432g) {
                return;
            }
            com.mbridge.msdk.mbsignalcommon.windvane.g.a().a(webView);
            this.f7432g = true;
        }
    }

    public c(Context context, String str, String str2) {
        try {
            this.l = context.getApplicationContext();
            this.m = str2;
            this.n = str;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x01c3 A[EXC_TOP_SPLITTER, PHI: r1
      0x01c3: PHI (r1v3 java.io.FileOutputStream) = (r1v4 java.io.FileOutputStream), (r1v5 java.io.FileOutputStream) binds: [B:104:0x01cd, B:97:0x01c1] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0159 A[Catch: all -> 0x01c7, Exception -> 0x01c9, PHI: r1
      0x0159: PHI (r1v7 java.io.FileOutputStream) = (r1v6 java.io.FileOutputStream), (r1v11 java.io.FileOutputStream) binds: [B:25:0x0069, B:66:0x0149] A[DONT_GENERATE, DONT_INLINE], TryCatch #4 {Exception -> 0x01c9, blocks: (B:3:0x0006, B:5:0x000a, B:8:0x0013, B:10:0x0019, B:12:0x0023, B:14:0x0030, B:16:0x003a, B:17:0x003f, B:19:0x0045, B:21:0x0057, B:24:0x005f, B:26:0x006b, B:28:0x0079, B:61:0x0130, B:63:0x013f, B:65:0x0145, B:67:0x014b, B:69:0x0155, B:70:0x0158, B:60:0x012d, B:32:0x0086, B:35:0x0091, B:71:0x0159, B:73:0x0161, B:75:0x0168, B:77:0x0172, B:85:0x018c, B:87:0x0192, B:90:0x019f, B:92:0x01a5, B:93:0x01a9, B:94:0x01b5, B:95:0x01b9, B:80:0x017d), top: B:116:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> a(com.mbridge.msdk.foundation.entity.CampaignUnit r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 471
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.a(com.mbridge.msdk.foundation.entity.CampaignUnit):java.util.concurrent.CopyOnWriteArrayList");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str, int i2) {
        if (this.N != null) {
            if (TextUtils.isEmpty(str)) {
                this.N.sendEmptyMessage(4);
                return;
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 4;
            messageObtain.obj = str;
            messageObtain.arg1 = i;
            messageObtain.arg2 = i2;
            if (str.contains("exception")) {
                this.N.sendMessageAtFrontOfQueue(messageObtain);
            } else {
                this.N.sendMessage(messageObtain);
            }
        }
    }

    private void a(final CampaignEx campaignEx) {
        final boolean z = !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl());
        final int nscpt = campaignEx.getNscpt();
        this.f7403f = false;
        this.f7404g = false;
        synchronized (this.f7401d) {
            if (this.h) {
                this.h = false;
            }
        }
        this.j = false;
        this.i = false;
        if (this.z) {
            com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).a(campaignEx.getBidToken(), campaignEx.getCampaignUnitId(), campaignEx.getEncryptPrice());
        }
        b.m.a.a(this.l, z, nscpt, this.z, this.y ? 287 : 94, this.n, this.m, campaignEx.getRequestId(), this.F, new AnonymousClass3(z, campaignEx, nscpt), new b.i() { // from class: com.mbridge.msdk.reward.adapter.c.4
            @Override // com.mbridge.msdk.reward.adapter.b.i
            public final void a(String str, String str2, String str3, String str4) {
            }

            @Override // com.mbridge.msdk.reward.adapter.b.i
            public final void a(String str, final String str2, final String str3, String str4, final com.mbridge.msdk.foundation.entity.e eVar) {
                if (!z && c.this.u != null && c.this.N != null) {
                    if (campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(1)) {
                        c.this.N.post(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.c.4.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                c cVar = c.this;
                                c.a(cVar, str2, cVar.R, c.this.z);
                                if (c.this.N != null) {
                                    c.this.N.removeMessages(5);
                                }
                                if (c.this.j || c.this.u == null) {
                                    return;
                                }
                                c.this.j = true;
                                if (c.this.R != null && c.this.R.size() > 0) {
                                    eVar.b("errorCode: 3202 errorMessage: temp resource download failed");
                                    com.mbridge.msdk.reward.c.a.a((CampaignEx) c.this.R.get(0), c.this.l, eVar, c.this.m, c.this.z, str3, campaignEx.getRequestIdNotice());
                                }
                                c.this.u.a(c.this.R, eVar.e());
                            }
                        });
                        return;
                    } else {
                        aa.b("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                        return;
                    }
                }
                if (nscpt == 1) {
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                        if (campaignEx.getRsIgnoreCheckRule().contains(3)) {
                            aa.b("RewardMVVideoAdapter", "tpl download fail but hit ignoreCheckRule");
                            return;
                        } else if (campaignEx.getCMPTEntryUrl().equals(campaignEx.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                            aa.b("RewardMVVideoAdapter", "endcard download fail but hit ignoreCheckRule at 3203");
                            return;
                        }
                    }
                    if (c.this.u == null || c.this.N == null) {
                        return;
                    }
                    c.this.N.post(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.c.4.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            c cVar = c.this;
                            c.a(cVar, str2, cVar.R, c.this.z);
                            if (c.this.N != null) {
                                c.this.N.removeMessages(5);
                            }
                            if (c.this.j || c.this.u == null) {
                                return;
                            }
                            c.this.j = true;
                            if (c.this.R != null && c.this.R.size() > 0) {
                                eVar.b("errorCode: 3203 errorMessage: tpl temp resource download failed");
                                com.mbridge.msdk.reward.c.a.a((CampaignEx) c.this.R.get(0), c.this.l, eVar, c.this.m, c.this.z, str3, campaignEx.getRequestIdNotice());
                            }
                            c.this.u.a(c.this.R, eVar.e());
                        }
                    });
                }
            }
        });
        if (z) {
            b.m.a.a(this.l, campaignEx, this.n, this.m, campaignEx.getRequestId(), new AnonymousClass5(campaignEx, z, nscpt));
        }
    }

    private void a(CampaignUnit campaignUnit, String str) {
        ArrayList<CampaignEx> ads;
        if (campaignUnit == null || (ads = campaignUnit.getAds()) == null || ads.size() == 0) {
            return;
        }
        try {
            HashMap map = new HashMap();
            if (!TextUtils.isEmpty(str)) {
                map.put("reason", str);
            }
            CampaignEx campaignEx = ads.get(0);
            if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
                int iL = !TextUtils.isEmpty(campaignEx.getMof_template_url()) ? af.l(campaignEx.getMof_template_url()) : af.l(campaignEx.getRewardTemplateMode().e());
                if (iL != 0) {
                    map.put(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, iL + "");
                }
            }
            if (ads.size() > 1) {
                m.a().b("m_campaign_filtered", this.c, map);
            } else {
                m.a().a("m_campaign_filtered", this.c, map);
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    private void a(final CampaignUnit campaignUnit, List<CampaignEx> list) {
        com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.c.6
            @Override // java.lang.Runnable
            public final void run() {
                k.a(com.mbridge.msdk.foundation.db.h.a(c.this.l)).b();
                CampaignUnit campaignUnit2 = campaignUnit;
                if (campaignUnit2 == null || campaignUnit2.getAds() == null || campaignUnit.getAds().size() <= 0) {
                    return;
                }
                c.a(c.this, campaignUnit.getAds());
            }
        });
    }

    static /* synthetic */ void a(c cVar, CampaignUnit campaignUnit) throws Throwable {
        cVar.E = campaignUnit;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA = cVar.a(campaignUnit);
        new com.mbridge.msdk.reward.a.a(cVar.m, cVar.y).a(copyOnWriteArrayListA, cVar.J, cVar, cVar.m);
        cVar.a(copyOnWriteArrayListA, true, false);
    }

    static /* synthetic */ void a(c cVar, WindVaneWebView windVaneWebView, String str, CampaignEx campaignEx, List list, String str2, String str3, com.mbridge.msdk.videocommon.d.c cVar2, String str4) {
        try {
            a.C0437a c0437a = new a.C0437a();
            WindVaneWebView windVaneWebView2 = new WindVaneWebView(com.mbridge.msdk.foundation.controller.b.d().g());
            c0437a.a(windVaneWebView2);
            j jVar = (list == null || list.size() <= 0) ? new j(null, campaignEx) : new j(null, campaignEx, list);
            jVar.a(cVar.x);
            jVar.a(str3);
            jVar.a(cVar2);
            jVar.d(cVar.H);
            RunnableC0421c runnableC0421c = cVar.new RunnableC0421c(windVaneWebView, str3, campaignEx, list, str2, str3, cVar2, cVar.x, cVar);
            windVaneWebView2.setWebViewListener(new f(windVaneWebView, str, str3, c0437a, campaignEx, cVar, runnableC0421c, cVar.N));
            windVaneWebView2.setObject(jVar);
            windVaneWebView2.loadUrl(str2);
            cVar.N.postDelayed(runnableC0421c, 5000L);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            aa.a("RewardMVVideoAdapter", th.getMessage());
        }
    }

    static /* synthetic */ void a(c cVar, String str, CampaignEx campaignEx, String str2, String str3, com.mbridge.msdk.videocommon.d.c cVar2) {
        try {
            a.C0437a c0437a = new a.C0437a();
            WindVaneWebView windVaneWebView = new WindVaneWebView(com.mbridge.msdk.foundation.controller.b.d().g());
            c0437a.a(windVaneWebView);
            String strB = com.mbridge.msdk.video.bt.a.c.a().b();
            c0437a.a(strB);
            CampaignUnit campaignUnit = cVar.E;
            j jVar = (campaignUnit == null || campaignUnit.getAds() == null || cVar.E.getAds().size() <= 0) ? new j(null, campaignEx) : new j(null, campaignEx, cVar.E.getAds());
            jVar.a(cVar.x);
            jVar.a(str3);
            jVar.c(strB);
            jVar.a(cVar2);
            jVar.d(cVar.H);
            b bVar = cVar.new b(str3, campaignEx, str2, str3, cVar2, cVar.x, cVar);
            windVaneWebView.setWebViewListener(new a(str, str3, c0437a, campaignEx, cVar, bVar, cVar.N));
            windVaneWebView.setObject(jVar);
            windVaneWebView.loadUrl(str2);
            cVar.N.postDelayed(bVar, 5000L);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            aa.a("RewardMVVideoAdapter", th.getMessage());
        }
    }

    static /* synthetic */ void a(c cVar, String str, String str2) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList;
        List<String> list;
        try {
            if (cVar.w == null || TextUtils.isEmpty(str2)) {
                if (cVar.u != null) {
                    Handler handler = cVar.N;
                    if (handler != null) {
                        handler.removeMessages(5);
                    }
                    cVar.a(str, 1);
                    cVar.u.a(cVar.w, str);
                    return;
                }
                return;
            }
            Iterator<CampaignEx> it = cVar.w.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                CampaignEx next = it.next();
                if (next != null) {
                    String videoUrlEncode = next.getVideoUrlEncode();
                    if (!TextUtils.isEmpty(videoUrlEncode) && str2.equals(videoUrlEncode)) {
                        cVar.w.remove(next);
                        cVar.b(next);
                        break;
                    }
                    String str3 = next.getendcard_url();
                    if (!TextUtils.isEmpty(str3) && str2.equals(str3)) {
                        cVar.w.remove(next);
                        cVar.b(next);
                        break;
                    }
                    CampaignEx.c rewardTemplateMode = next.getRewardTemplateMode();
                    if (rewardTemplateMode != null) {
                        List<CampaignEx.c.a> listF = rewardTemplateMode.f();
                        if (listF != null) {
                            Iterator<CampaignEx.c.a> it2 = listF.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    break;
                                }
                                CampaignEx.c.a next2 = it2.next();
                                if (next2 != null && (list = next2.b) != null && list.contains(str2)) {
                                    cVar.w.remove(next);
                                    cVar.b(next);
                                    break;
                                }
                            }
                        }
                        String strE = rewardTemplateMode.e();
                        if (!TextUtils.isEmpty(strE) && str2.equals(strE)) {
                            cVar.w.remove(next);
                            cVar.b(next);
                            break;
                        }
                    } else {
                        continue;
                    }
                }
            }
            if (cVar.u == null || (copyOnWriteArrayList = cVar.w) == null || copyOnWriteArrayList.size() != 0) {
                return;
            }
            Handler handler2 = cVar.N;
            if (handler2 != null) {
                handler2.removeMessages(5);
            }
            cVar.a(str, 1);
            cVar.u.a(cVar.w, str);
        } catch (Throwable th) {
            aa.b("RewardMVVideoAdapter", th.getMessage(), th);
            try {
                if (cVar.u != null) {
                    Handler handler3 = cVar.N;
                    if (handler3 != null) {
                        handler3.removeMessages(5);
                    }
                    cVar.a(str, 1);
                }
            } catch (Throwable th2) {
                aa.b("RewardMVVideoAdapter", th2.getMessage(), th2);
            }
        }
    }

    static /* synthetic */ void a(c cVar, String str, List list, List list2, boolean z) {
        com.mbridge.msdk.foundation.db.f.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g())).a(str, (List<CampaignEx>) list, (List<CampaignEx>) list2, z);
        if (list2 != null && list2.size() > 0) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                CampaignEx campaignEx = (CampaignEx) it.next();
                if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                    com.mbridge.msdk.videocommon.a.b(str + "_" + campaignEx.getId() + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    com.mbridge.msdk.videocommon.a.b(campaignEx.getAdType(), campaignEx);
                }
            }
        }
        if (z) {
            cVar.a(str, (List<CampaignEx>) list, (List<CampaignEx>) list2);
        }
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            CampaignEx campaignEx2 = (CampaignEx) list.get(0);
            com.mbridge.msdk.reward.a.a aVar = new com.mbridge.msdk.reward.a.a(str, cVar.y);
            if (campaignEx2 == null || !TextUtils.isEmpty(campaignEx2.getNLRid())) {
                return;
            }
            aVar.a(campaignEx2.getLocalRequestId(), campaignEx2.getRequestId(), 1, campaignEx2.getEcppv());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    static /* synthetic */ void a(c cVar, String str, List list, boolean z) {
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
            return;
        }
        com.mbridge.msdk.foundation.db.f.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g())).a(str, (List<CampaignEx>) list, z);
    }

    static /* synthetic */ void a(c cVar, List list) {
        if (cVar.l == null || list == null || list.size() == 0) {
            return;
        }
        k kVarA = k.a(com.mbridge.msdk.foundation.db.h.a(cVar.l));
        for (int i = 0; i < list.size(); i++) {
            CampaignEx campaignEx = (CampaignEx) list.get(i);
            if (campaignEx != null && kVarA != null && !kVarA.a(campaignEx.getId())) {
                com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                gVar.a(campaignEx.getId());
                gVar.a(campaignEx.getFca());
                gVar.b(campaignEx.getFcb());
                gVar.d(0);
                gVar.c(0);
                gVar.a(System.currentTimeMillis());
                kVarA.a(gVar);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006d A[Catch: Exception -> 0x008c, TryCatch #0 {Exception -> 0x008c, blocks: (B:4:0x0004, B:6:0x0017, B:9:0x003f, B:11:0x0044, B:13:0x004a, B:22:0x0066, B:23:0x0069, B:25:0x0072, B:27:0x0078, B:28:0x007d, B:24:0x006d), top: B:35:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ void a(com.mbridge.msdk.reward.adapter.c r6, java.util.Map r7, com.mbridge.msdk.foundation.entity.CampaignUnit r8, boolean r9, int r10, int r11, java.lang.String r12) {
        /*
            java.lang.String r0 = ""
            if (r7 == 0) goto L15
            java.lang.String r1 = "local_rid"
            java.lang.Object r1 = r7.get(r1)     // Catch: java.lang.Exception -> L8c
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Exception -> L8c
            java.lang.String r2 = "isDev"
            java.lang.Object r7 = r7.get(r2)     // Catch: java.lang.Exception -> L8c
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Exception -> L8c
            goto L17
        L15:
            r7 = r0
            r1 = r7
        L17:
            java.util.HashMap r2 = new java.util.HashMap     // Catch: java.lang.Exception -> L8c
            r2.<init>()     // Catch: java.lang.Exception -> L8c
            java.lang.String r3 = "timeout"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L8c
            r4.<init>()     // Catch: java.lang.Exception -> L8c
            int r5 = r6.q     // Catch: java.lang.Exception -> L8c
            r4.append(r5)     // Catch: java.lang.Exception -> L8c
            r4.append(r0)     // Catch: java.lang.Exception -> L8c
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Exception -> L8c
            r2.put(r3, r0)     // Catch: java.lang.Exception -> L8c
            java.lang.String r0 = "auto_load"
            r2.put(r0, r7)     // Catch: java.lang.Exception -> L8c
            java.lang.String r7 = "2000126"
            java.lang.String r0 = "1"
            java.lang.String r3 = "result"
            if (r9 == 0) goto L59
            r2.put(r3, r0)     // Catch: java.lang.Exception -> L8c
            if (r8 == 0) goto L94
            java.util.ArrayList r6 = r8.getAds()     // Catch: java.lang.Exception -> L8c
            if (r6 == 0) goto L94
            r8.setLocalRequestId(r1)     // Catch: java.lang.Exception -> L8c
            com.mbridge.msdk.foundation.same.report.m r6 = com.mbridge.msdk.foundation.same.report.m.a()     // Catch: java.lang.Exception -> L8c
            java.util.ArrayList r8 = r8.getAds()     // Catch: java.lang.Exception -> L8c
            r6.a(r7, r8, r2)     // Catch: java.lang.Exception -> L8c
            goto L94
        L59:
            r8 = 1
            if (r11 == r8) goto L5f
            r8 = 2
            if (r11 != r8) goto L94
        L5f:
            r8 = 3
            if (r10 == r8) goto L6d
            r8 = 14
            if (r10 == r8) goto L6d
            switch(r10) {
                case 9: goto L6d;
                case 10: goto L6d;
                case 11: goto L6d;
                case 12: goto L6d;
                default: goto L69;
            }     // Catch: java.lang.Exception -> L8c
        L69:
            r2.put(r3, r0)     // Catch: java.lang.Exception -> L8c
            goto L72
        L6d:
            java.lang.String r8 = "2"
            r2.put(r3, r8)     // Catch: java.lang.Exception -> L8c
        L72:
            boolean r8 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L8c
            if (r8 == 0) goto L7d
            java.lang.String r8 = "unit_id"
            r2.put(r8, r12)     // Catch: java.lang.Exception -> L8c
        L7d:
            java.lang.String r8 = "bid_tk"
            java.lang.String r6 = r6.J     // Catch: java.lang.Exception -> L8c
            r2.put(r8, r6)     // Catch: java.lang.Exception -> L8c
            com.mbridge.msdk.foundation.same.report.m r6 = com.mbridge.msdk.foundation.same.report.m.a()     // Catch: java.lang.Exception -> L8c
            r6.a(r7, r1, r2)     // Catch: java.lang.Exception -> L8c
            goto L94
        L8c:
            r6 = move-exception
            boolean r7 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r7 == 0) goto L94
            r6.printStackTrace()
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.a(com.mbridge.msdk.reward.adapter.c, java.util.Map, com.mbridge.msdk.foundation.entity.CampaignUnit, boolean, int, int, java.lang.String):void");
    }

    private void a(String str, int i) {
        if (this.N != null) {
            if (TextUtils.isEmpty(str)) {
                this.N.sendEmptyMessage(4);
                return;
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 4;
            messageObtain.obj = str;
            messageObtain.arg2 = i;
            if (str.contains("exception")) {
                this.N.sendMessageAtFrontOfQueue(messageObtain);
            } else {
                this.N.sendMessage(messageObtain);
            }
        }
    }

    private void a(String str, String str2, List<CampaignEx> list) {
        if (com.mbridge.msdk.videocommon.a.a.a() != null) {
            com.mbridge.msdk.videocommon.a.a.a().a(str, str2, list);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.lang.String r11, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r12, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r13) {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.a(java.lang.String, java.util.List, java.util.List):void");
    }

    private void a(String str, boolean z, final Map<String, String> map) {
        int iT;
        int iU;
        boolean zB;
        String str2 = "1";
        try {
            if (this.l == null) {
                a("Context is null", 0);
                return;
            }
            if (ak.a(this.m)) {
                a("UnitId is null", 0);
                return;
            }
            if (this.v == null) {
                a("RewardUnitSetting is null", 0);
                return;
            }
            if (TextUtils.isEmpty(str)) {
                if (System.currentTimeMillis() - this.I < this.v.a() * 1000) {
                    a(6001, MintegralAdapter.MINTERGRAL_NO_FILL_EXCEPTION_RETURN_EMPTY, 4);
                    return;
                }
            }
            String strH = com.mbridge.msdk.foundation.controller.b.d().h();
            String md5 = SameMD5.getMD5(com.mbridge.msdk.foundation.controller.b.d().h() + com.mbridge.msdk.foundation.controller.b.d().j());
            int i = this.r ? 2 : 3;
            com.mbridge.msdk.videocommon.d.c cVar = this.v;
            if (cVar != null) {
                iT = cVar.t();
                iU = this.v.u();
            } else {
                iT = 0;
                iU = 0;
            }
            String str3 = this.s;
            String strA = com.mbridge.msdk.foundation.same.a.d.a(this.m, "reward");
            this.o = j();
            String strL = l();
            int i2 = this.p;
            int i3 = iU;
            int i4 = this.y ? 287 : 94;
            com.mbridge.msdk.foundation.same.net.h.d dVar = new com.mbridge.msdk.foundation.same.net.h.d();
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, "app_id", strH);
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, MBridgeConstans.PROPERTIES_UNIT_ID, this.m);
            if (!TextUtils.isEmpty(this.n)) {
                com.mbridge.msdk.foundation.same.net.g.b.a(dVar, MBridgeConstans.PLACEMENT_ID, this.n);
            }
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, "sign", md5);
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, "req_type", i + "");
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, "ad_num", iT + "");
            StringBuilder sb = new StringBuilder();
            sb.append(this.y ? 1 : i3);
            sb.append("");
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, "tnum", sb.toString());
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, "only_impression", "1");
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, "ping_mode", "1");
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, com.mbridge.msdk.foundation.same.net.h.d.b, strA);
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, com.mbridge.msdk.foundation.same.net.h.d.c, str3);
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, CampaignEx.JSON_KEY_AD_SOURCE_ID, i2 + "");
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, com.mbridge.msdk.foundation.same.net.h.d.a, strL);
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, "ad_type", i4 + "");
            com.mbridge.msdk.foundation.same.net.g.b.a(dVar, TypedValues.CycleType.S_WAVE_OFFSET, this.o + "");
            if (!TextUtils.isEmpty(str)) {
                dVar.a("token", str);
            }
            if (this.y) {
                int i5 = this.B;
                if (i5 == com.mbridge.msdk.foundation.same.a.p || i5 == com.mbridge.msdk.foundation.same.a.o) {
                    dVar.a("ivrwd", "1");
                } else {
                    dVar.a("ivrwd", "0");
                }
            }
            com.mbridge.msdk.videocommon.d.c cVarA = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), this.m, this.y);
            if (cVarA != null && !TextUtils.isEmpty(cVarA.k())) {
                dVar.a("u_stid", cVarA.k());
            }
            com.mbridge.msdk.videocommon.d.a aVarB = com.mbridge.msdk.videocommon.d.b.a().b();
            if (aVarB != null && !TextUtils.isEmpty(aVarB.b())) {
                dVar.a("r_stid", aVarB.b());
            }
            if (!z) {
                str2 = "0";
            }
            dVar.a("rw_plus", str2);
            String strH2 = af.h(this.m);
            if (!TextUtils.isEmpty(strH2)) {
                dVar.a("j", strH2);
            }
            dVar.a(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID));
            this.P = System.currentTimeMillis();
            try {
                com.mbridge.msdk.reward.c.a.a(null, this.l, "start load offer from server", this.m, this.z, "", "", System.currentTimeMillis() - this.P);
            } catch (Exception unused) {
            }
            com.mbridge.msdk.reward.d.b bVar = new com.mbridge.msdk.reward.d.b(this.l);
            com.mbridge.msdk.reward.d.a aVar = new com.mbridge.msdk.reward.d.a() { // from class: com.mbridge.msdk.reward.adapter.c.2
                @Override // com.mbridge.msdk.reward.d.a
                public final void a(int i6, String str4, int i7) {
                    CampaignEx campaignEx;
                    com.mbridge.msdk.reward.c.a.a(null, c.this.l, "load offer failed: " + str4, c.this.m, c.this.z, "", "", System.currentTimeMillis() - c.this.P);
                    if (i6 == -1) {
                        c.this.I = System.currentTimeMillis();
                    }
                    if (c.this.F != null && c.this.F.size() > 0 && (campaignEx = (CampaignEx) c.this.F.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
                        c.this.F.clear();
                    }
                    if (c.this.R != null) {
                        c.this.R.clear();
                    }
                    c.this.f7403f = false;
                    c.this.f7404g = false;
                    synchronized (c.this.f7401d) {
                        if (c.this.h) {
                            c.this.h = false;
                        }
                    }
                    c.this.j = false;
                    c.this.i = false;
                    if (!c.this.O) {
                        c.a(c.this, map, null, false, i6, i7, this.unitId);
                        c.this.a(i6, str4, i7);
                    }
                    c.this.k();
                }

                @Override // com.mbridge.msdk.reward.d.a
                public final void a(CampaignUnit campaignUnit) throws Throwable {
                    CampaignEx campaignEx;
                    if (campaignUnit != null) {
                        try {
                            if (campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0) {
                                c.a(c.this, map, campaignUnit, true, 0, 0, this.unitId);
                                try {
                                    CampaignEx campaignEx2 = campaignUnit.getAds().get(0);
                                    Context context = c.this.l;
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("load offer success tpl ");
                                    sb2.append(!TextUtils.isEmpty(campaignUnit.getAds().get(0).getCMPTEntryUrl()));
                                    com.mbridge.msdk.reward.c.a.a(campaignEx2, context, sb2.toString(), c.this.m, c.this.z, "", "", System.currentTimeMillis() - c.this.P);
                                } catch (Exception unused2) {
                                }
                            }
                        } catch (Exception e2) {
                            if (MBridgeConstans.DEBUG) {
                                e2.printStackTrace();
                            }
                            if (c.this.F != null && c.this.F.size() > 0 && (campaignEx = (CampaignEx) c.this.F.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
                                c.this.F.clear();
                            }
                            if (c.this.R != null) {
                                c.this.R.clear();
                            }
                            c.this.f7403f = false;
                            c.this.f7404g = false;
                            synchronized (c.this.f7401d) {
                                if (c.this.h) {
                                    c.this.h = false;
                                }
                                c.this.j = false;
                                c.this.i = false;
                                try {
                                    com.mbridge.msdk.reward.c.a.a(null, c.this.l, "load offer failed: " + e2.getMessage(), c.this.m, c.this.z, "", "", System.currentTimeMillis() - c.this.P);
                                } catch (Exception unused3) {
                                }
                                c.this.a(6002, "exception after load success", 1);
                                c.this.k();
                                return;
                            }
                        }
                    }
                    c.a(c.this, campaignUnit);
                    c.this.a = campaignUnit.getRequestId();
                }
            };
            aVar.a(str);
            aVar.setUnitId(this.m);
            aVar.setPlacementId(this.n);
            aVar.setAdType(this.y ? 287 : 94);
            try {
                zB = l.a().b(this.y ? 287 : 94);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("RewardMVVideoAdapter", "isRewardVideoRefactorForCampaignRequest exception " + e2.getMessage());
                }
                zB = false;
            }
            if (zB) {
                bVar.getCampaign(1, str, dVar, new com.mbridge.msdk.foundation.same.net.b(l.a().a("r_v_c_r_t_c", com.mbridge.msdk.foundation.same.a.y), l.a().a("r_v_c_r_t_r", com.mbridge.msdk.foundation.same.a.z), l.a().a("r_v_c_r_t_w", com.mbridge.msdk.foundation.same.a.z), this.q * 1000, l.a().a("r_v_c_r_r_c", com.mbridge.msdk.foundation.same.a.B), 4), aVar);
            } else {
                int iA = com.mbridge.msdk.foundation.same.a.z;
                int iB = com.mbridge.msdk.foundation.same.a.A;
                int iC = com.mbridge.msdk.foundation.same.a.x;
                int iD = com.mbridge.msdk.foundation.same.a.B;
                try {
                    com.mbridge.msdk.c.e eVarG = com.mbridge.msdk.c.f.a().g(com.mbridge.msdk.foundation.controller.b.d().h());
                    if (eVarG != null) {
                        iA = eVarG.A();
                        iB = eVarG.B();
                        iC = eVarG.C();
                        iD = eVarG.D();
                    }
                } catch (Exception unused2) {
                }
                bVar.choiceV3OrV5BySetting(1, dVar, aVar, str, new com.mbridge.msdk.foundation.same.net.b(iC, iA, iB, this.q * 1000, iD, 4));
            }
            try {
                if (com.mbridge.msdk.foundation.same.net.g.c.a().a(dVar) == null) {
                    HashMap map2 = new HashMap();
                    map2.put("auto_load", map.get("isDev"));
                    String str4 = map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                    if (TextUtils.isEmpty(str4)) {
                        map2.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.m);
                    }
                    m.a().a("2000125", str4, map2);
                }
            } catch (Exception e3) {
                if (MBridgeConstans.DEBUG) {
                    e3.printStackTrace();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            a("Load exception", 0);
            k();
        }
    }

    private void b(CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.videocommon.a.a aVarA = com.mbridge.msdk.videocommon.a.a.a();
            if (aVarA != null) {
                aVarA.a(campaignEx);
            }
        } catch (Throwable th) {
            aa.b("RewardMVVideoAdapter", th.getMessage(), th);
        }
    }

    private void b(String str) {
        if (ak.b(str)) {
            com.mbridge.msdk.reward.b.a.f7434f = str;
        }
    }

    private void b(String str, boolean z, Map<String, String> map) {
        com.mbridge.msdk.foundation.same.f.b.g().execute(new e(str, map));
        if (this.N == null) {
            a(str, z, map);
            return;
        }
        d dVar = new d(str, map);
        this.K = dVar;
        this.N.postDelayed(dVar, 90000L);
    }

    private void b(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    this.o += list.size();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        com.mbridge.msdk.videocommon.d.c cVar = this.v;
        if (cVar == null || this.o > cVar.v()) {
            this.o = 0;
        }
        if (ak.b(this.m)) {
            com.mbridge.msdk.reward.b.a.a(this.m, this.o);
        }
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

    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void g() {
        /*
            r5 = this;
            com.mbridge.msdk.foundation.controller.b r0 = com.mbridge.msdk.foundation.controller.b.d()
            android.content.Context r0 = r0.g()
            com.mbridge.msdk.foundation.db.b r0 = com.mbridge.msdk.foundation.db.b.a(r0)
            java.lang.String r1 = r5.m
            java.lang.String r2 = r5.b
            java.util.List r0 = r0.b(r1, r2)
            if (r0 == 0) goto La6
            int r1 = r0.size()
            java.lang.String r2 = r5.m
            java.lang.String r2 = com.mbridge.msdk.foundation.same.a.d.c(r2)
            if (r1 != 0) goto L23
            return
        L23:
            r3 = 1
            java.lang.String r4 = ""
            if (r1 != r3) goto L44
            r1 = 0
            java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Exception -> L9c
            if (r3 == 0) goto L6f
            java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Exception -> L9c
            com.mbridge.msdk.foundation.entity.c r3 = (com.mbridge.msdk.foundation.entity.c) r3     // Catch: java.lang.Exception -> L9c
            java.lang.String r4 = r3.c()     // Catch: java.lang.Exception -> L9c
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Exception -> L9c
            com.mbridge.msdk.foundation.entity.c r0 = (com.mbridge.msdk.foundation.entity.c) r0     // Catch: java.lang.Exception -> L9c
            java.lang.String r0 = r0.b()     // Catch: java.lang.Exception -> L9c
            goto L70
        L44:
            boolean r1 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L9c
            if (r1 != 0) goto L6f
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L9c
        L4e:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> L9c
            if (r1 == 0) goto L6f
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> L9c
            com.mbridge.msdk.foundation.entity.c r1 = (com.mbridge.msdk.foundation.entity.c) r1     // Catch: java.lang.Exception -> L9c
            if (r1 == 0) goto L4e
            java.lang.String r3 = r1.a()     // Catch: java.lang.Exception -> L9c
            boolean r3 = r2.equals(r3)     // Catch: java.lang.Exception -> L9c
            if (r3 == 0) goto L4e
            java.lang.String r4 = r1.c()     // Catch: java.lang.Exception -> L9c
            java.lang.String r0 = r1.b()     // Catch: java.lang.Exception -> L9c
            goto L70
        L6f:
            r0 = r4
        L70:
            boolean r1 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L9c
            if (r1 != 0) goto La6
            java.lang.String r1 = r5.b     // Catch: java.lang.Exception -> L9c
            boolean r1 = r4.equals(r1)     // Catch: java.lang.Exception -> L9c
            if (r1 == 0) goto La6
            com.mbridge.msdk.foundation.controller.b r1 = com.mbridge.msdk.foundation.controller.b.d()     // Catch: java.lang.Exception -> L9c
            android.content.Context r1 = r1.g()     // Catch: java.lang.Exception -> L9c
            com.mbridge.msdk.foundation.db.b r1 = com.mbridge.msdk.foundation.db.b.a(r1)     // Catch: java.lang.Exception -> L9c
            java.lang.String r3 = r5.m     // Catch: java.lang.Exception -> L9c
            r1.a(r2, r3)     // Catch: java.lang.Exception -> L9c
            java.lang.String r1 = r5.m     // Catch: java.lang.Exception -> L9c
            java.lang.String r2 = r5.b     // Catch: java.lang.Exception -> L9c
            com.mbridge.msdk.foundation.same.a.d.a(r1, r2, r0)     // Catch: java.lang.Exception -> L9c
            java.lang.String r0 = r5.m     // Catch: java.lang.Exception -> L9c
            com.mbridge.msdk.foundation.same.a.d.b(r0)     // Catch: java.lang.Exception -> L9c
            goto La6
        L9c:
            r0 = move-exception
            java.lang.String r0 = r0.getMessage()
            java.lang.String r1 = "RewardMVVideoAdapter"
            com.mbridge.msdk.foundation.tools.aa.a(r1, r0)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.g():void");
    }

    private void h() {
        Handler handler = this.N;
        if (handler != null) {
            handler.sendEmptyMessage(3);
        }
    }

    private void i() {
        if (com.mbridge.msdk.videocommon.a.a.a() != null) {
            try {
                com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
                if (eVarB == null) {
                    eVarB = com.mbridge.msdk.c.f.a().b();
                }
                com.mbridge.msdk.videocommon.a.a.a().a(eVarB.Q() * 1000, this.m);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            }
        }
    }

    private int j() {
        try {
            int iA = ak.b(this.m) ? com.mbridge.msdk.reward.b.a.a(this.m) : 0;
            com.mbridge.msdk.videocommon.d.c cVar = this.v;
            if (cVar == null) {
                return 0;
            }
            if (iA > cVar.v()) {
                return 0;
            }
            return iA;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        try {
            if (ak.b(this.m)) {
                com.mbridge.msdk.reward.b.a.a(this.m, 0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private String l() {
        try {
            return ak.b(com.mbridge.msdk.reward.b.a.f7434f) ? com.mbridge.msdk.reward.b.a.f7434f : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private void m() {
        try {
            Map<String, Long> map = com.mbridge.msdk.foundation.same.a.d.a;
            if (map == null || map.size() <= 0) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.d.a.clear();
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    private void n() {
        try {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.h.a(this.l)).a(this.m);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public final String a() {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.F;
        return (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) ? com.mbridge.msdk.foundation.same.b.a(this.S) : com.mbridge.msdk.foundation.same.b.a(this.F);
    }

    public final String a(boolean z) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA;
        CampaignEx campaignEx;
        if (!z) {
            return this.a;
        }
        if (TextUtils.isEmpty(this.b) && (copyOnWriteArrayListA = com.mbridge.msdk.videocommon.download.c.getInstance().a(this.m)) != null && copyOnWriteArrayListA.size() > 0 && (campaignEx = copyOnWriteArrayListA.get(0)) != null) {
            this.b = campaignEx.getRequestId();
        }
        return this.b;
    }

    public final void a(int i) {
        this.x = i;
    }

    public final void a(int i, int i2, int i3) {
        this.B = i;
        this.C = i2;
        this.D = i3;
    }

    public final void a(int i, int i2, boolean z) {
        a(i, i2, z, "", this.H, new HashMap());
    }

    public final void a(int i, int i2, boolean z, String str, boolean z2, Map<String, String> map) {
        boolean zA;
        CampaignEx campaignEx;
        this.p = i;
        this.q = i2;
        this.r = z;
        this.J = str;
        this.k = false;
        if (map != null && map.containsKey(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID)) {
            this.c = map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
        }
        this.H = z2;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.F;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0 && (campaignEx = this.F.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
            this.F.clear();
        }
        List<CampaignEx> list = this.R;
        if (list != null) {
            list.clear();
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.G;
        if (copyOnWriteArrayList2 != null) {
            copyOnWriteArrayList2.clear();
        }
        this.f7403f = false;
        this.f7404g = false;
        synchronized (this.f7401d) {
            if (this.h) {
                this.h = false;
            }
        }
        this.j = false;
        this.i = false;
        try {
            zA = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.a(this.l);
        } catch (Exception unused) {
            zA = false;
        }
        if (!zA) {
            a("WebView is not available", 0);
            return;
        }
        if (this.l == null) {
            a("Context is null", 0);
            return;
        }
        if (ak.a(this.m)) {
            a("UnitId is null", 0);
            return;
        }
        if (this.v == null) {
            a("RewardUnitSetting is null", 0);
            return;
        }
        m();
        n();
        i();
        b(str, z2, map);
    }

    public final void a(com.mbridge.msdk.reward.adapter.a aVar) {
        this.u = aVar;
    }

    public final void a(h hVar, String str, String str2, int i, String str3) {
        try {
            this.t = hVar;
            if (this.l != null && !ak.a(this.m)) {
                Intent intent = new Intent(this.l, (Class<?>) MBRewardVideoActivity.class);
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                intent.putExtra(MBRewardVideoActivity.INTENT_UNITID, this.m);
                intent.putExtra(MBridgeConstans.PLACEMENT_ID, this.n);
                intent.putExtra(MBRewardVideoActivity.INTENT_REWARD, str);
                intent.putExtra(MBRewardVideoActivity.INTENT_MUTE, i);
                intent.putExtra(MBRewardVideoActivity.INTENT_ISIV, this.y);
                intent.putExtra(MBRewardVideoActivity.INTENT_ISBID, this.z);
                intent.putExtra(MBRewardVideoActivity.INTENT_EXTRADATA, str3);
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA = com.mbridge.msdk.videocommon.download.c.getInstance().a(this.m);
                boolean z = false;
                if (copyOnWriteArrayListA == null || copyOnWriteArrayListA.size() <= 0) {
                    h hVar2 = this.t;
                    if (hVar2 != null) {
                        hVar2.a("load failed");
                        return;
                    }
                } else {
                    CampaignEx campaignEx = copyOnWriteArrayListA.get(0);
                    if (campaignEx != null) {
                        this.b = campaignEx.getRequestId();
                        com.mbridge.msdk.reward.b.a.f7435g = campaignEx.getCurrentLRid();
                    }
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                        z = true;
                    }
                    g();
                }
                intent.putExtra(MBRewardVideoActivity.INTENT_ISBIG_OFFER, z);
                if (this.y) {
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_MODETYPE, this.B);
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_VALUETYPE, this.C);
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_VALUE, this.D);
                }
                if (!TextUtils.isEmpty(str2)) {
                    intent.putExtra(MBRewardVideoActivity.INTENT_USERID, str2);
                }
                RewardUnitCacheManager.getInstance().add(this.n, this.m, this.v);
                this.l.startActivity(intent);
                return;
            }
            h hVar3 = this.t;
            if (hVar3 != null) {
                hVar3.a("context or unitid is null");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            h hVar4 = this.t;
            if (hVar4 != null) {
                hVar4.a("show failed, exception is " + e2.getMessage());
            }
        }
    }

    public final void a(com.mbridge.msdk.videocommon.d.c cVar) {
        try {
            this.v = cVar;
            if (cVar == null || cVar.E() * 1000 == com.mbridge.msdk.foundation.same.a.n) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.n = this.v.E() * 1000;
        } catch (Throwable th) {
            aa.b("RewardMVVideoAdapter", th.getMessage(), th);
        }
    }

    public final void a(String str) {
        this.A = str;
    }

    public final void a(List<CampaignEx> list) {
        this.S = list;
    }

    public final void a(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        String str = map.get("bid_token");
        if (this.v != null && TextUtils.isEmpty(str)) {
            int iB = this.v.b() * 1000;
            List<CampaignEx> list = this.S;
            if (list != null && list.size() > 0) {
                if (System.currentTimeMillis() - this.S.get(0).getTimestamp() < iB) {
                    a("hit ltorwc", 0);
                    return;
                }
            }
        }
        a(str, this.H, map);
    }

    public final void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, boolean z, boolean z2) {
        if (z2) {
            try {
                this.R = copyOnWriteArrayList;
                this.G = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            } catch (Exception unused) {
            }
        }
        CampaignEx campaignEx = this.E.getAds().get(0);
        Context context = this.l;
        StringBuilder sb = new StringBuilder();
        sb.append("start download resource tpl ");
        sb.append(!TextUtils.isEmpty(this.E.getAds().get(0).getCMPTEntryUrl()));
        com.mbridge.msdk.reward.c.a.a(campaignEx, context, sb.toString(), this.m, this.z, "", "", System.currentTimeMillis() - this.P);
        a(this.E, copyOnWriteArrayList);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            aa.b("RewardMVVideoAdapter", "onload load fail, callback campaign have not video");
            if (TextUtils.isEmpty(this.Q)) {
                this.Q = "APP ALREADY INSTALLED";
            }
            a(this.E, this.Q);
            a(6003, this.Q, 4);
            return;
        }
        aa.b("RewardMVVideoAdapter", "onload load success size:" + copyOnWriteArrayList.size());
        if (z) {
            h();
        }
        CampaignUnit campaignUnit = this.E;
        if (campaignUnit != null) {
            b(campaignUnit.getSessionId());
        }
        b(copyOnWriteArrayList);
        if (copyOnWriteArrayList.size() > 0) {
            a(this.n, this.m, copyOnWriteArrayList);
        }
        CampaignEx campaignEx2 = copyOnWriteArrayList.get(0);
        this.F = copyOnWriteArrayList;
        a(campaignEx2);
    }

    public final boolean a(CampaignEx campaignEx, boolean z, com.mbridge.msdk.foundation.entity.e eVar, int i) {
        com.mbridge.msdk.foundation.b.c cVar;
        com.mbridge.msdk.reward.a.a aVar;
        com.mbridge.msdk.foundation.b.c cVar2 = new com.mbridge.msdk.foundation.b.c();
        com.mbridge.msdk.reward.a.a aVar2 = new com.mbridge.msdk.reward.a.a(this.m, this.y);
        boolean z2 = false;
        if (aVar2.a(this.J)) {
            return false;
        }
        if (!this.k) {
            this.k = true;
            aVar2 = new com.mbridge.msdk.reward.a.a(this.m, this.y);
            cVar2 = aVar2.a(this.J, this.c, campaignEx, eVar, i, this);
            if (cVar2 != null && cVar2.e() > com.mbridge.msdk.foundation.b.c.b) {
                if (cVar2.g() != null && cVar2.g().size() > 0) {
                    a(cVar2.g(), true, true);
                } else {
                    if (cVar2.e() != com.mbridge.msdk.foundation.b.c.f7012d) {
                        if (cVar2.e() == com.mbridge.msdk.foundation.b.c.f7013e) {
                        }
                        aVar.a(this.c, this.J, cVar, (List<a.C0398a>) null, (JSONObject) null, 3);
                        return z2;
                    }
                    if (eVar != null) {
                        eVar.a(eVar.d());
                        eVar.a(eVar.e());
                        eVar.b(21);
                        eVar.b(cVar2.f());
                    }
                }
            }
            cVar = cVar2;
            aVar = aVar2;
            aVar.a(this.c, this.J, cVar, (List<a.C0398a>) null, (JSONObject) null, 3);
            return z2;
        }
        cVar2.e("isCandidate:false");
        cVar2.a(com.mbridge.msdk.foundation.b.c.f7012d);
        cVar = cVar2;
        aVar = aVar2;
        z2 = true;
        aVar.a(this.c, this.J, cVar, (List<a.C0398a>) null, (JSONObject) null, 3);
        return z2;
    }

    public final boolean a(List<CampaignEx> list, boolean z) {
        if (list == null || list.size() <= 0) {
            aa.a("RewardVideoController", "数据为空");
        } else {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx == null) {
                return false;
            }
            com.mbridge.msdk.videocommon.download.c cVar = com.mbridge.msdk.videocommon.download.c.getInstance();
            String str = this.m;
            n nVarC = cVar.c(str);
            if (nVarC == null) {
                nVarC = cVar.createUnitCache(com.mbridge.msdk.foundation.controller.b.d().g(), str, (CopyOnWriteArrayList<CampaignEx>) list, 94, (com.mbridge.msdk.videocommon.listener.a) null);
            }
            if (nVarC != null ? nVarC.a(list, str) : false) {
                if (z) {
                    if (campaignEx.isDynamicView()) {
                        return true;
                    }
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                        if (campaignEx.getRsIgnoreCheckRule().contains(3)) {
                            aa.b("RewardMVVideoAdapter", "Is not check big template download status");
                            return true;
                        }
                        if (campaignEx.getCMPTEntryUrl().equals(campaignEx.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                            aa.b("RewardMVVideoAdapter", "Is not check big template ENDCARD download status");
                            return true;
                        }
                    }
                    if (i.a().c(this.m + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl())) {
                        aa.a("RewardVideoController", "大模板业务，开始检查大模板预加载情况，大模板预加载成功");
                        return true;
                    }
                } else {
                    if (campaignEx.isDynamicView()) {
                        return true;
                    }
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
                        aa.b("RewardMVVideoAdapter", "Is not check template download status");
                        return true;
                    }
                    if (campaignEx.getRewardTemplateMode() == null || TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        aa.a("RewardVideoController", "非大模板 没有 template");
                        return true;
                    }
                    if (i.a().c(this.m + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e())) {
                        aa.a("RewardVideoController", "非大模板业务，存在播放模板，播放模板预加载成功");
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean a(List<CampaignEx> list, boolean z, int i) {
        return a(list, z, i, false);
    }

    public final boolean a(List<CampaignEx> list, boolean z, int i, boolean z2) {
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            if (com.mbridge.msdk.videocommon.download.c.getInstance().a(94, this.m, this.z, list.size(), z, i, list, z2)) {
                if (!z) {
                    if (campaignEx != null && campaignEx.isDynamicView()) {
                        return true;
                    }
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
                        aa.b("RewardMVVideoAdapter", "Is not check template download status");
                        return true;
                    }
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        if (i.a().c(this.m + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e())) {
                        }
                    }
                    return true;
                }
                if (campaignEx.isDynamicView()) {
                    return true;
                }
                if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                    if (campaignEx.getRsIgnoreCheckRule().contains(3)) {
                        aa.b("RewardMVVideoAdapter", "Is not check big template download status");
                        return true;
                    }
                    if (campaignEx.getCMPTEntryUrl().equals(campaignEx.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                        aa.b("RewardMVVideoAdapter", "Is not check big template of ENDCARD download status");
                        return true;
                    }
                }
                if (i.a().c(this.m + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String b() {
        return this.m;
    }

    public final void b(boolean z) {
        this.y = z;
    }

    public final void c(boolean z) {
        this.z = z;
    }

    public final boolean c() {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA = com.mbridge.msdk.videocommon.a.a.a().a(this.m, 1, this.z, this.A);
        if (copyOnWriteArrayListA == null || copyOnWriteArrayListA.size() <= 0) {
            aa.a("RewardVideoController", "database has not can use data");
            return false;
        }
        CampaignEx campaignEx = copyOnWriteArrayListA.get(0);
        int iB = com.mbridge.msdk.videocommon.a.a.a().b(this.m, 1, this.z, this.A);
        if (TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()) || campaignEx.getNscpt() != 1 || copyOnWriteArrayListA.size() >= iB) {
            return a(copyOnWriteArrayListA, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt());
        }
        return false;
    }

    public final void d(boolean z) {
        this.O = z;
    }

    public final boolean d() {
        List<CampaignEx> listC = com.mbridge.msdk.videocommon.a.a.a().c(this.m, 1, this.z, this.A);
        if (listC == null || listC.size() <= 0) {
            aa.a("test_isReay_db", "database has not can use data");
            return false;
        }
        CampaignEx campaignEx = listC.get(0);
        int iB = com.mbridge.msdk.videocommon.a.a.a().b(this.m, 1, this.z, this.A);
        if (TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()) || campaignEx.getNscpt() != 1 || listC.size() >= iB) {
            return a(listC, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt());
        }
        return false;
    }

    public final CopyOnWriteArrayList<CampaignEx> e() {
        return this.F;
    }

    public final void e(boolean z) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList;
        if (z || (copyOnWriteArrayList = this.F) == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        com.mbridge.msdk.videocommon.a.a.a().a(this.m, this.F);
    }

    public final CopyOnWriteArrayList<CampaignEx> f() {
        return this.G;
    }

    public final void f(boolean z) {
        if (z) {
            List<CampaignEx> list = this.S;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (CampaignEx campaignEx : this.S) {
                if (campaignEx != null) {
                    campaignEx.setLoadTimeoutState(0);
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        i.a().d(this.m + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e(), false);
                    }
                }
            }
            com.mbridge.msdk.videocommon.a.a.a().a(this.m, this.S, "load_timeout", 0);
            return;
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.F;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        for (CampaignEx campaignEx2 : this.F) {
            if (campaignEx2 != null) {
                campaignEx2.setLoadTimeoutState(0);
                if (campaignEx2.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx2.getRewardTemplateMode().e())) {
                    i.a().d(this.m + "_" + campaignEx2.getRequestId() + "_" + campaignEx2.getRewardTemplateMode().e(), false);
                }
            }
        }
        com.mbridge.msdk.videocommon.a.a.a().a(this.m, this.F, "load_timeout", 0);
    }

    public final boolean g(boolean z) {
        if (z) {
            List<CampaignEx> list = this.S;
            if (list == null || list.size() <= 0) {
                return false;
            }
            for (CampaignEx campaignEx : this.S) {
                if (campaignEx != null) {
                    campaignEx.setLoadTimeoutState(1);
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        i.a().d(this.m + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e(), true);
                    }
                }
            }
            com.mbridge.msdk.videocommon.a.a.a().a(this.m, this.S, "load_timeout", 1);
            return true;
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.F;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return false;
        }
        for (CampaignEx campaignEx2 : this.F) {
            if (campaignEx2 != null) {
                campaignEx2.setLoadTimeoutState(1);
                if (campaignEx2.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx2.getRewardTemplateMode().e())) {
                    i.a().d(this.m + "_" + campaignEx2.getRequestId() + "_" + campaignEx2.getRewardTemplateMode().e(), true);
                }
            }
        }
        com.mbridge.msdk.videocommon.a.a.a().a(this.m, this.F, "load_timeout", 1);
        return true;
    }
}
