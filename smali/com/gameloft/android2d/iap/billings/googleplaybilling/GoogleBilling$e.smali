###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.e (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$e)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->M0()V
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

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;)V
    .registers 5

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;->c()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void

    :cond_12
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$002(Z)Z

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$100(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "inapp"

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$100(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$100(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->K0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string v0, "subs"

    :cond_3c
    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$100(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v2, v2, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->X:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    invoke-virtual {p1, v1, v0, v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->h(Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;)V

    goto :goto_59

    :cond_4e
    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->Y:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    invoke-virtual {p1, v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    :goto_59
    return-void
.end method
