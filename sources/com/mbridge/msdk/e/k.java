package com.mbridge.msdk.e;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.e.w;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: compiled from: Global.java */
/* JADX INFO: loaded from: classes4.dex */
class k {
    private static x a = null;
    private static String o = "";
    private final String b;
    private final m c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f6976d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private w f6977e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private JSONObject f6978f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<String> f6979g;
    private List<String> h;
    private volatile c i;
    private volatile l j;
    private volatile d k;
    private volatile j l;
    private volatile r m;
    private volatile boolean n = true;
    private n p;

    k(String str, m mVar) {
        this.b = str;
        this.c = mVar;
    }

    final String a() {
        if (!y.a((Object) this.f6976d) && !y.a(this.f6977e)) {
            try {
                o().a();
                this.n = false;
                if (TextUtils.isEmpty(o)) {
                    o = UUID.randomUUID().toString();
                }
                if (!y.a(a)) {
                    try {
                        a.a(b(), this.b, this.c);
                        t.a().b();
                    } catch (Exception e2) {
                        if (a.a) {
                            Log.e("TrackManager", "track manager start exception", e2);
                        }
                    }
                }
                return o;
            } catch (Exception e3) {
                if (a.a) {
                    Log.e("TrackManager", "start error", e3);
                }
                this.n = true;
            }
        }
        return "";
    }

    final void a(Context context) {
        this.f6976d = context;
    }

    final void a(w wVar) {
        this.f6977e = wVar;
    }

    final void a(JSONObject jSONObject) {
        this.f6978f = jSONObject;
    }

    final boolean a(e eVar) {
        if (y.a(eVar)) {
            return false;
        }
        f fVar = d().j;
        if (y.b(fVar)) {
            try {
                return fVar.a(eVar);
            } catch (Exception e2) {
                if (a.a) {
                    Log.e("TrackManager", "event filter apply exception", e2);
                }
            }
        }
        String strA = eVar.a();
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        if (this.h != null) {
            try {
                return !r0.contains(strA);
            } catch (Exception e3) {
                if (a.a) {
                    Log.e("TrackManager", "disallowTrackEventNames contains exception", e3);
                }
            }
        }
        List<String> list = this.f6979g;
        if (list != null) {
            try {
                return list.contains(strA);
            } catch (Exception e4) {
                if (a.a) {
                    Log.e("TrackManager", "allowTrackEventNames contains exception", e4);
                }
            }
        }
        return true;
    }

    final String b() {
        if (!TextUtils.isEmpty(o)) {
            return o;
        }
        String string = UUID.randomUUID().toString();
        o = string;
        return string;
    }

    final String c() {
        return this.b;
    }

    final w d() {
        w wVar = this.f6977e;
        if (wVar != null) {
            return wVar;
        }
        w wVarA = new w.a().a();
        this.f6977e = wVarA;
        return wVarA;
    }

    final Context e() {
        return this.f6976d;
    }

    final JSONObject f() {
        JSONObject jSONObject = this.f6978f;
        if (jSONObject != null) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        this.f6978f = jSONObject2;
        return jSONObject2;
    }

    final c g() {
        if (y.a(this.i)) {
            synchronized (k.class) {
                if (y.a(this.i)) {
                    this.i = new c(new b(this.f6976d, TextUtils.isEmpty(this.b) ? String.format("track_manager_%s.db", "default") : String.format("track_manager_%s.db", this.b), "event_table"), "event_table");
                }
            }
        }
        return this.i;
    }

    final l h() {
        if (y.a(this.j)) {
            synchronized (k.class) {
                if (y.a(this.j)) {
                    this.j = new p(new g(g(), o(), i()));
                }
            }
        }
        return this.j;
    }

    final j i() {
        if (y.a(this.l)) {
            synchronized (k.class) {
                if (y.a(this.l)) {
                    this.l = new j();
                }
            }
        }
        return this.l;
    }

    final d j() {
        if (y.a(this.k)) {
            this.k = d().h;
        }
        return this.k;
    }

    final m k() {
        return this.c;
    }

    final int l() {
        if (d().a < 0) {
            return 50;
        }
        return d().a;
    }

    final int m() {
        return Math.max(d().b, 0);
    }

    final int n() {
        return Math.max(d().f6995e, 0);
    }

    final r o() {
        if (y.a(this.m)) {
            synchronized (k.class) {
                if (y.a(this.m)) {
                    this.m = new r(this);
                }
            }
        }
        return this.m;
    }

    final boolean p() throws IllegalStateException {
        if (y.a(d())) {
            throw new IllegalStateException("config can not be null");
        }
        if (y.a(j())) {
            throw new IllegalStateException("decorate can not be null");
        }
        if (y.a(d().i)) {
            throw new IllegalStateException("responseHandler can not be null");
        }
        if (y.a(d().f6997g) || y.a(d().f6997g.c())) {
            throw new IllegalStateException("networkStackConfig or stack can not be null");
        }
        if (TextUtils.isEmpty(d().f6997g.b())) {
            throw new IllegalStateException("report url is null");
        }
        return true;
    }

    final n q() {
        if (y.a(this.p)) {
            synchronized (k.class) {
                if (y.a(this.p)) {
                    this.p = new n(d().f6994d <= 0 ? 2 : d().f6994d, d().f6997g, d().i, d().c);
                }
            }
        }
        return this.p;
    }

    final boolean r() {
        return this.n;
    }
}
