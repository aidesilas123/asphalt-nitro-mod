###### Class com.gameloft.android2d.iap.IAPLib.r.c (com.gameloft.android2d.iap.IAPLib$r$c)
.class Lcom/gameloft/android2d/iap/IAPLib$r$c;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$c;->a:Lcom/gameloft/android2d/iap/IAPLib$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_20

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p2

    iget-object p2, p2, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    const/16 p2, 0xa

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p2, -0x64

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnPurchaseRequestCancelCallback()V

    :cond_20
    return p1
.end method
