package com.bytedance.sdk.openadsdk.component.reward.a;

import android.R;
import android.annotation.SuppressLint;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.component.reward.a.d;
import com.bytedance.sdk.openadsdk.core.b.a;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.model.i;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.r;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardFullReportManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {
    private final a a;
    private final View.OnClickListener b;
    private final com.bytedance.sdk.openadsdk.core.b.e c;

    public h(a aVar) {
        this.a = aVar;
        this.c = new com.bytedance.sdk.openadsdk.core.b.e(aVar.V, aVar.a, aVar.f1317g, aVar.f1316f ? 7 : 5) { // from class: com.bytedance.sdk.openadsdk.component.reward.a.h.1
            @Override // com.bytedance.sdk.openadsdk.core.b.e
            public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, int i, int i2, int i3, boolean z) {
                com.bytedance.sdk.component.utils.l.b("TTAD.RFReportManager", "onRewardBarClick , x = " + f2);
                if (h.this.a.a.at() && view != null) {
                    Object tag = view.getTag(570425345);
                    if (tag instanceof String) {
                        a((String) tag);
                    }
                }
                HashMap map = new HashMap();
                map.put("duration", Long.valueOf(h.this.a.G.g()));
                if (h.this.a.u.get()) {
                    map.put("click_scence", 2);
                } else if (t.k(h.this.a.a)) {
                    map.put("click_scence", 3);
                } else {
                    map.put("click_scence", 1);
                }
                a(map);
                h.this.a.V.onRewardBarClick(view);
                if (view.getId() == com.bytedance.sdk.openadsdk.utils.i.bf && t.k(h.this.a.a)) {
                    JSONObject jSONObject = new JSONObject();
                    if (h.this.a.a.K() != null) {
                        try {
                            jSONObject.put("playable_url", h.this.a.a.K().l());
                        } catch (JSONException e2) {
                            com.bytedance.sdk.component.utils.l.c("TTAD.RFReportManager", "onRewardBarClick json error", e2);
                        }
                    }
                    com.bytedance.sdk.openadsdk.b.c.b(h.this.a.a, h.this.a.f1317g, "click_playable_download_button_loading", jSONObject);
                }
                h.this.a.H.a(view, f2, f3, f4, f5, sparseArray, i, i2, i3, new d.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.h.1.1
                    @Override // com.bytedance.sdk.openadsdk.component.reward.a.d.a
                    public void a(View view2, float f6, float f7, float f8, float f9, SparseArray<c.a> sparseArray2, int i4, int i5, int i6) {
                        h.this.a(view2, f6, f7, f8, f9, sparseArray2, i4, i5, i6);
                    }

                    @Override // com.bytedance.sdk.openadsdk.component.reward.a.d.a
                    public void a(String str, JSONObject jSONObject2) {
                        h.this.a(str, jSONObject2);
                    }
                });
                com.bytedance.sdk.openadsdk.n.a.e.a(h.this.a.a, 9);
            }
        };
        this.b = new com.bytedance.sdk.openadsdk.core.b.b(aVar.V, aVar.a, aVar.f1317g, aVar.f1316f ? 7 : 5) { // from class: com.bytedance.sdk.openadsdk.component.reward.a.h.2
            @Override // com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
            public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
                try {
                    h.this.a(view, f2, f3, f4, f5, sparseArray, this.B, this.z, this.A);
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.l.e("TTAD.RFReportManager", "onClickReport error :" + e2.getMessage());
                }
                com.bytedance.sdk.openadsdk.n.a.e.a(h.this.a.a, 9);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, int i, int i2, int i3) {
        if (view == null) {
            return;
        }
        TTBaseVideoActivity tTBaseVideoActivity = this.a.V;
        if (view.getId() == com.bytedance.sdk.openadsdk.utils.i.f1872e) {
            a("click_play_star_level", null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.i.f1871d || view.getId() == com.bytedance.sdk.openadsdk.utils.i.f1874g) {
            a("click_play_star_nums", null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.i.c) {
            a("click_play_source", null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.i.b) {
            a("click_play_logo", null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.i.l || view.getId() == com.bytedance.sdk.openadsdk.utils.i.aq || view.getId() == com.bytedance.sdk.openadsdk.utils.i.p) {
            a("click_start_play_bar", h());
        } else if (view.getId() == 520093705) {
            a("click_start_play", h());
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.i.k) {
            a("click_video", h());
        } else if (view.getId() == 520093707 || view.getId() == com.bytedance.sdk.openadsdk.utils.i.h) {
            a("fallback_endcard_click", h());
        }
        b(view, f2, f3, f4, f5, sparseArray, i, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, JSONObject jSONObject) {
        a aVar = this.a;
        q qVar = aVar.a;
        String str2 = aVar.f1317g;
        if (!aVar.f1316f) {
            jSONObject = null;
        }
        com.bytedance.sdk.openadsdk.b.c.a(qVar, str2, str, jSONObject);
    }

    private void b(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, int i, int i2, int i3) {
        if (g()) {
            a aVar = this.a;
            if (aVar.a == null || view == null) {
                return;
            }
            TTBaseVideoActivity tTBaseVideoActivity = aVar.V;
            int id = view.getId();
            if (id == com.bytedance.sdk.openadsdk.utils.i.f1872e || id == com.bytedance.sdk.openadsdk.utils.i.f1871d || id == com.bytedance.sdk.openadsdk.utils.i.c || id == com.bytedance.sdk.openadsdk.utils.i.b || id == com.bytedance.sdk.openadsdk.utils.i.l || id == com.bytedance.sdk.openadsdk.utils.i.aq || id == com.bytedance.sdk.openadsdk.utils.i.p || id == 520093705 || id == com.bytedance.sdk.openadsdk.utils.i.k || id == 520093707 || id == com.bytedance.sdk.openadsdk.utils.i.f1874g) {
                int iG = ad.g(o.a());
                com.bytedance.sdk.openadsdk.core.model.i iVarA = new i.a().f(f2).e(f3).d(f4).c(f5).b(System.currentTimeMillis()).a(0L).b(ad.a(this.a.T.k())).a(ad.a((View) null)).c(ad.c(this.a.T.k())).d(ad.c((View) null)).d(i2).e(i3).f(i).a(sparseArray).b(com.bytedance.sdk.openadsdk.core.h.b().a() ? 1 : 2).c(iG).a(ad.e(o.a())).b(ad.f(o.a())).a();
                HashMap map = new HashMap();
                map.put("duration", Long.valueOf(this.a.G.g()));
                a aVar2 = this.a;
                com.bytedance.sdk.openadsdk.b.c.a("click_other", aVar2.a, iVarA, aVar2.f1317g, true, (Map<String, Object>) map, -1);
            }
        }
    }

    private boolean g() {
        q qVar = this.a.a;
        return qVar != null && qVar.J() == 1;
    }

    private JSONObject h() {
        try {
            long jP = this.a.G.p();
            int iQ = this.a.G.q();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("duration", jP);
                jSONObject.put("percent", iQ);
                return jSONObject;
            } catch (Throwable unused) {
                return jSONObject;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public void a() {
        JSONObject jSONObject = new JSONObject();
        q qVar = this.a.a;
        if ((qVar instanceof r) && ((r) qVar).bz()) {
            try {
                jSONObject.put("choose_one_ad_real_show", true);
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.l.c("TTAD.RFReportManager", "reportShow json error", e2);
            }
        }
        if (this.a.x.get() && com.bytedance.sdk.openadsdk.core.model.o.c(qVar)) {
            return;
        }
        this.a.x.set(true);
        com.bytedance.sdk.openadsdk.b.c.a(qVar, this.a.f1317g, jSONObject);
        TTBaseVideoActivity tTBaseVideoActivity = this.a.V;
        if (tTBaseVideoActivity instanceof com.bytedance.sdk.openadsdk.core.video.c.b) {
            tTBaseVideoActivity.g();
        }
        com.bytedance.sdk.openadsdk.n.a.e.a(this.a.V.findViewById(R.id.content), qVar, -1);
    }

    public void a(final Map<String, Object> map) {
        this.a.x.set(true);
        final View viewFindViewById = this.a.V.findViewById(R.id.content);
        if (viewFindViewById == null) {
            viewFindViewById = this.a.V.getWindow().getDecorView();
        }
        viewFindViewById.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.h.3
            @Override // java.lang.Runnable
            public void run() {
                Map map2;
                if (h.this.a.y.getAndSet(true)) {
                    return;
                }
                q qVar = h.this.a.a;
                JSONObject jSONObject = null;
                try {
                    jSONObject = map != null ? new JSONObject(map) : new JSONObject();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("width", viewFindViewById.getWidth());
                    jSONObject2.put("height", viewFindViewById.getHeight());
                    jSONObject2.put("alpha", viewFindViewById.getAlpha());
                    jSONObject.put("root_view", jSONObject2.toString());
                    if ((qVar instanceof r) && ((r) qVar).bz()) {
                        jSONObject.put("choose_one_ad_real_show", true);
                    }
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.l.c("TTAD.RFReportManager", "run: ", th);
                }
                com.bytedance.sdk.openadsdk.b.c.a(qVar, h.this.a.f1317g, jSONObject);
                if (h.this.a.V instanceof com.bytedance.sdk.openadsdk.core.video.c.b) {
                    h.this.a.V.g();
                }
                com.bytedance.sdk.openadsdk.n.a.e.a(h.this.a.V.findViewById(R.id.content), qVar, (h.this.a.J == null || (map2 = map) == null || !map2.containsKey("dynamic_show_type")) ? false : true ? h.this.a.J.i() : -1);
            }
        });
    }

    public void a(boolean z) {
        q qVar = this.a.a;
        if (qVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.j.a.b bVarE = com.bytedance.sdk.openadsdk.j.a.b.b().a(z ? 7 : 8).c(String.valueOf(qVar.aZ())).e(this.a.a.bc());
        bVarE.b(this.a.Q.t()).f(this.a.Q.u());
        bVarE.g(this.a.a.ac()).d(this.a.a.Y());
        com.bytedance.sdk.openadsdk.j.b.a().c(bVarE);
    }

    public void b() {
        boolean z;
        com.bytedance.sdk.openadsdk.component.reward.view.c cVar;
        try {
            JSONObject jSONObject = new JSONObject();
            if (!this.a.V.p() || (cVar = this.a.J) == null) {
                z = false;
            } else {
                jSONObject.put("dynamic_show_type", cVar.i());
                z = true;
            }
            q qVar = this.a.a;
            if ((qVar instanceof r) && ((r) qVar).bz()) {
                jSONObject.put("choose_one_ad_real_show", true);
            }
            View viewFindViewById = this.a.V.findViewById(R.id.content);
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("width", viewFindViewById.getWidth());
                jSONObject2.put("height", viewFindViewById.getHeight());
                jSONObject2.put("alpha", viewFindViewById.getAlpha());
            } catch (Throwable unused) {
            }
            jSONObject.put("root_view", jSONObject2.toString());
            this.a.x.set(true);
            com.bytedance.sdk.openadsdk.b.c.a(qVar, this.a.f1317g, jSONObject);
            TTBaseVideoActivity tTBaseVideoActivity = this.a.V;
            if (tTBaseVideoActivity instanceof com.bytedance.sdk.openadsdk.core.video.c.b) {
                tTBaseVideoActivity.g();
            }
            com.bytedance.sdk.openadsdk.n.a.e.a(this.a.V.findViewById(R.id.content), qVar, z ? this.a.J.i() : -1);
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.l.c("TTAD.RFReportManager", "reportShowWhenBindVideoAd error", e2);
        }
    }

    public void b(boolean z) {
        a aVar = this.a;
        if (aVar == null) {
            return;
        }
        if (z || !aVar.x.get() || this.a.r <= 0) {
            this.a.r = SystemClock.elapsedRealtime();
        } else {
            String strValueOf = String.valueOf(SystemClock.elapsedRealtime() - this.a.r);
            a aVar2 = this.a;
            com.bytedance.sdk.openadsdk.b.c.a(strValueOf, aVar2.a, aVar2.V.a, aVar2.G.a());
            this.a.r = 0L;
        }
        com.bytedance.sdk.openadsdk.n.a.e.a(this.a.a, z ? 4 : 8);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public com.bytedance.sdk.openadsdk.core.b.e c() {
        this.c.a(this.a.V.findViewById(R.id.content));
        this.c.b(this.a.V.findViewById(520093713));
        if (this.a.H.c() != null) {
            this.c.a(this.a.H.c());
        }
        this.a.I.a(this.c);
        this.c.a(new a.InterfaceC0131a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.h.4
            @Override // com.bytedance.sdk.openadsdk.core.b.a.InterfaceC0131a
            public long getVideoProgress() {
                return h.this.a.G.g();
            }
        });
        com.bytedance.sdk.openadsdk.component.reward.view.e eVar = this.a.T;
        com.bytedance.sdk.openadsdk.core.b.e eVar2 = this.c;
        eVar.a(eVar2, eVar2, this.b);
        this.a.S.a(this.c);
        return this.c;
    }

    public void c(boolean z) {
        a aVar = this.a;
        if (aVar != null && z && aVar.a.bj() && !this.a.a.bo()) {
            this.a.a.f(true);
            a aVar2 = this.a;
            q qVar = aVar2.a;
            com.bytedance.sdk.openadsdk.b.c.a(qVar, aVar2.f1317g, qVar.bk());
        }
    }

    public View.OnClickListener d() {
        return this.b;
    }

    public com.bytedance.sdk.openadsdk.core.b.e e() {
        return this.c;
    }

    public void f() {
        JSONObject jSONObject = new JSONObject();
        if (t.k(this.a.a)) {
            this.a.I.a(jSONObject);
        }
        try {
            if (this.a.u.get()) {
                jSONObject.put("endcard_content", this.a.Q.c() ? 1 : this.a.Q.d() ? 2 : 0);
            } else {
                jSONObject.put("endCardNotShow", 1);
            }
        } catch (JSONException unused) {
        }
        a aVar = this.a;
        com.bytedance.sdk.openadsdk.b.c.b(aVar.a, aVar.V.a, "click_close", jSONObject);
    }
}
