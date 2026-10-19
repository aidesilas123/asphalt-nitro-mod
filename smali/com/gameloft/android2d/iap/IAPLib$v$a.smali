###### Class com.gameloft.android2d.iap.IAPLib.v.a (com.gameloft.android2d.iap.IAPLib$v$a)
.class Lcom/gameloft/android2d/iap/IAPLib$v$a;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$v;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$v;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$v;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$v$a;->a:Lcom/gameloft/android2d/iap/IAPLib$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$v$a;->a:Lcom/gameloft/android2d/iap/IAPLib$v;

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib$v;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/billings/a;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
