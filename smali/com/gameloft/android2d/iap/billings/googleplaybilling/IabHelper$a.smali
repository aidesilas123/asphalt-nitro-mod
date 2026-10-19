###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.a (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$a)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->k(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;

.field final synthetic b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/billingclient/api/BillingResult;)V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    const-string v1, "Billing service onBillingSetupFinished."

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v0

    if-nez v0, :cond_29

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    const-string v0, "Billing service onBillingSetupFinished. startConnection BillingResponseCode.OK"

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;

    if-eqz p1, :cond_23

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;

    const/4 v1, 0x0

    const-string v2, "Setup successful."

    invoke-direct {v0, v1, v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;->a(Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;)V

    :cond_23
    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->e:Z

    goto :goto_61

    :cond_29
    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Billing service onBillingSetupFinished. startConnection BillingResponseCode Fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " DBG message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;

    if-eqz v0, :cond_61

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    const-string v2, "Setup not successful."

    invoke-direct {v1, p1, v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;->a(Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;)V

    :cond_61
    :goto_61
    return-void
.end method

.method public onBillingServiceDisconnected()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    const-string v1, "[startSetup] Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->e:Z

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void
.end method
