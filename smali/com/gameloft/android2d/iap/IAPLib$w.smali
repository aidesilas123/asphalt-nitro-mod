###### Class com.gameloft.android2d.iap.IAPLib.w (com.gameloft.android2d.iap.IAPLib$w)
.class Lcom/gameloft/android2d/iap/IAPLib$w;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->redeemCode()V
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
    .registers 2

    :cond_0
    :goto_0
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
