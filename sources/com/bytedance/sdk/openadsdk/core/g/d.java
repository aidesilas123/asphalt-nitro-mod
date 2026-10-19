package com.bytedance.sdk.openadsdk.core.g;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.core.g.b.a;
import com.bytedance.sdk.openadsdk.core.g.b.b;
import com.bytedance.sdk.openadsdk.core.g.b.c;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: VideoTrackers.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    private final a m;
    private long p;
    private q q;
    private boolean r;
    private boolean s;
    private boolean t;
    private String u;
    public List<com.bytedance.sdk.openadsdk.core.g.b.c> a = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.g.b.c> b = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.g.b.c> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<com.bytedance.sdk.openadsdk.core.g.b.c> f1528d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<com.bytedance.sdk.openadsdk.core.g.b.c> f1529e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<com.bytedance.sdk.openadsdk.core.g.b.c> f1530f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<com.bytedance.sdk.openadsdk.core.g.b.c> f1531g = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.g.b.c> h = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.g.b.c> i = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.g.b.c> j = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.g.b.b> k = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.g.b.a> l = new ArrayList();
    private final AtomicBoolean n = new AtomicBoolean(false);
    private final AtomicBoolean o = new AtomicBoolean(false);

    public d(a aVar) {
        this.m = aVar;
    }

    private void a(long j, List<com.bytedance.sdk.openadsdk.core.g.b.c> list, com.bytedance.sdk.openadsdk.core.g.a.a aVar) {
        a(j, list, aVar, null);
    }

    private void a(long j, List<com.bytedance.sdk.openadsdk.core.g.b.c> list, com.bytedance.sdk.openadsdk.core.g.a.a aVar, c.b bVar) {
        a aVar2 = this.m;
        com.bytedance.sdk.openadsdk.core.g.b.c.a(list, aVar, j, aVar2 != null ? aVar2.g() : null, bVar);
    }

    private void a(final f fVar, final int i) {
        com.bytedance.sdk.component.utils.h.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.d.1
            @Override // java.lang.Runnable
            public void run() {
                f fVar2 = fVar;
                if (fVar2 != null) {
                    fVar2.a(i);
                }
            }
        });
    }

    private JSONArray b() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<com.bytedance.sdk.openadsdk.core.g.b.b> it = this.k.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().b());
        }
        return jSONArray;
    }

    private void b(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, str);
            com.bytedance.sdk.openadsdk.b.c.b(this.q, this.u, "vast_play_track", jSONObject);
        } catch (Throwable unused) {
        }
    }

    private JSONArray c() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<com.bytedance.sdk.openadsdk.core.g.b.a> it = this.l.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().a());
        }
        return jSONArray;
    }

    public List<com.bytedance.sdk.openadsdk.core.g.b.c> a(long j, float f2) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.k.size(); i++) {
            com.bytedance.sdk.openadsdk.core.g.b.b bVar = this.k.get(i);
            if (bVar.a(f2)) {
                arrayList.add(bVar);
            }
        }
        for (int i2 = 0; i2 < this.l.size(); i2++) {
            com.bytedance.sdk.openadsdk.core.g.b.a aVar = this.l.get(i2);
            if (aVar.a(j)) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.a));
        jSONObject.put("impressionTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.b));
        jSONObject.put("pauseTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.c));
        jSONObject.put("resumeTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.f1528d));
        jSONObject.put("completeTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.f1529e));
        jSONObject.put("closeTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.f1530f));
        jSONObject.put("skipTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.f1531g));
        jSONObject.put("clickTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.h));
        jSONObject.put("muteTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.i));
        jSONObject.put("unMuteTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.j));
        jSONObject.put("fractionalTrackers", b());
        jSONObject.put("absoluteTrackers", c());
        return jSONObject;
    }

    public void a(long j) {
        if (this.n.compareAndSet(false, true)) {
            a(j, this.b, null, new c.b("show_impression", this.q));
        }
    }

    public void a(long j, long j2, f fVar) {
        if (System.currentTimeMillis() - this.p >= 1000 && j >= 0 && j2 > 0) {
            this.p = System.currentTimeMillis();
            float f2 = j / j2;
            List<com.bytedance.sdk.openadsdk.core.g.b.c> listA = a(j, f2);
            if (f2 >= 0.25f && !this.r) {
                b("firstQuartile");
                this.r = true;
                if (fVar != null) {
                    a(fVar, 6);
                }
                f2 = 0.25f;
            } else if (f2 >= 0.5f && !this.s) {
                b(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT);
                this.s = true;
                if (fVar != null) {
                    a(fVar, 7);
                }
                f2 = 0.5f;
            } else if (f2 >= 0.75f && !this.t) {
                b("thirdQuartile");
                this.t = true;
                if (fVar != null) {
                    a(fVar, 8);
                }
                f2 = 0.75f;
            }
            if (f2 < 0.03f) {
                f2 = 0.0f;
            }
            a(j, listA, null, new c.b("video_progress", this.q, f2));
        }
    }

    public void a(com.bytedance.sdk.openadsdk.core.g.a.a aVar) {
        a(-1L, this.a, aVar);
    }

    public void a(d dVar) {
        j(dVar.a);
        a(dVar.b);
        b(dVar.c);
        c(dVar.f1528d);
        d(dVar.f1529e);
        e(dVar.f1530f);
        f(dVar.f1531g);
        g(dVar.h);
        k(dVar.i);
        l(dVar.j);
        h(dVar.k);
        i(dVar.l);
    }

    public void a(q qVar) {
        this.q = qVar;
    }

    public void a(String str) {
        this.u = str;
    }

    public void a(String str, float f2) {
        if (TextUtils.isEmpty(str) || f2 < 0.0f) {
            return;
        }
        h(Collections.singletonList(new b.a(str, f2).a()));
    }

    public void a(String str, long j) {
        if (TextUtils.isEmpty(str) || j < 0) {
            return;
        }
        i(Collections.singletonList(new a.C0134a(str, j).a()));
    }

    public void a(List<com.bytedance.sdk.openadsdk.core.g.b.c> list) {
        this.b.addAll(list);
    }

    public void a(JSONObject jSONObject) {
        j(com.bytedance.sdk.openadsdk.core.g.b.c.a(jSONObject.optJSONArray("errorTrackers")));
        a(com.bytedance.sdk.openadsdk.core.g.b.c.a(jSONObject.optJSONArray("impressionTrackers")));
        b(com.bytedance.sdk.openadsdk.core.g.b.c.a(jSONObject.optJSONArray("pauseTrackers"), true));
        c(com.bytedance.sdk.openadsdk.core.g.b.c.a(jSONObject.optJSONArray("resumeTrackers"), true));
        d(com.bytedance.sdk.openadsdk.core.g.b.c.a(jSONObject.optJSONArray("completeTrackers")));
        e(com.bytedance.sdk.openadsdk.core.g.b.c.a(jSONObject.optJSONArray("closeTrackers")));
        f(com.bytedance.sdk.openadsdk.core.g.b.c.a(jSONObject.optJSONArray("skipTrackers")));
        g(com.bytedance.sdk.openadsdk.core.g.b.c.a(jSONObject.optJSONArray("clickTrackers")));
        k(com.bytedance.sdk.openadsdk.core.g.b.c.a(jSONObject.optJSONArray("muteTrackers"), true));
        l(com.bytedance.sdk.openadsdk.core.g.b.c.a(jSONObject.optJSONArray("unMuteTrackers"), true));
        h(com.bytedance.sdk.openadsdk.core.g.b.c.b(jSONObject.optJSONArray("fractionalTrackers")));
        i(com.bytedance.sdk.openadsdk.core.g.b.c.c(jSONObject.optJSONArray("absoluteTrackers")));
    }

    public void b(long j) {
        a(j, this.c, (com.bytedance.sdk.openadsdk.core.g.a.a) null);
    }

    public void b(List<com.bytedance.sdk.openadsdk.core.g.b.c> list) {
        this.c.addAll(list);
    }

    public void c(long j) {
        a(j, this.f1528d, (com.bytedance.sdk.openadsdk.core.g.a.a) null);
    }

    public void c(List<com.bytedance.sdk.openadsdk.core.g.b.c> list) {
        this.f1528d.addAll(list);
    }

    public void d(long j) {
        a(j, this.f1529e, null, new c.b("video_progress", this.q, 1.0f));
    }

    public void d(List<com.bytedance.sdk.openadsdk.core.g.b.c> list) {
        this.f1529e.addAll(list);
    }

    public void e(long j) {
        if (this.o.compareAndSet(false, true)) {
            a(j, this.f1530f, (com.bytedance.sdk.openadsdk.core.g.a.a) null);
        }
    }

    public void e(List<com.bytedance.sdk.openadsdk.core.g.b.c> list) {
        this.f1530f.addAll(list);
    }

    public void f(long j) {
        a(j, this.f1531g, (com.bytedance.sdk.openadsdk.core.g.a.a) null);
    }

    public void f(List<com.bytedance.sdk.openadsdk.core.g.b.c> list) {
        this.f1531g.addAll(list);
    }

    public void g(long j) {
        a(j, this.h, null, new c.b(CampaignEx.JSON_NATIVE_VIDEO_CLICK, this.q));
    }

    public void g(List<com.bytedance.sdk.openadsdk.core.g.b.c> list) {
        this.h.addAll(list);
    }

    public void h(long j) {
        a(j, this.i, (com.bytedance.sdk.openadsdk.core.g.a.a) null);
    }

    public void h(List<com.bytedance.sdk.openadsdk.core.g.b.b> list) {
        this.k.addAll(list);
        Collections.sort(this.k);
    }

    public void i(long j) {
        a(j, this.j, (com.bytedance.sdk.openadsdk.core.g.a.a) null);
    }

    public void i(List<com.bytedance.sdk.openadsdk.core.g.b.a> list) {
        this.l.addAll(list);
        Collections.sort(this.l);
    }

    public void j(List<com.bytedance.sdk.openadsdk.core.g.b.c> list) {
        this.a.addAll(list);
    }

    public void k(List<com.bytedance.sdk.openadsdk.core.g.b.c> list) {
        this.i.addAll(list);
    }

    public void l(List<com.bytedance.sdk.openadsdk.core.g.b.c> list) {
        this.j.addAll(list);
    }
}
