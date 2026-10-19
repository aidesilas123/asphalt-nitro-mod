###### Class com.gameloft.android2d.iap.IAPLib.q (com.gameloft.android2d.iap.IAPLib$q)
.class Lcom/gameloft/android2d/iap/IAPLib$q;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->GetFeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->M:Z

    :goto_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/gameloft/android2d/iap/IAPLib;->R:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1b7740

    cmp-long v5, v1, v3

    if-lez v5, :cond_50

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->hasConnectivity()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->access$600(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2f

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->access$600(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_50

    :cond_2f
    sget-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->S:Z

    if-nez v1, :cond_50

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->S:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gameloft/android2d/iap/IAPLib$y;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/gameloft/android2d/iap/IAPLib$y;-><init>(Lcom/gameloft/android2d/iap/IAPLib;Lcom/gameloft/android2d/iap/IAPLib$k;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/gameloft/android2d/iap/IAPLib;->R:J

    :cond_50
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_55} :catch_56

    goto :goto_3

    :catch_56
    return-void
.end method
