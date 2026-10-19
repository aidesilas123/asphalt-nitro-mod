###### Class com.gameloft.android2d.iap.IAPLib.y (com.gameloft.android2d.iap.IAPLib$y)
.class Lcom/gameloft/android2d/iap/IAPLib$y;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/IAPLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "y"
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib;


# direct methods
.method private constructor <init>(Lcom/gameloft/android2d/iap/IAPLib;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$y;->a:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gameloft/android2d/iap/IAPLib;Lcom/gameloft/android2d/iap/IAPLib$k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gameloft/android2d/iap/IAPLib$y;-><init>(Lcom/gameloft/android2d/iap/IAPLib;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, -0x6

    const/16 v1, 0xb

    :try_start_3
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->hasConnectivity()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_67

    :cond_a
    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202bc

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202ba

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202b8

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202b9

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202ca

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202bd

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    :cond_64
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->downloadHKServices()V

    :cond_67
    :goto_67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/IAPLib;->access$002(J)J

    iget-object v2, p0, Lcom/gameloft/android2d/iap/IAPLib$y;->a:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/android2d/iap/IAPLib$y;->a:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->access$100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    iget-object v2, p0, Lcom/gameloft/android2d/iap/IAPLib$y;->a:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/h;->I()Z

    move-result v2

    if-nez v2, :cond_b0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetPromoEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetServerTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->computeCountDownTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/IAPLib;->access$302(J)J

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->resumeLastModuleStateAfterRefreshFeed()V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/gameloft/android2d/iap/IAPLib$y$a;

    invoke-direct {v3, p0}, Lcom/gameloft/android2d/iap/IAPLib$y$a;-><init>(Lcom/gameloft/android2d/iap/IAPLib$y;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_c5

    :cond_b0
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v2, -0x7

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_c5

    :cond_b8
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_be} :catch_bf

    goto :goto_c5

    :catch_bf
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_c5
    return-void
.end method
