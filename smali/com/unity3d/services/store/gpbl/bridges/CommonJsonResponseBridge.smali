###### Class com.unity3d.services.store.gpbl.bridges.CommonJsonResponseBridge (com.unity3d.services.store.gpbl.bridges.CommonJsonResponseBridge)
.class public abstract Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;
.super Lcom/unity3d/services/core/reflection/GenericBridge;
.source "CommonJsonResponseBridge.java"

# interfaces
.implements Lcom/unity3d/services/store/gpbl/IBillingResponse;


# static fields
.field private static final getOriginalJsonMethodName:Ljava/lang/String; = "getOriginalJson"


# instance fields
.field private final _internalBridgeRef:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->appendCommonResponseMethods(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/unity3d/services/core/reflection/GenericBridge;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->_internalBridgeRef:Ljava/lang/Object;

    return-void
.end method

.method private static appendCommonResponseMethods(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge$1;

    invoke-direct {v0}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge$1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public getOriginalJson()Lorg/json/JSONObject;
    .registers 5

    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->_internalBridgeRef:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getOriginalJson"

    invoke-virtual {p0, v3, v0, v2}, Lcom/unity3d/services/core/reflection/GenericBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_23

    :catch_13
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Couldn\'t parse BillingResponse JSON : %s"

    invoke-static {v0, v2}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_23
    return-object v2
.end method

###### Class com.unity3d.services.store.gpbl.bridges.CommonJsonResponseBridge.AnonymousClass1 (com.unity3d.services.store.gpbl.bridges.CommonJsonResponseBridge$1)
.class Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge$1;
.super Ljava/util/HashMap;
.source "CommonJsonResponseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->appendCommonResponseMethods(Ljava/util/Map;)Ljava/util/Map;
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
    .registers 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "getOriginalJson"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
