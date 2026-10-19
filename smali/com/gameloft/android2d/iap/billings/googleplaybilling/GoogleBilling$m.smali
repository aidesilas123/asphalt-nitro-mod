###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.m (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$m)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;


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

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

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

    move-result p1

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-nez p1, :cond_b4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ad

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v3, v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->H0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v3, v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->J0(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x7f1202aa

    const-string v5, "item_type"

    const-string v6, "content_id"

    if-nez v3, :cond_6b

    :try_start_3a
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v4, v4, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->V:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;

    invoke-virtual {v3, p2, v2, v4}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->b(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_68} :catch_69

    goto :goto_d

    :catch_69
    nop

    goto :goto_d

    :cond_6b
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->h()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "acknowledged"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_7d
    :try_start_7d
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v4, v4, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->W:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;

    invoke-virtual {v3, p2, v2, v4}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->a(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;)V
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_ab} :catch_69

    goto/16 :goto_d

    :cond_ad
    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_ba

    :cond_b4
    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_ba
    return-void
.end method
