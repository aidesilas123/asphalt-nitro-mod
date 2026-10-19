###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.e (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$e)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$e;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

.field final synthetic b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$e;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;->a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_7
    return-void
.end method
