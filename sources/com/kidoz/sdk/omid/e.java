package com.kidoz.sdk.omid;

import com.kidoz.sdk.api.general.utils.SDKLogger;

/* JADX INFO: compiled from: OMSessionAdapterNoopImpl.java */
/* JADX INFO: loaded from: classes4.dex */
public class e implements c {
    public static final String a = "e";

    @Override // com.kidoz.sdk.omid.c
    public void finish() {
        SDKLogger.printDebugLog(a, "OMSDK implementation: OMSessionAdapter.finish(), ignored. Session init failed.");
    }

    @Override // com.kidoz.sdk.omid.c
    public void start() {
        SDKLogger.printDebugLog(a, "OMSDK implementation: OMSessionAdapter.start(), ignored. Session init failed.");
    }
}
