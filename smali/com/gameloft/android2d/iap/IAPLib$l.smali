###### Class com.gameloft.android2d.iap.IAPLib.l (com.gameloft.android2d.iap.IAPLib$l)
.class Lcom/gameloft/android2d/iap/IAPLib$l;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->showWarningPermissionDialog(Ljava/lang/String;)V
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

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p1, -0x10

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void
.end method
