###### Class com.android.billingclient.api.zzl (com.android.billingclient.api.zzl)
.class public final synthetic Lcom/android/billingclient/api/zzl;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic b:Lcom/android/billingclient/api/ProductDetailsResponseListener;


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/billingclient/api/zzl;->a:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v1, p0, Lcom/android/billingclient/api/zzl;->b:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->r(Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method
