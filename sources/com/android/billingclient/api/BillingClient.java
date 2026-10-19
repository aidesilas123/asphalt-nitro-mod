package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BillingClient {

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface BillingResponseCode {
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @AnyThread
    public static final class Builder {
        private volatile zzbe a;
        private final Context b;
        private volatile PurchasesUpdatedListener c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private volatile AlternativeBillingListener f142d;

        /* synthetic */ Builder(Context context, zzi zziVar) {
            this.b = context;
        }

        @NonNull
        public BillingClient a() {
            if (this.b == null) {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
            if (this.c == null) {
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            }
            PurchasesUpdatedListener purchasesUpdatedListener = this.c;
            if (this.a == null) {
                throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
            }
            if (this.c != null || this.f142d == null) {
                return this.c != null ? new BillingClientImpl(null, this.a, this.b, this.c, this.f142d, null) : new BillingClientImpl(null, this.a, this.b, null, null);
            }
            throw new IllegalArgumentException("Please provide a valid listener for Google Play Billing purchases updates when enabling Alternative Billing.");
        }

        @NonNull
        public Builder b() {
            zzbc zzbcVar = new zzbc(null);
            zzbcVar.a();
            this.a = zzbcVar.b();
            return this;
        }

        @NonNull
        public Builder c(@NonNull PurchasesUpdatedListener purchasesUpdatedListener) {
            this.c = purchasesUpdatedListener;
            return this;
        }
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ConnectionState {
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface FeatureType {
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ProductType {
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    public @interface SkuType {
    }

    @NonNull
    @AnyThread
    public static Builder newBuilder(@NonNull Context context) {
        return new Builder(context, null);
    }

    @AnyThread
    public abstract void a(@NonNull AcknowledgePurchaseParams acknowledgePurchaseParams, @NonNull AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener);

    @AnyThread
    public abstract void b(@NonNull ConsumeParams consumeParams, @NonNull ConsumeResponseListener consumeResponseListener);

    @NonNull
    @UiThread
    public abstract BillingResult c(@NonNull Activity activity, @NonNull BillingFlowParams billingFlowParams);

    @AnyThread
    public abstract void d(@NonNull QueryPurchasesParams queryPurchasesParams, @NonNull PurchasesResponseListener purchasesResponseListener);

    @AnyThread
    @Deprecated
    public abstract void e(@NonNull SkuDetailsParams skuDetailsParams, @NonNull SkuDetailsResponseListener skuDetailsResponseListener);

    @AnyThread
    public abstract void f(@NonNull BillingClientStateListener billingClientStateListener);
}
