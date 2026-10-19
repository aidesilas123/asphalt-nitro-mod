package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class QueryPurchasesParams {
    private final String a;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static class Builder {
        private String a;

        private Builder() {
        }

        /* synthetic */ Builder(zzbs zzbsVar) {
        }

        @NonNull
        public QueryPurchasesParams a() {
            if (this.a != null) {
                return new QueryPurchasesParams(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }

        @NonNull
        public Builder b(@NonNull String str) {
            this.a = str;
            return this;
        }
    }

    /* synthetic */ QueryPurchasesParams(Builder builder, zzbt zzbtVar) {
        this.a = builder.a;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public final String a() {
        return this.a;
    }
}
