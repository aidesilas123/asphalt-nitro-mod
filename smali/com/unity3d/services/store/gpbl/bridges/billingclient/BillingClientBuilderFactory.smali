###### Class com.unity3d.services.store.gpbl.bridges.billingclient.BillingClientBuilderFactory (com.unity3d.services.store.gpbl.bridges.billingclient.BillingClientBuilderFactory)
.class public Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientBuilderFactory;
.super Ljava/lang/Object;
.source "BillingClientBuilderFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBillingClientBuilder(Landroid/content/Context;)Lcom/unity3d/services/store/gpbl/bridges/billingclient/IBillingClientBuilderBridge;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-static {}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v4/BillingClientBridge;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v4/BillingClientBridge;->newBuilder(Landroid/content/Context;)Lcom/unity3d/services/store/gpbl/bridges/billingclient/v4/BillingClientBridge$BuilderBridge;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v3/BillingClientBridge;->newBuilder(Landroid/content/Context;)Lcom/unity3d/services/store/gpbl/bridges/billingclient/v3/BillingClientBridge$BuilderBridge;

    move-result-object p0

    return-object p0
.end method
