###### Class com.mbridge.msdk.out.MBridgeSDKFactory (com.mbridge.msdk.out.MBridgeSDKFactory)
.class public Lcom/mbridge/msdk/out/MBridgeSDKFactory;
.super Ljava/lang/Object;
.source "MBridgeSDKFactory.java"


# static fields
.field private static volatile instance:Lcom/mbridge/msdk/system/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMBridgeSDK()Lcom/mbridge/msdk/system/a;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/out/MBridgeSDKFactory;->instance:Lcom/mbridge/msdk/system/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/mbridge/msdk/out/MBridgeSDKFactory;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/out/MBridgeSDKFactory;->instance:Lcom/mbridge/msdk/system/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/mbridge/msdk/system/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/system/a;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/out/MBridgeSDKFactory;->instance:Lcom/mbridge/msdk/system/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/mbridge/msdk/out/MBridgeSDKFactory;->instance:Lcom/mbridge/msdk/system/a;

    return-object v0
.end method
