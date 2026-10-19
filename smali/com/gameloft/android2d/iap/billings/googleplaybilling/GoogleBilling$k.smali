###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.k (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$k)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;
.super Lcom/gameloft/android2d/iap/utils/d;
.source "GoogleBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iput-boolean p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->a:Z

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "a5"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v1, :cond_b3

    const-string v0, "a4"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_86

    const-string v4, "FAILURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    const/16 v2, 0x27

    :try_start_31
    invoke-static {v0, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->verifyRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d3

    const-string v0, "SUCCESS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getSku()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->J0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/16 v1, 0x35

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5d

    goto :goto_71

    :cond_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_71
    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    :cond_74
    iget-boolean v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->a:Z

    if-eqz v0, :cond_7b

    const-string v0, "1"

    goto :goto_7d

    :cond_7b
    const-string v0, "0"

    :goto_7d
    const/16 v1, 0x3b

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_85} :catch_d3

    return-void

    :cond_86
    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$300()I

    move-result p1

    if-lez p1, :cond_9d

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$310()I

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$a;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_d3

    :cond_9d
    const-string p1, ""

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveOrderID(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveNotifyID(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveDevPayload(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->savePendingTransactionResult(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 p1, -0x5

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_d3

    :cond_b3
    const-string v0, "a6"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->hasConnectivity()Z

    move-result p1

    if-eqz p1, :cond_cc

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$b;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$b;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_d3

    :cond_cc
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 p1, -0x1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :catch_d3
    :cond_d3
    :goto_d3
    return-void
.end method
