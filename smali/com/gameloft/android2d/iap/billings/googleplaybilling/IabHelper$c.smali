###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.c (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$c)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$c;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->a(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;

.field final synthetic b:Lcom/android/billingclient/api/Purchase;

.field final synthetic c:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;Lcom/android/billingclient/api/Purchase;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$c;->c:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$c;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;

    iput-object p3, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$c;->b:Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/android/billingclient/api/BillingResult;)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$c;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$c;->b:Lcom/android/billingclient/api/Purchase;

    invoke-interface {v0, p1, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;->a(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    :cond_9
    return-void
.end method
