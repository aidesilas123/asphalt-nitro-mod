###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.h (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$h)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-nez v0, :cond_ac

    if-eqz p2, :cond_ac

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_dd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()I

    move-result v3

    if-ne v3, v1, :cond_9b

    iget-object v3, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v3, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->J0(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x7f1202aa

    const-string v5, "item_type"

    const-string v6, "content_id"

    if-nez v3, :cond_6b

    :try_start_3a
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v4, v4, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->V:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;

    invoke-virtual {v3, p2, v0, v4}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->b(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;)V

    goto :goto_e

    :catch_69
    nop

    goto :goto_e

    :cond_6b
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v4, v4, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->W:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;

    invoke-virtual {v3, p2, v0, v4}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->a(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;)V
    :try_end_99
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_99} :catch_69

    goto/16 :goto_e

    :cond_9b
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p2, -0x3f3

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto/16 :goto_e

    :cond_ac
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    if-ne p2, v1, :cond_bd

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_dd

    :cond_bd
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_d3

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    new-instance p2, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h$a;

    invoke-direct {p2, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h$a;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;)V

    const-string v0, "inapp"

    invoke-virtual {p1, v0, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    goto :goto_dd

    :cond_d3
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :cond_dd
    :goto_dd
    return-void
.end method

.method public b(I)V
    .registers 3

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void
.end method
