###### Class com.gameloft.android2d.iap.IAPLib.p (com.gameloft.android2d.iap.IAPLib$p)
.class Lcom/gameloft/android2d/iap/IAPLib$p;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->GetSubscriptionStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->g()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    :goto_1e
    return-void
.end method
