package com.hyprmx.android.sdk.api.data;

import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements Serializable {
    public g(String messageText, String exitText, String continueText) {
        Intrinsics.checkNotNullParameter(messageText, "messageText");
        Intrinsics.checkNotNullParameter(exitText, "exitText");
        Intrinsics.checkNotNullParameter(continueText, "continueText");
    }
}
