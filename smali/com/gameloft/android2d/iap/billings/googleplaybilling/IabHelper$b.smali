###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.b (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$b)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->h(Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->c:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    iput-object p3, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v0

    if-eqz v0, :cond_12

    iget-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    if-eqz p2, :cond_37

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;->b(I)V

    goto :goto_37

    :cond_12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_2e
    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->c:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    invoke-virtual {p1, p2, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->g(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;)V

    :cond_37
    :goto_37
    return-void
.end method
