package com.hyprmx.android.sdk.initialization;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.core.j;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes2.dex */
public interface b {

    public interface a {
        @RetainMethodSignature
        void initializationFailed(String str);

        @RetainMethodSignature
        void initializationSuccessWithPlacements(String str, int i);

        @RetainMethodSignature
        void initializeOMSDK(String str, String str2, String str3);

        @RetainMethodSignature
        void setEnableAllLogs(boolean z);

        @RetainMethodSignature
        void setSharingEndpoint(String str);

        @RetainMethodSignature
        void updateJavascript(String str, int i, int i2);
    }

    Object a(j.k kVar);

    Object a(c cVar, ContinuationImpl continuationImpl);
}
