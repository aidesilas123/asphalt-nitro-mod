###### Class com.unity3d.services.store.StoreMonitor (com.unity3d.services.store.StoreMonitor)
.class public Lcom/unity3d/services/store/StoreMonitor;
.super Ljava/lang/Object;
.source "StoreMonitor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static _isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static _lifecycleListener:Lcom/unity3d/services/store/core/StoreLifecycleListener;

.field private static _storeBilling:Lcom/unity3d/services/store/gpbl/StoreBilling;

.field private static _storeExceptionHandler:Lcom/unity3d/services/store/core/StoreExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/unity3d/services/store/StoreMonitor;->_isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static getPurchaseHistory(ILjava/lang/String;I)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_storeBilling:Lcom/unity3d/services/store/gpbl/StoreBilling;

    new-instance v1, Lcom/unity3d/services/store/StoreMonitor$3;

    invoke-direct {v1, p0}, Lcom/unity3d/services/store/StoreMonitor$3;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/unity3d/services/store/gpbl/StoreBilling;->getPurchaseHistory(Ljava/lang/String;ILcom/unity3d/services/store/listeners/IPurchaseHistoryResponseListener;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception p1

    sget-object p2, Lcom/unity3d/services/store/StoreMonitor;->_storeExceptionHandler:Lcom/unity3d/services/store/core/StoreExceptionHandler;

    sget-object v0, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_LIST_REQUEST_ERROR:Lcom/unity3d/services/store/StoreEvent;

    invoke-virtual {p2, v0, p0, p1}, Lcom/unity3d/services/store/core/StoreExceptionHandler;->handleStoreException(Lcom/unity3d/services/store/StoreEvent;ILjava/lang/Exception;)V

    :goto_13
    return-void
.end method

.method public static getPurchases(ILjava/lang/String;)V
    .registers 7

    :try_start_0
    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_storeBilling:Lcom/unity3d/services/store/gpbl/StoreBilling;

    new-instance v1, Lcom/unity3d/services/store/listeners/PurchasesResponseListener;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/store/StoreEvent;->PURCHASES_REQUEST_RESULT:Lcom/unity3d/services/store/StoreEvent;

    sget-object v4, Lcom/unity3d/services/store/StoreEvent;->PURCHASES_REQUEST_ERROR:Lcom/unity3d/services/store/StoreEvent;

    invoke-direct {v1, v2, v3, v4}, Lcom/unity3d/services/store/listeners/PurchasesResponseListener;-><init>(Ljava/lang/Integer;Lcom/unity3d/services/store/StoreEvent;Lcom/unity3d/services/store/StoreEvent;)V

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/services/store/gpbl/StoreBilling;->getPurchases(Ljava/lang/String;Lcom/unity3d/services/store/listeners/IPurchasesResponseListener;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception p1

    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_storeExceptionHandler:Lcom/unity3d/services/store/core/StoreExceptionHandler;

    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->PURCHASES_REQUEST_ERROR:Lcom/unity3d/services/store/StoreEvent;

    invoke-virtual {v0, v1, p0, p1}, Lcom/unity3d/services/store/core/StoreExceptionHandler;->handleStoreException(Lcom/unity3d/services/store/StoreEvent;ILjava/lang/Exception;)V

    :goto_1b
    return-void
.end method

.method public static getSkuDetails(ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_storeBilling:Lcom/unity3d/services/store/gpbl/StoreBilling;

    new-instance v1, Lcom/unity3d/services/store/StoreMonitor$4;

    invoke-direct {v1, p0}, Lcom/unity3d/services/store/StoreMonitor$4;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/unity3d/services/store/gpbl/StoreBilling;->getSkuDetails(Ljava/lang/String;Ljava/util/ArrayList;Lcom/unity3d/services/store/listeners/ISkuDetailsResponseListener;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception p1

    sget-object p2, Lcom/unity3d/services/store/StoreMonitor;->_storeExceptionHandler:Lcom/unity3d/services/store/core/StoreExceptionHandler;

    sget-object v0, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_LIST_REQUEST_ERROR:Lcom/unity3d/services/store/StoreEvent;

    invoke-virtual {p2, v0, p0, p1}, Lcom/unity3d/services/store/core/StoreExceptionHandler;->handleStoreException(Lcom/unity3d/services/store/StoreEvent;ILjava/lang/Exception;)V

    :goto_13
    return-void
.end method

.method public static initialize(Lcom/unity3d/services/store/core/StoreExceptionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p0

    sget-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->INITIALIZATION_REQUEST_RESULT:Lcom/unity3d/services/store/StoreEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;->OK:Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    invoke-virtual {v4}, Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;->getResponseCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void

    :cond_24
    sput-object p0, Lcom/unity3d/services/store/StoreMonitor;->_storeExceptionHandler:Lcom/unity3d/services/store/core/StoreExceptionHandler;

    new-instance p0, Lcom/unity3d/services/store/gpbl/StoreBilling;

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/unity3d/services/store/StoreMonitor$1;

    invoke-direct {v1}, Lcom/unity3d/services/store/StoreMonitor$1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/unity3d/services/store/gpbl/StoreBilling;-><init>(Landroid/content/Context;Lcom/unity3d/services/store/listeners/IPurchaseUpdatedResponseListener;)V

    sput-object p0, Lcom/unity3d/services/store/StoreMonitor;->_storeBilling:Lcom/unity3d/services/store/gpbl/StoreBilling;

    new-instance v0, Lcom/unity3d/services/store/StoreMonitor$2;

    invoke-direct {v0}, Lcom/unity3d/services/store/StoreMonitor$2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/unity3d/services/store/gpbl/StoreBilling;->initialize(Lcom/unity3d/services/store/gpbl/IBillingClientStateListener;)V

    return-void
.end method

.method public static isFeatureSupported(ILjava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Lcom/unity3d/services/store/StoreMonitor;->_storeBilling:Lcom/unity3d/services/store/gpbl/StoreBilling;

    invoke-virtual {v1, p1}, Lcom/unity3d/services/store/gpbl/StoreBilling;->isFeatureSupported(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->IS_FEATURE_SUPPORTED_REQUEST_RESULT:Lcom/unity3d/services/store/StoreEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception p1

    sget-object v1, Lcom/unity3d/services/store/StoreMonitor;->_storeExceptionHandler:Lcom/unity3d/services/store/core/StoreExceptionHandler;

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->IS_FEATURE_SUPPORTED_REQUEST_ERROR:Lcom/unity3d/services/store/StoreEvent;

    invoke-virtual {v1, v2, p0, p1}, Lcom/unity3d/services/store/core/StoreExceptionHandler;->handleStoreException(Lcom/unity3d/services/store/StoreEvent;ILjava/lang/Exception;)V

    :goto_2c
    return v0
.end method

.method public static isInitialized()Z
    .registers 1

    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static startPurchaseTracking(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/core/StoreLifecycleListener;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/unity3d/services/store/StoreMonitor;->stopPurchaseTracking()V

    :cond_7
    new-instance v0, Lcom/unity3d/services/store/core/StoreLifecycleListener;

    sget-object v1, Lcom/unity3d/services/store/StoreMonitor;->_storeBilling:Lcom/unity3d/services/store/gpbl/StoreBilling;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/services/store/core/StoreLifecycleListener;-><init>(Ljava/util/ArrayList;Lcom/unity3d/services/store/gpbl/StoreBilling;)V

    sput-object v0, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/core/StoreLifecycleListener;

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object p0

    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/core/StoreLifecycleListener;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static stopPurchaseTracking()V
    .registers 2

    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/core/StoreLifecycleListener;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/core/StoreLifecycleListener;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/core/StoreLifecycleListener;

    :cond_10
    return-void
.end method
