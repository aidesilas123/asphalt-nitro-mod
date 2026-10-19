package com.mbridge.msdk.e;

import androidx.browser.trusted.sharing.ShareTarget;
import com.json.b4;
import com.mbridge.msdk.e.a.m;
import com.mbridge.msdk.e.a.o;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: ReportRequest.java */
/* JADX INFO: loaded from: classes4.dex */
public final class u<T> extends com.mbridge.msdk.e.a.m<T> {
    private Map<String, String> a;
    private m.b b;
    private o.b<T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v f6992d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.e.a.e f6993e;

    public u(String str, int i) {
        super(i, str);
    }

    public u(String str, int i, int i2) {
        super(i, str, i2);
    }

    @Override // com.mbridge.msdk.e.a.m
    protected final com.mbridge.msdk.e.a.o<T> a(com.mbridge.msdk.e.a.k kVar) {
        return this.f6992d.a(kVar);
    }

    @Override // com.mbridge.msdk.e.a.m
    public final com.mbridge.msdk.e.a.r a() {
        if (y.a(this.f6993e)) {
            this.f6993e = new com.mbridge.msdk.e.a.e(30000, 5, 1.0f);
        }
        return this.f6993e;
    }

    public final void a(m.b bVar) {
        this.b = bVar;
    }

    public final void a(o.b<T> bVar) {
        this.c = bVar;
    }

    public final void a(v vVar) {
        this.f6992d = vVar;
    }

    @Override // com.mbridge.msdk.e.a.m
    protected final void a(T t) {
        o.b<T> bVar = this.c;
        this.c = bVar;
        if (bVar != null) {
            bVar.a(t);
        }
    }

    public final void a(Map<String, String> map) {
        this.a = map;
    }

    @Override // com.mbridge.msdk.e.a.m
    protected final Map<String, String> b() {
        return this.a;
    }

    @Override // com.mbridge.msdk.e.a.m
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put(b4.I, ShareTarget.ENCODING_TYPE_URL_ENCODED);
        return map;
    }

    @Override // com.mbridge.msdk.e.a.m
    public final m.b d() {
        return this.b;
    }
}
