###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.g (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$g)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$g;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;


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

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$g;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    .registers 5

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v1

    if-nez v1, :cond_1c

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$g;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->F0(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$g;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->L0(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_4e

    :cond_1c
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    const/4 v0, 0x5

    const/16 v1, 0xa

    if-ne p2, v0, :cond_30

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_4e

    :cond_30
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_43

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_4e

    :cond_43
    const/4 p2, 0x3

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_4e
    return-void
.end method
