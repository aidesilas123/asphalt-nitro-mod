package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class QueryProductDetailsParams {
    private final com.google.android.gms.internal.play_billing.zzu a;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static class Builder {
        private Builder() {
        }

        /* synthetic */ Builder(zzbm zzbmVar) {
        }
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static class Product {
        private final String a;
        private final String b;

        /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
        public static class Builder {
            private Builder() {
            }

            /* synthetic */ Builder(zzbn zzbnVar) {
            }
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        @NonNull
        public final String a() {
            return this.a;
        }

        @NonNull
        public final String b() {
            return this.b;
        }
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    public final com.google.android.gms.internal.play_billing.zzu a() {
        return this.a;
    }

    @NonNull
    public final String b() {
        return ((Product) this.a.get(0)).b();
    }
}
