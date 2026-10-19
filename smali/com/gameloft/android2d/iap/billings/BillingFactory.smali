###### Class com.gameloft.android2d.iap.billings.BillingFactory (com.gameloft.android2d.iap.billings.BillingFactory)
.class public Lcom/gameloft/android2d/iap/billings/BillingFactory;
.super Ljava/lang/Object;
.source "BillingFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;
    .registers 2

    const v0, 0x7f1202b0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    new-instance p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;-><init>()V

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method
