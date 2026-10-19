###### Class com.gameloft.android2d.iap.IAPLib.t (com.gameloft.android2d.iap.IAPLib$t)
.class Lcom/gameloft/android2d/iap/IAPLib$t;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->SendRequestExec(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:J


# direct methods
.method constructor <init>(Ljava/lang/String;IJ)V
    .registers 5

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    iput p2, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iput-wide p3, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    iget v1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/h;->h()I

    move-result v2

    invoke-virtual {v1, v0}, Lcom/gameloft/android2d/iap/billings/a;->i(Lcom/gameloft/android2d/iap/utils/g;)I

    move-result v3

    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_42

    return-void

    :cond_42
    const/16 v4, 0x193

    if-eq v3, v4, :cond_157

    const/16 v4, 0x1ad

    if-ne v3, v4, :cond_4c

    goto/16 :goto_157

    :cond_4c
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/IAPLib;->access$702(Lcom/gameloft/android2d/iap/IAPLib;I)I

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/IAPLib;->access$802(Lcom/gameloft/android2d/iap/IAPLib;Ljava/lang/String;)Ljava/lang/String;

    sget-object v3, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v5

    invoke-static {v5}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v4

    invoke-static {v4}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->A()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPrice(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastProfileID(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastCurrency(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->c:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_9e

    goto :goto_a6

    :cond_9e
    iget v3, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v4, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/IAPLib;->getVirtualCurrency(ILjava/lang/String;)J

    move-result-wide v3

    :goto_a6
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastVirtualCurrency(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->e()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastOfflineItems([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->K()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveVerificationInformation(Lcom/gameloft/android2d/iap/billings/a;)V

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastFlowType(I)V

    iget v2, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v3, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/IAPLib;->getPackOrderPurchased(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPackOrderPurchased(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->getItemJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->c()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    iget v2, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v3, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/IAPLib;->getOldVirtualCurrency(ILjava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x36

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->a0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android2d/iap/billings/a;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1202cd

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    iget v0, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->GetBundleItemInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPurchasedBundleInfo(Ljava/lang/String;)V

    goto :goto_153

    :cond_126
    iget-object v0, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1202d0

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    iget v0, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->GetSubscriptionItemInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPurchasedSubscriptionItemInfo(Ljava/lang/String;)V

    iget v0, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->GetSubscriptionRewardItemInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPurchasedSubscriptionRewardItemInfo(Ljava/lang/String;)V

    :cond_153
    :goto_153
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_157
    :goto_157
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetLimitationMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->showIAPLimitationWarning(Ljava/lang/String;)V

    return-void
.end method
