package com.fyber.inneractive.sdk.flow;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebSettings;
import android.widget.ImageView;
import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.factories.b;
import com.fyber.inneractive.sdk.flow.vast.a;
import com.fyber.inneractive.sdk.network.m0;
import com.fyber.inneractive.sdk.network.q0;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.t0;
import com.fyber.inneractive.sdk.web.d;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.net.UnknownHostException;
import java.util.PriorityQueue;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class m {
    public final InneractiveAdRequest b;
    public final com.fyber.inneractive.sdk.response.g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.fyber.inneractive.sdk.config.global.s f2014d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.fyber.inneractive.sdk.model.vast.b f2015e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Context f2016f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2017g;
    public m0 h;
    public final com.fyber.inneractive.sdk.flow.vast.b i;
    public int j;
    public final com.fyber.inneractive.sdk.flow.vast.c l;
    public final PriorityQueue<com.fyber.inneractive.sdk.flow.vast.a> k = new PriorityQueue<>(10, new a.b());
    public com.fyber.inneractive.sdk.player.controller.c m = null;
    public final d.InterfaceC0201d n = new a();
    public final com.fyber.inneractive.sdk.network.w<String> o = new b();
    public final int a = IAConfigManager.c().a().a("companion_retry_count", 2, 0);

    public class a implements d.InterfaceC0201d {
        public a() {
        }

        @Override // com.fyber.inneractive.sdk.web.d.InterfaceC0201d
        public void a(com.fyber.inneractive.sdk.web.d dVar) {
            IAlog.a("%s Fetching companion fmp successfully ", IAlog.a(m.this));
            m.this.l.a = true;
        }

        @Override // com.fyber.inneractive.sdk.web.d.InterfaceC0201d
        public void a(com.fyber.inneractive.sdk.web.d dVar, InneractiveInfrastructureError inneractiveInfrastructureError) {
            IAlog.a("%s Fetching companion fmp failed! will load default companion", IAlog.a(m.this));
            m mVar = m.this;
            mVar.l.a = false;
            m.a(mVar, inneractiveInfrastructureError.getCause());
        }
    }

    public class b implements com.fyber.inneractive.sdk.network.w<String> {
        public b() {
        }

        @Override // com.fyber.inneractive.sdk.network.w
        public void a(String str, Exception exc, boolean z) {
            String str2 = str;
            if (str2 != null) {
                m mVar = m.this;
                if (mVar.f2015e != null) {
                    com.fyber.inneractive.sdk.flow.vast.c cVar = mVar.l;
                    if (!cVar.i) {
                        IAlog.a("FmpEndcardLoadingStarted", new Object[0]);
                        cVar.i = true;
                        m mVar2 = m.this;
                        mVar2.l.f2041g.a(str2, mVar2.n);
                        return;
                    }
                }
            }
            if (exc == null || (exc instanceof com.fyber.inneractive.sdk.network.f) || z) {
                return;
            }
            m.a(m.this, exc);
        }
    }

    public class c implements d.InterfaceC0201d {
        public final /* synthetic */ com.fyber.inneractive.sdk.flow.vast.e a;
        public final /* synthetic */ com.fyber.inneractive.sdk.model.vast.c b;

        public c(com.fyber.inneractive.sdk.flow.vast.e eVar, com.fyber.inneractive.sdk.model.vast.c cVar) {
            this.a = eVar;
            this.b = cVar;
        }

        @Override // com.fyber.inneractive.sdk.web.d.InterfaceC0201d
        public void a(com.fyber.inneractive.sdk.web.d dVar) {
            com.fyber.inneractive.sdk.flow.vast.e eVar = this.a;
            eVar.a = true;
            m.this.k.add(eVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0039  */
        @Override // com.fyber.inneractive.sdk.web.d.InterfaceC0201d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(com.fyber.inneractive.sdk.web.d r5, com.fyber.inneractive.sdk.external.InneractiveInfrastructureError r6) {
            /*
                r4 = this;
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                com.fyber.inneractive.sdk.flow.m r6 = com.fyber.inneractive.sdk.flow.m.this
                java.lang.String r6 = com.fyber.inneractive.sdk.util.IAlog.a(r6)
                r5.append(r6)
                java.lang.String r6 = " Fetching companion html failed!"
                r5.append(r6)
                java.lang.String r5 = r5.toString()
                r6 = 0
                java.lang.Object[] r0 = new java.lang.Object[r6]
                com.fyber.inneractive.sdk.util.IAlog.a(r5, r0)
                com.fyber.inneractive.sdk.model.vast.i r5 = com.fyber.inneractive.sdk.model.vast.i.Gif
                com.fyber.inneractive.sdk.model.vast.c r0 = r4.b
                com.fyber.inneractive.sdk.model.vast.i r0 = r0.b
                boolean r5 = r5.equals(r0)
                r0 = 1
                if (r5 == 0) goto L39
                com.fyber.inneractive.sdk.model.vast.c r5 = r4.b
                java.lang.String r1 = r5.f2079f
                com.fyber.inneractive.sdk.model.vast.i r5 = r5.b
                boolean r5 = com.fyber.inneractive.sdk.util.t0.a(r1, r5)
                if (r5 == 0) goto L37
                goto L39
            L37:
                r5 = 0
                goto L3a
            L39:
                r5 = 1
            L3a:
                com.fyber.inneractive.sdk.flow.vast.e r1 = r4.a
                r1.a = r6
                com.fyber.inneractive.sdk.flow.m r1 = com.fyber.inneractive.sdk.flow.m.this
                int r2 = r1.j
                int r3 = r1.a
                if (r2 > r3) goto L5d
                if (r5 == 0) goto L5d
                java.lang.Object[] r5 = new java.lang.Object[r0]
                java.lang.String r0 = com.fyber.inneractive.sdk.util.IAlog.a(r4)
                r5[r6] = r0
                java.lang.String r6 = "%sloadHtmlCompanion retry"
                com.fyber.inneractive.sdk.util.IAlog.a(r6, r5)
                com.fyber.inneractive.sdk.flow.m r5 = com.fyber.inneractive.sdk.flow.m.this
                com.fyber.inneractive.sdk.model.vast.c r6 = r4.b
                r5.a(r6)
                goto L82
            L5d:
                r0 = 0
                if (r5 != 0) goto L6e
                com.fyber.inneractive.sdk.network.s$a r5 = new com.fyber.inneractive.sdk.network.s$a
                com.fyber.inneractive.sdk.network.q r2 = com.fyber.inneractive.sdk.network.q.VAST_COMPANION_INCOMPATIBLE_MIMETYPE
                com.fyber.inneractive.sdk.external.InneractiveAdRequest r3 = r1.b
                com.fyber.inneractive.sdk.response.g r1 = r1.c
                r5.<init>(r2, r3, r1, r0)
                r5.a(r0)
            L6e:
                com.fyber.inneractive.sdk.flow.m r5 = com.fyber.inneractive.sdk.flow.m.this
                com.fyber.inneractive.sdk.model.vast.c r1 = r4.b
                org.json.JSONObject r1 = r1.a()
                com.fyber.inneractive.sdk.flow.m.a(r5, r1, r0)
                com.fyber.inneractive.sdk.flow.vast.e r5 = r4.a
                r5.a = r6
                com.fyber.inneractive.sdk.flow.m r5 = com.fyber.inneractive.sdk.flow.m.this
                r5.a()
            L82:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.flow.m.c.a(com.fyber.inneractive.sdk.web.d, com.fyber.inneractive.sdk.external.InneractiveInfrastructureError):void");
        }
    }

    public class d implements com.fyber.inneractive.sdk.network.w<m0.a> {
        public final /* synthetic */ com.fyber.inneractive.sdk.model.vast.c a;

        public d(com.fyber.inneractive.sdk.model.vast.c cVar) {
            this.a = cVar;
        }

        @Override // com.fyber.inneractive.sdk.network.w
        public void a(m0.a aVar, Exception exc, boolean z) {
            View view;
            m0.a aVar2 = aVar;
            m.this.getClass();
            com.fyber.inneractive.sdk.flow.vast.a aVar3 = new com.fyber.inneractive.sdk.flow.vast.a();
            ImageView imageView = new ImageView(IAConfigManager.M.v.a());
            aVar3.b = imageView;
            imageView.setId(R.id.inneractive_vast_endcard_static);
            aVar3.b.setContentDescription("inneractive_vast_endcard_static");
            m.this.getClass();
            if ((exc == null && aVar2 != null && aVar2.b == null && aVar2.a != null) && (view = aVar3.b) != null) {
                ((ImageView) view).setImageBitmap(aVar2.a);
                aVar3.a = true;
                m.this.k.add(aVar3);
                return;
            }
            IAlog.a("%s Fetching companion image failed!", IAlog.a(m.this));
            com.fyber.inneractive.sdk.model.vast.c cVar = this.a;
            boolean zA = t0.a(cVar.f2079f, cVar.b);
            m.this.getClass();
            if ((aVar2 == null || (aVar2.b != null && ((exc instanceof com.fyber.inneractive.sdk.network.b) || (exc instanceof UnknownHostException)))) && zA) {
                m mVar = m.this;
                if (mVar.j <= mVar.a) {
                    IAlog.a("%sloadStaticCompanion retry", IAlog.a(this));
                    m.this.b(this.a);
                    return;
                }
            }
            String str = null;
            if (!zA) {
                m mVar2 = m.this;
                mVar2.getClass();
                new s.a(com.fyber.inneractive.sdk.network.q.VAST_COMPANION_INCOMPATIBLE_MIMETYPE, mVar2.b, mVar2.c, (JSONArray) null).a((String) null);
            }
            if (aVar2 != null && !TextUtils.isEmpty(aVar2.b)) {
                str = aVar2.b;
            }
            m.a(m.this, this.a.a(), str);
            m.this.a();
        }
    }

    public m(Context context, com.fyber.inneractive.sdk.response.g gVar, InneractiveAdRequest inneractiveAdRequest, com.fyber.inneractive.sdk.config.global.s sVar, com.fyber.inneractive.sdk.flow.vast.b bVar) {
        this.f2015e = gVar.e();
        this.f2016f = context;
        this.c = gVar;
        this.b = inneractiveAdRequest;
        this.f2014d = sVar;
        this.i = bVar;
        com.fyber.inneractive.sdk.web.b bVar2 = new com.fyber.inneractive.sdk.web.b(inneractiveAdRequest, gVar, this.f2014d, this.f2015e);
        com.fyber.inneractive.sdk.flow.vast.c cVar = new com.fyber.inneractive.sdk.flow.vast.c(new com.fyber.inneractive.sdk.player.controller.c(this.f2016f, bVar, com.fyber.inneractive.sdk.model.vast.h.FMP_End_Card, bVar2));
        this.l = cVar;
        bVar2.a(cVar);
    }

    public static void a(m mVar, Throwable th) {
        com.fyber.inneractive.sdk.config.global.s sVar = mVar.f2014d;
        JSONArray jSONArrayC = sVar == null ? null : sVar.c();
        com.fyber.inneractive.sdk.flow.vast.c cVar = mVar.l;
        InneractiveAdRequest inneractiveAdRequest = mVar.b;
        com.fyber.inneractive.sdk.response.g gVar = mVar.c;
        cVar.getClass();
        IAlog.a("sending FMP_COMPANION_FAILED_LOADING event", new Object[0]);
        s.a aVar = new s.a(com.fyber.inneractive.sdk.network.q.FMP_COMPANION_FAILED_LOADING, inneractiveAdRequest, gVar, jSONArrayC);
        String message = th != null ? th.getMessage() : null;
        if (!TextUtils.isEmpty(message)) {
            aVar.a("error", message);
        }
        cVar.a(aVar);
        aVar.a((String) null);
    }

    public static void a(m mVar, JSONObject jSONObject, String str) {
        mVar.getClass();
        s.a aVar = new s.a(com.fyber.inneractive.sdk.network.q.VAST_COMPANION_FAILED_LOADING, mVar.b, mVar.c, mVar.f2014d.c());
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("companion_data", jSONObject);
        } catch (Exception unused) {
            IAlog.e("Got exception adding param to json object: %s, %s", "companion_data", jSONObject);
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                jSONObject2.put("reason", str);
            } catch (Exception unused2) {
                IAlog.e("Got exception adding param to json object: %s, %s", "reason", str);
            }
        }
        aVar.f2120f.put(jSONObject2);
        aVar.a((String) null);
    }

    public void a() {
        boolean z;
        if (this.k.size() == 1) {
            return;
        }
        IAlog.a("%sloadNextVastCompanion called", IAlog.a(this));
        this.f2017g = false;
        if (this.f2015e == null) {
            IAlog.a("%svast data is null! Object must have already been destroyed", IAlog.a(this));
            z = false;
        } else {
            z = true;
        }
        if (this.f2015e.f2076g.size() == 0) {
            IAlog.b("%sgetNextIAvastCompanion - No companion ads found", IAlog.a(this));
            z = false;
        }
        if (!z) {
            IAlog.a("%sno more companion ads available.", IAlog.a(this));
            return;
        }
        com.fyber.inneractive.sdk.model.vast.b bVar = this.f2015e;
        com.fyber.inneractive.sdk.model.vast.c cVarPoll = bVar.f2076g.poll();
        bVar.h = cVarPoll;
        IAlog.a("%sgetNextIAvastCompanion returning: %s", IAlog.a(this), cVarPoll);
        this.j = 0;
        if (cVarPoll != null) {
            if (cVarPoll.a != com.fyber.inneractive.sdk.model.vast.h.Static || com.fyber.inneractive.sdk.model.vast.i.Gif.equals(cVarPoll.b)) {
                a(cVarPoll);
            } else {
                b(cVarPoll);
            }
        }
    }

    public final void a(com.fyber.inneractive.sdk.model.vast.c cVar) {
        String str;
        com.fyber.inneractive.sdk.web.g gVar;
        int i = com.fyber.inneractive.sdk.util.r.a[com.fyber.inneractive.sdk.util.t.Mraid.ordinal()];
        if (i != 1 ? i != 2 ? false : b.a.a.a.containsKey(com.fyber.inneractive.sdk.response.a.RETURNED_ADTYPE_VAST) : b.a.a.a.containsKey(com.fyber.inneractive.sdk.response.a.RETURNED_ADTYPE_HTML)) {
            b();
            this.j++;
            int i2 = IAlog.a;
            IAlog.a(1, null, "%s: %s", "COMPANION_TYPE", cVar.a.name());
            com.fyber.inneractive.sdk.player.controller.c cVar2 = new com.fyber.inneractive.sdk.player.controller.c(this.f2016f, this.i, cVar.a, null);
            com.fyber.inneractive.sdk.flow.vast.e eVar = new com.fyber.inneractive.sdk.flow.vast.e(cVar2);
            c cVar3 = new c(eVar, cVar);
            String strReplace = cVar.f2079f;
            com.fyber.inneractive.sdk.model.vast.h hVar = cVar.a;
            if (hVar == com.fyber.inneractive.sdk.model.vast.h.Iframe) {
                String strC = com.fyber.inneractive.sdk.util.l.c("fyb_iframe_endcard_tmpl.html");
                if (!TextUtils.isEmpty(strC)) {
                    strReplace = strC.replace("$__IMGSRC__$", cVar.f2079f).replace("$__SrcIframeUrl__$", cVar.f2079f);
                }
            } else if (hVar == com.fyber.inneractive.sdk.model.vast.h.Static && cVar.b == com.fyber.inneractive.sdk.model.vast.i.Gif) {
                com.fyber.inneractive.sdk.web.c0 c0Var = eVar.f2041g.a;
                if (c0Var != null && (gVar = c0Var.b) != null) {
                    WebSettings settings = gVar.getSettings();
                    if (Build.VERSION.SDK_INT >= 17) {
                        settings.setMediaPlaybackRequiresUserGesture(false);
                    }
                    settings.setLoadWithOverviewMode(true);
                    settings.setUseWideViewPort(true);
                }
                com.fyber.inneractive.sdk.web.c0 c0Var2 = eVar.f2041g.a;
                if (c0Var2 != null) {
                    c0Var2.E = false;
                }
                String strC2 = com.fyber.inneractive.sdk.util.l.c("fyb_static_endcard_tmpl.html");
                if (!TextUtils.isEmpty(strC2)) {
                    strReplace = strC2.replace("$__IMGSRC__$", cVar.f2079f);
                }
                if (!TextUtils.isEmpty(strReplace) && (str = cVar.f2080g) != null) {
                    strReplace = strReplace.replace("$__IMGHREF__$", str.replace("\"", "\\\""));
                }
            }
            cVar2.a(strReplace, cVar3);
        }
    }

    public final void b() {
        com.fyber.inneractive.sdk.network.r rVar = com.fyber.inneractive.sdk.network.r.VAST_COMPANION_LOAD_ATTEMPT;
        InneractiveAdRequest inneractiveAdRequest = this.b;
        com.fyber.inneractive.sdk.response.g gVar = this.c;
        com.fyber.inneractive.sdk.config.global.s sVar = this.f2014d;
        new s.a(rVar, inneractiveAdRequest, gVar, sVar == null ? null : sVar.c()).a((String) null);
    }

    public final void b(com.fyber.inneractive.sdk.model.vast.c cVar) {
        b();
        int i = IAlog.a;
        IAlog.a(1, null, "%s: %s", "COMPANION_TYPE", cVar.a.name());
        this.j++;
        m0 m0Var = new m0(new d(cVar), cVar.f2079f, this.f2014d);
        this.h = m0Var;
        IAConfigManager.M.s.b(m0Var);
    }

    public void c() {
        com.fyber.inneractive.sdk.config.global.s sVar = this.f2014d;
        if ((sVar == null || !((com.fyber.inneractive.sdk.config.global.features.f) sVar.a(com.fyber.inneractive.sdk.config.global.features.f.class)).a("enabled_fmp_endcard", false) || this.f2015e.f2075f == null) ? false : true) {
            IAlog.a("sending fmpHtmlRequest", new Object[0]);
            int i = IAlog.a;
            IAlog.a(1, null, "%s: %s", "COMPANION_TYPE", com.fyber.inneractive.sdk.model.vast.h.FMP_End_Card.name());
            com.fyber.inneractive.sdk.config.global.s sVar2 = this.f2014d;
            String strA = sVar2 != null ? ((com.fyber.inneractive.sdk.config.global.features.f) sVar2.a(com.fyber.inneractive.sdk.config.global.features.f.class)).a(CampaignEx.ENDCARD_URL, "") : null;
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            com.fyber.inneractive.sdk.network.g0 g0Var = new com.fyber.inneractive.sdk.network.g0(this.o, this.f2016f, new com.fyber.inneractive.sdk.cache.c(strA));
            IAConfigManager.M.s.a.offer(g0Var);
            g0Var.a(q0.QUEUED);
        }
    }
}
