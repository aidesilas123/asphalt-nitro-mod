package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class SkuDetailsParams {
    private String a;
    private List b;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static class Builder {
        private String a;
        private List b;

        private Builder() {
        }

        /* synthetic */ Builder(zzbu zzbuVar) {
        }

        @NonNull
        public SkuDetailsParams a() {
            String str = this.a;
            if (str == null) {
                throw new IllegalArgumentException("SKU type must be set");
            }
            if (this.b == null) {
                throw new IllegalArgumentException("SKU list must be set");
            }
            SkuDetailsParams skuDetailsParams = new SkuDetailsParams();
            skuDetailsParams.a = str;
            skuDetailsParams.b = this.b;
            return skuDetailsParams;
        }

        @NonNull
        public Builder b(@NonNull List<String> list) {
            this.b = new ArrayList(list);
            return this;
        }

        @NonNull
        public Builder c(@NonNull String str) {
            this.a = str;
            return this;
        }
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String a() {
        return this.a;
    }

    @NonNull
    public List<String> b() {
        return this.b;
    }
}
