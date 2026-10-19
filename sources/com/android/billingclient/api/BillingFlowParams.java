package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public class BillingFlowParams {
    private boolean a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SubscriptionUpdateParams f147d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.google.android.gms.internal.play_billing.zzu f148e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList f149f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f150g;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static class Builder {
        private String a;
        private String b;
        private List c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ArrayList f151d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f152e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private SubscriptionUpdateParams.Builder f153f;

        private Builder() {
            SubscriptionUpdateParams.Builder builderNewBuilder = SubscriptionUpdateParams.newBuilder();
            SubscriptionUpdateParams.Builder.b(builderNewBuilder);
            this.f153f = builderNewBuilder;
        }

        /* synthetic */ Builder(zzak zzakVar) {
            SubscriptionUpdateParams.Builder builderNewBuilder = SubscriptionUpdateParams.newBuilder();
            SubscriptionUpdateParams.Builder.b(builderNewBuilder);
            this.f153f = builderNewBuilder;
        }

        @NonNull
        public BillingFlowParams a() {
            ArrayList arrayList = this.f151d;
            boolean z = true;
            boolean z2 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            List list = this.c;
            boolean z3 = (list == null || list.isEmpty()) ? false : true;
            if (!z2 && !z3) {
                throw new IllegalArgumentException("Details of the products must be provided.");
            }
            if (z2 && z3) {
                throw new IllegalArgumentException("Set SkuDetails or ProductDetailsParams, not both.");
            }
            zzap zzapVar = null;
            if (!z2) {
                ProductDetailsParams productDetailsParams = (ProductDetailsParams) this.c.get(0);
                for (int i = 0; i < this.c.size(); i++) {
                    ProductDetailsParams productDetailsParams2 = (ProductDetailsParams) this.c.get(i);
                    if (productDetailsParams2 == null) {
                        throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
                    }
                    if (i != 0 && !productDetailsParams2.a().b().equals(productDetailsParams.a().b()) && !productDetailsParams2.a().b().equals("play_pass_subs")) {
                        throw new IllegalArgumentException("All products should have same ProductType.");
                    }
                }
                String strC = productDetailsParams.a().c();
                for (ProductDetailsParams productDetailsParams3 : this.c) {
                    if (!productDetailsParams.a().b().equals("play_pass_subs") && !productDetailsParams3.a().b().equals("play_pass_subs") && !strC.equals(productDetailsParams3.a().c())) {
                        throw new IllegalArgumentException("All products must have the same package name.");
                    }
                }
            } else {
                if (this.f151d.contains(null)) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
                if (this.f151d.size() > 1) {
                    SkuDetails skuDetails = (SkuDetails) this.f151d.get(0);
                    String strE = skuDetails.e();
                    ArrayList arrayList2 = this.f151d;
                    int size = arrayList2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        SkuDetails skuDetails2 = (SkuDetails) arrayList2.get(i2);
                        if (!strE.equals("play_pass_subs") && !skuDetails2.e().equals("play_pass_subs") && !strE.equals(skuDetails2.e())) {
                            throw new IllegalArgumentException("SKUs should have the same type.");
                        }
                    }
                    String strI = skuDetails.i();
                    ArrayList arrayList3 = this.f151d;
                    int size2 = arrayList3.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        SkuDetails skuDetails3 = (SkuDetails) arrayList3.get(i3);
                        if (!strE.equals("play_pass_subs") && !skuDetails3.e().equals("play_pass_subs") && !strI.equals(skuDetails3.i())) {
                            throw new IllegalArgumentException("All SKUs must have the same package name.");
                        }
                    }
                }
            }
            BillingFlowParams billingFlowParams = new BillingFlowParams(zzapVar);
            if ((!z2 || ((SkuDetails) this.f151d.get(0)).i().isEmpty()) && (!z3 || ((ProductDetailsParams) this.c.get(0)).a().c().isEmpty())) {
                z = false;
            }
            billingFlowParams.a = z;
            billingFlowParams.b = this.a;
            billingFlowParams.c = this.b;
            billingFlowParams.f147d = this.f153f.a();
            ArrayList arrayList4 = this.f151d;
            billingFlowParams.f149f = arrayList4 != null ? new ArrayList(arrayList4) : new ArrayList();
            billingFlowParams.f150g = this.f152e;
            List list2 = this.c;
            billingFlowParams.f148e = list2 != null ? com.google.android.gms.internal.play_billing.zzu.zzj(list2) : com.google.android.gms.internal.play_billing.zzu.zzk();
            return billingFlowParams;
        }

        @NonNull
        @Deprecated
        public Builder b(@NonNull SkuDetails skuDetails) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(skuDetails);
            this.f151d = arrayList;
            return this;
        }
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static final class ProductDetailsParams {
        private final ProductDetails a;
        private final String b;

        /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
        public static class Builder {
            private Builder() {
            }

            /* synthetic */ Builder(zzal zzalVar) {
            }
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        @NonNull
        public final ProductDetails a() {
            return this.a;
        }

        @NonNull
        public final String b() {
            return this.b;
        }
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    public @interface ProrationMode {
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static class SubscriptionUpdateParams {
        private String a;
        private String b;
        private int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f154d = 0;

        /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
        public static class Builder {
            private String a;
            private String b;
            private boolean c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f155d = 0;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f156e = 0;

            private Builder() {
            }

            /* synthetic */ Builder(zzan zzanVar) {
            }

            static /* synthetic */ Builder b(Builder builder) {
                builder.c = true;
                return builder;
            }

            @NonNull
            public SubscriptionUpdateParams a() {
                zzao zzaoVar = null;
                boolean z = (TextUtils.isEmpty(this.a) && TextUtils.isEmpty(null)) ? false : true;
                boolean zIsEmpty = true ^ TextUtils.isEmpty(this.b);
                if (z && zIsEmpty) {
                    throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                }
                if (!this.c && !z && !zIsEmpty) {
                    throw new IllegalArgumentException("Old SKU purchase information(token/id) or original external transaction id must be provided.");
                }
                SubscriptionUpdateParams subscriptionUpdateParams = new SubscriptionUpdateParams(zzaoVar);
                subscriptionUpdateParams.a = this.a;
                subscriptionUpdateParams.c = this.f155d;
                subscriptionUpdateParams.f154d = this.f156e;
                subscriptionUpdateParams.b = this.b;
                return subscriptionUpdateParams;
            }
        }

        /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
        @Retention(RetentionPolicy.SOURCE)
        public @interface ReplacementMode {
        }

        private SubscriptionUpdateParams() {
        }

        /* synthetic */ SubscriptionUpdateParams(zzao zzaoVar) {
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        @Deprecated
        final int a() {
            return this.c;
        }

        final int b() {
            return this.f154d;
        }

        final String c() {
            return this.a;
        }

        final String d() {
            return this.b;
        }
    }

    private BillingFlowParams() {
    }

    /* synthetic */ BillingFlowParams(zzap zzapVar) {
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @Deprecated
    public final int a() {
        return this.f147d.a();
    }

    public final int b() {
        return this.f147d.b();
    }

    @Nullable
    public final String c() {
        return this.b;
    }

    @Nullable
    public final String d() {
        return this.c;
    }

    @Nullable
    public final String e() {
        return this.f147d.c();
    }

    @Nullable
    public final String f() {
        return this.f147d.d();
    }

    @NonNull
    public final ArrayList g() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f149f);
        return arrayList;
    }

    @NonNull
    public final List h() {
        return this.f148e;
    }

    public final boolean p() {
        return this.f150g;
    }

    final boolean q() {
        return (this.b == null && this.c == null && this.f147d.d() == null && this.f147d.a() == 0 && this.f147d.b() == 0 && !this.a && !this.f150g) ? false : true;
    }
}
