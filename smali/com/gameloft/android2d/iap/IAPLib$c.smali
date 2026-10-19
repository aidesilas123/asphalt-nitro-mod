###### Class com.gameloft.android2d.iap.IAPLib.c (com.gameloft.android2d.iap.IAPLib$c)
.class Lcom/gameloft/android2d/iap/IAPLib$c;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->showInputSimOperatorDialog()V
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
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/gameloft/android2d/iap/IAPLib;->access$1202(Lcom/gameloft/android2d/iap/IAPLib;Z)Z

    return-void
.end method
