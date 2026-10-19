package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class InAppMessageParams {

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static final class Builder {
        private final Set a = new HashSet();
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface InAppMessageCategoryId {
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder();
    }
}
