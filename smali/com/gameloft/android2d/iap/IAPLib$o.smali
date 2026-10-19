###### Class com.gameloft.android2d.iap.IAPLib.o (com.gameloft.android2d.iap.IAPLib$o)
.class Lcom/gameloft/android2d/iap/IAPLib$o;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->CheckRedeem()V
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
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$1302(Z)Z

    const v0, 0x7f1202b0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->a()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
