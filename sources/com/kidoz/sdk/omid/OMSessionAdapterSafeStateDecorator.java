package com.kidoz.sdk.omid;

import com.kidoz.sdk.api.general.utils.SDKLogger;

/* JADX INFO: loaded from: classes4.dex */
public class OMSessionAdapterSafeStateDecorator implements c {
    public static final String a = "OMSessionAdapterSafeStateDecorator";
    private c b;
    private SessionState c = SessionState.notStarted;

    private enum SessionState {
        notStarted,
        started,
        finished
    }

    OMSessionAdapterSafeStateDecorator(c cVar) {
        this.b = cVar;
    }

    @Override // com.kidoz.sdk.omid.c
    public void finish() {
        if (this.c == SessionState.started) {
            String str = a;
            SDKLogger.printDebugLog(str, "OMSDK implementation: OMSessionAdapter.finish() invoked");
            this.b.finish();
            SDKLogger.printDebugLog(str, "OMSDK implementation: OMSessionAdapter.finish() complete");
            this.c = SessionState.finished;
            return;
        }
        SDKLogger.printDebugLog(a, "OMSDK implementation: OMSessionAdapter.finish() is called, while session state is " + this.c.name() + ", ignoring");
    }

    @Override // com.kidoz.sdk.omid.c
    public void start() {
        if (this.c == SessionState.notStarted) {
            String str = a;
            SDKLogger.printDebugLog(str, "OMSDK implementation: OMSessionAdapter.start() invoked");
            this.b.start();
            SDKLogger.printDebugLog(str, "OMSDK implementation: OMSessionAdapter.start() complete");
            this.c = SessionState.started;
            return;
        }
        SDKLogger.printWarningLog(a, "OMSDK implementation: OMSessionAdapter.start() is called, while session state is " + this.c.name() + ", ignoring");
    }
}
