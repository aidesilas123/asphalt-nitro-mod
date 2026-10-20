###### Class com.unity3d.services.core.connectivity.ConnectivityMonitor (com.unity3d.services.core.connectivity.ConnectivityMonitor)
.class public Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;
.super Ljava/lang/Object;
.source "ConnectivityMonitor.java"


# static fields
.field private static _connected:I = -0x1

.field private static _listeners:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/unity3d/services/core/connectivity/IConnectivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _listening:Z = false

.field private static _networkType:I = -0x1

.field private static _webappMonitoring:Z

.field private static _wifi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/unity3d/services/core/connectivity/IConnectivityListener;)V
    .registers 2

    sget-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/Set;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/Set;

    :cond_f
    sget-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    return-void
.end method

.method public static connected()V
    .registers 3

    sget v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_connected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const-string v0, "Unity Ads connectivity change: connected"

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->initConnectionStatus()V

    sget-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/Set;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/core/connectivity/IConnectivityListener;

    invoke-interface {v1}, Lcom/unity3d/services/core/connectivity/IConnectivityListener;->onConnected()V

    goto :goto_16

    :cond_26
    sget-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    sget-boolean v1, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_wifi:Z

    sget v2, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_networkType:I

    invoke-static {v0, v1, v2}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/services/core/connectivity/ConnectivityEvent;ZI)V

    return-void
.end method

.method public static connectionStatusChanged()V
    .registers 4

    sget v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_connected:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v2, -0x1

    :try_start_33
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_37} :catch_38

    goto :goto_3d

    :catch_38
    const-string v0, "Unity Ads was not able to get current network type due to missing permission"

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    :goto_3d
    sget-boolean v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_wifi:Z

    if-ne v1, v0, :cond_48

    sget v3, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_networkType:I

    if-eq v2, v3, :cond_47

    if-eqz v0, :cond_48

    :cond_47
    return-void

    :cond_48
    sput-boolean v1, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_wifi:Z

    sput v2, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_networkType:I

    const-string v0, "Unity Ads connectivity change: network change"

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    invoke-static {v0, v1, v2}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/services/core/connectivity/ConnectivityEvent;ZI)V

    :cond_56
    return-void
.end method

.method public static disconnected()V
    .registers 3

    sget v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_connected:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    sput v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_connected:I

    const-string v1, "Unity Ads connectivity change: disconnected"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    sget-object v1, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/Set;

    if-eqz v1, :cond_25

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/core/connectivity/IConnectivityListener;

    invoke-interface {v2}, Lcom/unity3d/services/core/connectivity/IConnectivityListener;->onDisconnected()V

    goto :goto_15

    :cond_25
    sget-object v1, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->DISCONNECTED:Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    invoke-static {v1, v0, v0}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/services/core/connectivity/ConnectivityEvent;ZI)V

    return-void
.end method

.method private static initConnectionStatus()V
    .registers 3

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    sput v2, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_connected:I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_26

    const/4 v1, 0x1

    :cond_26
    sput-boolean v1, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_wifi:Z

    if-nez v1, :cond_45

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    sput v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_networkType:I
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_3c} :catch_3d

    goto :goto_45

    :catch_3d
    const-string v0, "Unity Ads was not able to get current network type due to missing permission"

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    goto :goto_45

    :cond_43
    sput v1, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_connected:I

    :cond_45
    :goto_45
    return-void
.end method

.method public static removeListener(Lcom/unity3d/services/core/connectivity/IConnectivityListener;)V
    .registers 2

    sget-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/Set;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    return-void
.end method

.method private static sendToWebview(Lcom/unity3d/services/core/connectivity/ConnectivityEvent;ZI)V
    .registers 8

    sget-boolean v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_8b

    :cond_13
    sget-object v1, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$services$core$connectivity$ConnectivityEvent:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_5e

    if-eq p0, v1, :cond_54

    const/4 v4, 0x3

    if-eq p0, v4, :cond_26

    goto :goto_8b

    :cond_26
    if-eqz p1, :cond_3e

    sget-object p0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object p2, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, p2, v1}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_3e
    sget-object p0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v4, v1}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_54
    sget-object p0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object p1, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->DISCONNECTED:Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, p2}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_5e
    if-eqz p1, :cond_76

    sget-object p0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object p2, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, p2, v1}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_76
    sget-object p0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v4, v1}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_8b
    :goto_8b
    return-void
.end method

.method public static setConnectionMonitoring(Z)V
    .registers 1

    sput-boolean p0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    return-void
.end method

.method private static startListening()V
    .registers 2

    sget-boolean v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listening:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listening:Z

    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->initConnectionStatus()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_15

    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityChangeReceiver;->register()V

    goto :goto_18

    :cond_15
    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityNetworkCallback;->register()V

    :goto_18
    return-void
.end method

.method public static stopAll()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/Set;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    return-void
.end method

.method private static stopListening()V
    .registers 2

    sget-boolean v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listening:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listening:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_12

    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityChangeReceiver;->unregister()V

    goto :goto_15

    :cond_12
    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityNetworkCallback;->unregister()V

    :goto_15
    return-void
.end method

.method private static updateListeningStatus()V
    .registers 1

    sget-boolean v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    if-nez v0, :cond_13

    sget-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/Set;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->stopListening()V

    goto :goto_16

    :cond_13
    :goto_13
    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->startListening()V

    :goto_16
    return-void
.end method
