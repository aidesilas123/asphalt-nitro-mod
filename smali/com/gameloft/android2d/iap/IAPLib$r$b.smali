###### Class com.gameloft.android2d.iap.IAPLib.r.b (com.gameloft.android2d.iap.IAPLib$r$b)
.class Lcom/gameloft/android2d/iap/IAPLib$r$b;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$r;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$b;->a:Lcom/gameloft/android2d/iap/IAPLib$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p1, -0x64

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnPurchaseRequestCancelCallback()V

    return-void
.end method
