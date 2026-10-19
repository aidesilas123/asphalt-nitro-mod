###### Class com.gameloft.android2d.iap.utils.ServerInfo.c (com.gameloft.android2d.iap.utils.ServerInfo$c)
.class Lcom/gameloft/android2d/iap/utils/ServerInfo$c;
.super Ljava/lang/Object;
.source "ServerInfo.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/utils/ServerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/utils/ServerInfo;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/ServerInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$c;->a:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 6
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

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$102(Z)Z

    goto :goto_2a

    :cond_b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/gameloft/android2d/iap/utils/h;->k0(Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V

    goto :goto_f

    :cond_27
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$102(Z)Z

    :goto_2a
    return-void
.end method
