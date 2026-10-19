package com.applovin.impl.mediation.b;

import androidx.annotation.NonNull;
import com.applovin.impl.sdk.n;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h extends f {
    public h(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, n nVar) {
        super(map, jSONObject, jSONObject2, nVar);
    }

    @Override // com.applovin.impl.mediation.b.f
    @NonNull
    public String toString() {
        return "SignalProviderSpec{adObject=" + yz() + '}';
    }

    public boolean yK() {
        return b("only_collect_signal_when_initialized", Boolean.FALSE).booleanValue();
    }

    public boolean yL() {
        return b("use_cached_adapter", Boolean.TRUE).booleanValue();
    }
}
