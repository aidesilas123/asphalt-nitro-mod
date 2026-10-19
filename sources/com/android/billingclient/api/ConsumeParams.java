package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class ConsumeParams {
    private String a;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static final class Builder {
        private String a;

        private Builder() {
        }

        /* synthetic */ Builder(zzau zzauVar) {
        }

        @NonNull
        public ConsumeParams a() {
            String str = this.a;
            if (str == null) {
                throw new IllegalArgumentException("Purchase token must be set");
            }
            ConsumeParams consumeParams = new ConsumeParams(null);
            consumeParams.a = str;
            return consumeParams;
        }

        @NonNull
        public Builder b(@NonNull String str) {
            this.a = str;
            return this;
        }
    }

    private ConsumeParams() {
    }

    /* synthetic */ ConsumeParams(zzav zzavVar) {
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String a() {
        return this.a;
    }
}
