###### Class com.gameloft.android2d.iap.IAPLib.a.DialogInterfaceOnClickListenerC0215a (com.gameloft.android2d.iap.IAPLib$a$a)
.class Lcom/gameloft/android2d/iap/IAPLib$a$a;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$a;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$a$a;->a:Lcom/gameloft/android2d/iap/IAPLib$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/16 p2, 0xa

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
