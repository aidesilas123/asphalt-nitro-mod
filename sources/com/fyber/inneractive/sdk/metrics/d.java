package com.fyber.inneractive.sdk.metrics;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d implements f {
    public Long a = null;
    public Long b = null;
    public Long c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Long f2067d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Long f2068e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Long f2069f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Long f2070g = null;
    public Long h = null;

    @Override // com.fyber.inneractive.sdk.metrics.f
    public boolean a() {
        return true;
    }

    @Override // com.fyber.inneractive.sdk.metrics.f
    public Long b() {
        Long lValueOf = Long.valueOf(System.currentTimeMillis());
        this.f2070g = lValueOf;
        return lValueOf;
    }

    @Override // com.fyber.inneractive.sdk.metrics.f
    public Long c() {
        Long lValueOf = Long.valueOf(System.currentTimeMillis());
        this.a = lValueOf;
        return lValueOf;
    }

    @Override // com.fyber.inneractive.sdk.metrics.f
    public Long d() {
        Long lValueOf = Long.valueOf(System.currentTimeMillis());
        this.f2067d = lValueOf;
        return lValueOf;
    }

    @Override // com.fyber.inneractive.sdk.metrics.f
    public Long e() {
        Long lValueOf = Long.valueOf(System.currentTimeMillis());
        this.f2069f = lValueOf;
        return lValueOf;
    }

    @Override // com.fyber.inneractive.sdk.metrics.f
    public Long f() {
        Long lValueOf = Long.valueOf(System.currentTimeMillis());
        this.b = lValueOf;
        return lValueOf;
    }

    @Override // com.fyber.inneractive.sdk.metrics.f
    public Long g() {
        Long lValueOf = Long.valueOf(System.currentTimeMillis());
        this.c = lValueOf;
        return lValueOf;
    }

    @Override // com.fyber.inneractive.sdk.metrics.f
    public Long h() {
        Long lValueOf = Long.valueOf(System.currentTimeMillis());
        this.h = lValueOf;
        return lValueOf;
    }

    @Override // com.fyber.inneractive.sdk.metrics.f
    public Long i() {
        Long lValueOf = Long.valueOf(System.currentTimeMillis());
        this.f2068e = lValueOf;
        return lValueOf;
    }

    @Override // com.fyber.inneractive.sdk.metrics.f
    public Map<String, Long> j() {
        HashMap map = new HashMap();
        Long l = this.b;
        if (l != null && this.a != null) {
            map.put("sdk_init_network_req", Long.valueOf(l.longValue() - this.a.longValue()));
        }
        Long l2 = this.h;
        if (l2 != null && this.b != null) {
            map.put("sdk_got_response_from_markup_url", Long.valueOf(l2.longValue() - this.b.longValue()));
        }
        Long l3 = this.f2067d;
        if (l3 != null && this.h != null) {
            map.put("sdk_parsed_res", Long.valueOf(l3.longValue() - this.h.longValue()));
        }
        Long l4 = this.c;
        if (l4 != null && this.b != null) {
            map.put("sdk_got_server_res", Long.valueOf(l4.longValue() - this.b.longValue()));
        }
        Long l5 = this.f2067d;
        if (l5 != null && this.c != null) {
            map.put("sdk_parsed_res", Long.valueOf(l5.longValue() - this.c.longValue()));
        }
        Long l6 = this.f2068e;
        if (l6 != null && this.f2067d != null) {
            map.put("ad_loaded_result", Long.valueOf(l6.longValue() - this.f2067d.longValue()));
        }
        Long l7 = this.f2069f;
        if (l7 != null && this.f2068e != null) {
            map.put("publisher_notified", Long.valueOf(l7.longValue() - this.f2068e.longValue()));
        }
        Long l8 = this.f2070g;
        if (l8 != null && this.a != null) {
            map.put("roundtrip", Long.valueOf(l8.longValue() - this.a.longValue()));
        }
        return map;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MetricsCollectorData{");
        if (this.a != null && this.b != null) {
            sb.append(" sdk_init_network_req=");
            sb.append(this.b.longValue() - this.a.longValue());
        }
        if (this.h != null && this.b != null) {
            sb.append(", sdk_got_response_from_markup_url=");
            sb.append(this.h.longValue() - this.b.longValue());
        }
        if (this.c != null && this.b != null) {
            sb.append(", sdk_got_server_res=");
            sb.append(this.c.longValue() - this.b.longValue());
        }
        if (this.f2067d != null && this.c != null) {
            sb.append(", sdk_parsed_res=");
            sb.append(this.f2067d.longValue() - this.c.longValue());
        }
        if (this.f2068e != null && this.f2067d != null) {
            sb.append(", ad_loaded_result=");
            sb.append(this.f2068e.longValue() - this.f2067d.longValue());
        }
        if (this.f2069f != null && this.f2068e != null) {
            sb.append(", publisher_notified=");
            sb.append(this.f2069f.longValue() - this.f2068e.longValue());
        }
        if (this.f2070g != null && this.a != null) {
            sb.append(", roundtrip=");
            sb.append(this.f2070g.longValue() - this.a.longValue());
        }
        sb.append(" }");
        return sb.toString();
    }
}
