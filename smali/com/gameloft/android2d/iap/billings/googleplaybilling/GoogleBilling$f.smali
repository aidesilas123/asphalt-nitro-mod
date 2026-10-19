###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.f (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$f)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$f;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;


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

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$f;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;)V
    .registers 5

    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$f;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->F0(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$f;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {p1, p3}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->L0(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_4e

    :cond_1c
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    const/4 p3, 0x5

    const/16 v0, 0xa

    if-ne p2, p3, :cond_30

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_4e

    :cond_30
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_43

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

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
