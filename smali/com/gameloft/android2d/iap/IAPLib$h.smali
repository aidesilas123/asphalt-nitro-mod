###### Class com.gameloft.android2d.iap.IAPLib.h (com.gameloft.android2d.iap.IAPLib$h)
.class Lcom/gameloft/android2d/iap/IAPLib$h;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->GetListItemsRestore()V
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

    const-string v0, "google"

    invoke-static {v0}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->d()V

    return-void
.end method
