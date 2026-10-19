###### Class com.gameloft.android2d.iap.IAPLib.k (com.gameloft.android2d.iap.IAPLib$k)
.class Lcom/gameloft/android2d/iap/IAPLib$k;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->CheckPendingVerification()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
