###### Class com.android.billingclient.api.zzo (com.android.billingclient.api.zzo)
.class public final synthetic Lcom/android/billingclient/api/zzo;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic b:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/billingclient/api/zzo;->a:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v1, p0, Lcom/android/billingclient/api/zzo;->b:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->s(Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void
.end method
