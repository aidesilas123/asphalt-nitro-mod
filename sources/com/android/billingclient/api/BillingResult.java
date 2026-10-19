package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class BillingResult {
    private int a;
    private String b;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static class Builder {
        private int a;
        private String b = "";

        private Builder() {
        }

        /* synthetic */ Builder(zzas zzasVar) {
        }

        @NonNull
        public BillingResult a() {
            BillingResult billingResult = new BillingResult();
            billingResult.a = this.a;
            billingResult.b = this.b;
            return billingResult;
        }

        @NonNull
        public Builder b(@NonNull String str) {
            this.b = str;
            return this;
        }

        @NonNull
        public Builder c(int i) {
            this.a = i;
            return this;
        }
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String a() {
        return this.b;
    }

    public int b() {
        return this.a;
    }

    @NonNull
    public String toString() {
        return "Response Code: " + com.google.android.gms.internal.play_billing.zzb.zzg(this.a) + ", Debug Message: " + this.b;
    }
}
