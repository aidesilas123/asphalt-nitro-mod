###### Class com.unity3d.services.ads.gmascar.bridges.InitializeListenerBridge (com.unity3d.services.ads.gmascar.bridges.InitializeListenerBridge)
.class public Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;
.super Lcom/unity3d/services/core/reflection/GenericBridge;
.source "InitializeListenerBridge.java"


# static fields
.field private static final initializationCompleteMethodName:Ljava/lang/String; = "onInitializationComplete"


# instance fields
.field private _initializationStatusListener:Lcom/unity3d/services/ads/gmascar/listeners/IInitializationStatusListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge$1;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/reflection/GenericBridge;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;)Lcom/unity3d/services/ads/gmascar/listeners/IInitializationStatusListener;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;->_initializationStatusListener:Lcom/unity3d/services/ads/gmascar/listeners/IInitializationStatusListener;

    return-object p0
.end method


# virtual methods
.method public createInitializeListenerProxy()Ljava/lang/Object;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/services/core/reflection/GenericBridge;->classForName()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/unity3d/services/core/reflection/GenericBridge;->classForName()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge$2;

    invoke-direct {v2, p0}, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge$2;-><init>(Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    const-string v0, "ERROR: Could not create InitializeCompletionListener"

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.ads.initialization.OnInitializationCompleteListener"

    return-object v0
.end method

.method public setStatusListener(Lcom/unity3d/services/ads/gmascar/listeners/IInitializationStatusListener;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;->_initializationStatusListener:Lcom/unity3d/services/ads/gmascar/listeners/IInitializationStatusListener;

    return-void
.end method

###### Class com.unity3d.services.ads.gmascar.bridges.InitializeListenerBridge.AnonymousClass1 (com.unity3d.services.ads.gmascar.bridges.InitializeListenerBridge$1)
.class Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge$1;
.super Ljava/util/HashMap;
.source "InitializeListenerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/Error;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_5
    const-string v2, "onInitializationComplete"

    new-array v3, v1, [Ljava/lang/Class;

    const-string v4, "com.google.android.gms.ads.initialization.InitializationStatus"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_23

    :catch_15
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Could not find class \"com.google.android.gms.ads.initialization.InitializationStatus\" %s"

    invoke-static {v0, v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_23
    return-void
.end method

###### Class com.unity3d.services.ads.gmascar.bridges.InitializeListenerBridge.AnonymousClass2 (com.unity3d.services.ads.gmascar.bridges.InitializeListenerBridge$2)
.class Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge$2;
.super Ljava/lang/Object;
.source "InitializeListenerBridge.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;->createInitializeListenerProxy()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;


# direct methods
.method constructor <init>(Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge$2;->this$0:Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onInitializationComplete"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge$2;->this$0:Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;

    invoke-static {p1}, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;->access$000(Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;)Lcom/unity3d/services/ads/gmascar/listeners/IInitializationStatusListener;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge$2;->this$0:Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;

    invoke-static {p1}, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;->access$000(Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;)Lcom/unity3d/services/ads/gmascar/listeners/IInitializationStatusListener;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p3, p2

    invoke-interface {p1, p2}, Lcom/unity3d/services/ads/gmascar/listeners/IInitializationStatusListener;->onInitializationComplete(Ljava/lang/Object;)V

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method
