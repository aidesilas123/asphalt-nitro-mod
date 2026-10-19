package com.hyprmx.android.sdk.utility;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;

/* JADX INFO: loaded from: classes2.dex */
public interface b {
    @RetainMethodSignature
    void debug(String str);

    @RetainMethodSignature
    void error(String str);

    @RetainMethodSignature
    void log(String str);

    @RetainMethodSignature
    String messages();

    @RetainMethodSignature
    void warn(String str);
}
