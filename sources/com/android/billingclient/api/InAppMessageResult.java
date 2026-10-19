package com.android.billingclient.api;

import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class InAppMessageResult {
    private final int a;

    @Nullable
    private final String b;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface InAppMessageResponseCode {
    }

    public InAppMessageResult(int i, @Nullable String str) {
        this.a = i;
        this.b = str;
    }
}
