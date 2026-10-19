package com.fyber.inneractive.sdk.ignite;

import com.fyber.inneractive.sdk.network.w;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class d implements w<IgniteResponseOuterClass$IgniteResponse> {
    public final /* synthetic */ c a;

    public d(c cVar) {
        this.a = cVar;
    }

    @Override // com.fyber.inneractive.sdk.network.w
    public void a(IgniteResponseOuterClass$IgniteResponse igniteResponseOuterClass$IgniteResponse, Exception exc, boolean z) {
        IgniteResponseOuterClass$IgniteResponse igniteResponseOuterClass$IgniteResponse2 = igniteResponseOuterClass$IgniteResponse;
        if (exc == null && igniteResponseOuterClass$IgniteResponse2.hasClientId() && igniteResponseOuterClass$IgniteResponse2.hasClientSecret()) {
            this.a.f2043e = igniteResponseOuterClass$IgniteResponse2.getClientId();
            this.a.f2044f = igniteResponseOuterClass$IgniteResponse2.getClientSecret();
            this.a.a();
        } else {
            Object[] objArr = new Object[1];
            objArr[0] = exc != null ? exc.getMessage() : "";
            IAlog.a("Failed to fetch ignite client credentials with error: %s", objArr);
            if (this.a.a(exc)) {
                this.a.a(i.FAILED_TO_RETRIEVE_CREDENTIALS, exc != null ? exc.getMessage() : null);
            }
        }
    }
}
