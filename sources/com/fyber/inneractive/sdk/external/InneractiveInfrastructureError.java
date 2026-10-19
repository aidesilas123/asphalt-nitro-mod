package com.fyber.inneractive.sdk.external;

import com.fyber.inneractive.sdk.flow.g;
import com.fyber.inneractive.sdk.network.q;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class InneractiveInfrastructureError extends InneractiveError {
    public final InneractiveErrorCode a;
    public final g b;
    public Throwable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Exception f1997d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<q> f1998e;

    public InneractiveInfrastructureError(InneractiveErrorCode inneractiveErrorCode, g gVar) {
        this(inneractiveErrorCode, gVar, null);
    }

    public InneractiveInfrastructureError(InneractiveErrorCode inneractiveErrorCode, g gVar, Throwable th) {
        this.f1998e = new ArrayList();
        this.a = inneractiveErrorCode;
        this.b = gVar;
        this.c = th;
    }

    public void addReportedError(q qVar) {
        this.f1998e.add(qVar);
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveError
    public String description() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        if (this.c != null) {
            sb.append(" : ");
            sb.append(this.c);
        }
        return sb.toString();
    }

    public Throwable getCause() {
        Exception exc = this.f1997d;
        return exc == null ? this.c : exc;
    }

    public InneractiveErrorCode getErrorCode() {
        return this.a;
    }

    public g getFyberMarketplaceAdLoadFailureReason() {
        return this.b;
    }

    public boolean isErrorAlreadyReported(q qVar) {
        return this.f1998e.contains(qVar);
    }

    public void setCause(Exception exc) {
        this.f1997d = exc;
    }
}
