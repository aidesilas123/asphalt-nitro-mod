package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class AcknowledgePurchaseParams {
    private String a;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static final class Builder {
        private String a;

        private Builder() {
        }

        /* synthetic */ Builder(zza zzaVar) {
        }

        @NonNull
        public AcknowledgePurchaseParams a() {
            String str = this.a;
            if (str == null) {
                throw new IllegalArgumentException("Purchase token must be set");
            }
            AcknowledgePurchaseParams acknowledgePurchaseParams = new AcknowledgePurchaseParams(null);
            acknowledgePurchaseParams.a = str;
            return acknowledgePurchaseParams;
        }

        @NonNull
        public Builder b(@NonNull String str) {
            this.a = str;
            return this;
        }
    }

    private AcknowledgePurchaseParams() {
    }

    /* synthetic */ AcknowledgePurchaseParams(zzb zzbVar) {
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
