package com.json.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import com.json.adqualitysdk.sdk.i.av;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class at {
    private Map<String, av> a = new HashMap();

    final class a extends il {
        a() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            at.this.a.clear();
            at.this.a = null;
        }
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5246d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ av.d f5247e;

        b(String str, av.d dVar) {
            this.f5246d = str;
            this.f5247e = dVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            av avVarA = at.a(at.this, this.f5246d);
            if (avVarA != null) {
                avVarA.l(this.f5247e);
            }
        }
    }

    final class c extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5249d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ ci f5250e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ boolean f5251f;

        c(String str, ci ciVar, boolean z) {
            this.f5249d = str;
            this.f5250e = ciVar;
            this.f5251f = z;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            av avVarA = at.a(at.this, this.f5249d);
            if (avVarA != null) {
                avVarA.d(this.f5250e);
            }
        }
    }

    final class d extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5253d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ av.a f5254e;

        d(String str, av.a aVar) {
            this.f5253d = str;
            this.f5254e = aVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            av avVarA = at.a(at.this, this.f5253d);
            if (avVarA != null) {
                avVarA.f(this.f5254e);
            }
        }
    }

    public interface e extends p {
        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        /* synthetic */ void mo226(JSONObject jSONObject, K k, T t);

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        /* synthetic */ void mo227(JSONObject jSONObject, K k, Object obj, T t);

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻛ */
        /* synthetic */ void mo228(JSONObject jSONObject, K k, T t);

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ｋ */
        /* synthetic */ void mo229(JSONObject jSONObject, K k, T t);

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        /* synthetic */ void mo230(JSONObject jSONObject, K k, T t);

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        /* synthetic */ void mo231(JSONObject jSONObject, K k, Object obj, T t);

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        /* synthetic */ void mo232(JSONObject jSONObject, K k, T t);

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        /* synthetic */ void mo233(JSONObject jSONObject, K k, Object obj, T t);
    }

    public at() {
        new Handler(Looper.getMainLooper());
    }

    static /* synthetic */ av a(at atVar, String str) {
        Map<String, av> map = atVar.a;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    final void d(String str) {
        this.a.put(str, new av(str));
    }

    final String e(String str) {
        Map<String, av> map = this.a;
        av avVar = map != null ? map.get(str) : null;
        if (avVar != null) {
            return avVar.g();
        }
        return null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final synchronized boolean m359() {
        Iterator it = new ArrayList(this.a.values()).iterator();
        while (it.hasNext()) {
            if (((av) it.next()).m()) {
                return false;
            }
        }
        return true;
    }
}
