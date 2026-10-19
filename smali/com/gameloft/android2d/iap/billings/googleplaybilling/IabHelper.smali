###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper)
.class public Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;,
        Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;,
        Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;,
        Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;,
        Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:Z

.field h:Ljava/lang/String;

.field i:Landroid/content/Context;

.field private j:Lcom/android/billingclient/api/BillingClient;

.field k:Ljava/lang/String;

.field l:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->b:Z

    const-string v1, "IAP-IabHelper"

    iput-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->e:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->f:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->g:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->k:Ljava/lang/String;

    const-string p1, "IAB helper created."

    invoke-virtual {p0, p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 4

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_32

    rsub-int v0, p0, -0x3e8

    if-ltz v0, :cond_1c

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    aget-object p0, v1, v0

    return-object p0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown IAB Helper Error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    if-ltz p0, :cond_3b

    array-length v1, v0

    if-lt p0, v1, :cond_38

    goto :goto_3b

    :cond_38
    aget-object p0, v0, p0

    return-object p0

    :cond_3b
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->h()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "acknowledged"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2c

    :cond_12
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->b(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->a()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$c;

    invoke-direct {v1, p0, p3, p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$c;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/billingclient/api/BillingClient;->a(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    :cond_2c
    return-void
.end method

.method public b(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;)V
    .registers 6

    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->b(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->a()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$d;

    invoke-direct {v1, p0, p3, p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$d;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/billingclient/api/BillingClient;->b(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method public c()V
    .registers 2

    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->e:Z

    return-void
.end method

.method public d(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->l:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;->a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->b:Z

    return-void
.end method

.method f(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method g(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;)V
    .registers 4

    iput-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->l:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    sget-object p2, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz p1, :cond_24

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->b(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->a()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    iget-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/android/billingclient/api/BillingClient;->c(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    goto :goto_31

    :cond_24
    const-string p1, "[purchaseRequest] error ITEM_UNAVAILABLE"

    invoke-virtual {p0, p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->f(Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 p1, 0x4

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_31
    return-void
.end method

.method h(Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->b(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->c(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->a()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;

    invoke-direct {v1, p0, p3, p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcom/android/billingclient/api/BillingClient;->e(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method public i(Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->b(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->b(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->c(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->a()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/android/billingclient/api/BillingClient;->e(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method public j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->b(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->a()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p1

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$e;

    invoke-direct {v1, p0, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$e;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->d(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public k(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;)V
    .registers 4

    iget-boolean v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->e:Z

    if-eqz v0, :cond_a

    const-string p1, "[startSetup] Service already connected"

    invoke-virtual {p0, p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->f(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "Starting in-app billing setup. startConnection"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->b()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->c(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->a()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;

    invoke-direct {v1, p0, p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$a;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->f(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

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

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.b (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$b)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->h(Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->c:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    iput-object p3, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 5
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

    move-result v0

    if-eqz v0, :cond_12

    iget-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    if-eqz p2, :cond_37

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;->b(I)V

    goto :goto_37

    :cond_12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_2e
    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->c:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$b;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    invoke-virtual {p1, p2, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->g(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;)V

    :cond_37
    :goto_37
    return-void
.end method

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

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.d (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$d)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$d;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->b(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;

.field final synthetic b:Lcom/android/billingclient/api/Purchase;

.field final synthetic c:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;Lcom/android/billingclient/api/Purchase;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$d;->c:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$d;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;

    iput-object p3, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$d;->b:Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$d;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$d;->b:Lcom/android/billingclient/api/Purchase;

    invoke-interface {v0, p1, p2, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;->a(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;)V

    :cond_9
    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.e (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$e)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$e;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

.field final synthetic b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$e;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;->a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_7
    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.f (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$f)
.class public interface abstract Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# virtual methods
.method public abstract a(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.g (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$g)
.class public interface abstract Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation


# virtual methods
.method public abstract a(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;)V
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.h (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$h)
.class public interface abstract Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "h"
.end annotation


# virtual methods
.method public abstract a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(I)V
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.i (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$i)
.class public interface abstract Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "i"
.end annotation


# virtual methods
.method public abstract a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.j (com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper$j)
.class public interface abstract Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "j"
.end annotation


# virtual methods
.method public abstract a(Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;)V
.end method
