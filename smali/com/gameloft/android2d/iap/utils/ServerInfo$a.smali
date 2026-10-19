###### Class com.gameloft.android2d.iap.utils.ServerInfo.a (com.gameloft.android2d.iap.utils.ServerInfo$a)
.class Lcom/gameloft/android2d/iap/utils/ServerInfo$a;
.super Ljava/lang/Object;
.source "ServerInfo.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/utils/ServerInfo;->h(Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/android/billingclient/api/SkuDetailsResponseListener;

.field final synthetic c:Lcom/android/billingclient/api/SkuDetailsResponseListener;

.field final synthetic d:Lcom/gameloft/android2d/iap/utils/ServerInfo;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/ServerInfo;Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .registers 5

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->d:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->b:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    iput-object p4, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->c:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;)V
    .registers 5

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;->c()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_e

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$002(Z)Z

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$102(Z)Z

    return-void

    :cond_e
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$202(Z)Z

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$300()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->b:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    const-string v2, "inapp"

    invoke-virtual {p1, v0, v2, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->i(Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$300()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->c:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    const-string v2, "subs"

    invoke-virtual {p1, v0, v2, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->i(Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method
