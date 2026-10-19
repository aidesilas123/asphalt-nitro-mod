###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.d (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$d)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$d;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->g()V
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

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$d;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;)V
    .registers 4

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;->c()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    return-void

    :cond_b
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$002(Z)Z

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$d;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->Z:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    const-string v1, "subs"

    invoke-virtual {p1, v1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    return-void
.end method
