###### Class com.android.billingclient.api.zzaa (com.android.billingclient.api.zzaa)
.class final Lcom/android/billingclient/api/zzaa;
.super Landroid/os/ResultReceiver;
.source "com.android.billingclient:billing@@6.0.1"


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/InAppMessageResponseListener;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/billingclient/api/zzaa;->a:Lcom/android/billingclient/api/InAppMessageResponseListener;

    const-string v0, "BillingClient"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zze(Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/billingclient/api/InAppMessageResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/InAppMessageResponseListener;->a(Lcom/android/billingclient/api/InAppMessageResult;)V

    return-void
.end method
