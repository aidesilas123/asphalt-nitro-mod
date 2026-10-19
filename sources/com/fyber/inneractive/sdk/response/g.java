package com.fyber.inneractive.sdk.response;

import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.model.vast.o;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class g extends e {
    public long J;
    public com.fyber.inneractive.sdk.model.vast.b K;
    public final List<com.fyber.inneractive.sdk.measurement.f> N = new ArrayList();
    public Map<o, com.fyber.inneractive.sdk.flow.vast.g> L = new LinkedHashMap();
    public List<com.fyber.inneractive.sdk.model.vast.g> M = new ArrayList();
    public LinkedHashMap<String, String> O = new LinkedHashMap<>();

    @Override // com.fyber.inneractive.sdk.response.e
    public InneractiveErrorCode a(InneractiveAdRequest inneractiveAdRequest) {
        return a(null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x002c A[PHI: r0 r4
      0x002c: PHI (r0v8 com.fyber.inneractive.sdk.external.InneractiveErrorCode) = 
      (r0v3 com.fyber.inneractive.sdk.external.InneractiveErrorCode)
      (r0v4 com.fyber.inneractive.sdk.external.InneractiveErrorCode)
      (r0v5 com.fyber.inneractive.sdk.external.InneractiveErrorCode)
      (r0v7 com.fyber.inneractive.sdk.external.InneractiveErrorCode)
      (r0v7 com.fyber.inneractive.sdk.external.InneractiveErrorCode)
      (r0v7 com.fyber.inneractive.sdk.external.InneractiveErrorCode)
      (r0v7 com.fyber.inneractive.sdk.external.InneractiveErrorCode)
      (r0v37 com.fyber.inneractive.sdk.external.InneractiveErrorCode)
     binds: [B:44:0x010a, B:41:0x00fc, B:38:0x00ee, B:12:0x0042, B:14:0x0048, B:16:0x004e, B:31:0x00b2, B:5:0x001c] A[DONT_GENERATE, DONT_INLINE]
      0x002c: PHI (r4v17 com.fyber.inneractive.sdk.network.q) = 
      (r4v12 com.fyber.inneractive.sdk.network.q)
      (r4v13 com.fyber.inneractive.sdk.network.q)
      (r4v14 com.fyber.inneractive.sdk.network.q)
      (r4v16 com.fyber.inneractive.sdk.network.q)
      (r4v16 com.fyber.inneractive.sdk.network.q)
      (r4v16 com.fyber.inneractive.sdk.network.q)
      (r4v16 com.fyber.inneractive.sdk.network.q)
      (r4v21 com.fyber.inneractive.sdk.network.q)
     binds: [B:44:0x010a, B:41:0x00fc, B:38:0x00ee, B:12:0x0042, B:14:0x0048, B:16:0x004e, B:31:0x00b2, B:5:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.fyber.inneractive.sdk.response.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fyber.inneractive.sdk.external.InneractiveErrorCode a(com.fyber.inneractive.sdk.external.InneractiveAdRequest r18, com.fyber.inneractive.sdk.config.global.s r19) {
        /*
            Method dump skipped, instruction units count: 712
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.response.g.a(com.fyber.inneractive.sdk.external.InneractiveAdRequest, com.fyber.inneractive.sdk.config.global.s):com.fyber.inneractive.sdk.external.InneractiveErrorCode");
    }

    public List<com.fyber.inneractive.sdk.measurement.f> d() {
        return this.N;
    }

    public com.fyber.inneractive.sdk.model.vast.b e() {
        return this.K;
    }
}
