###### Class com.mbridge.msdk.foundation.tools.s (com.mbridge.msdk.foundation.tools.s)
.class public final Lcom/mbridge/msdk/foundation/tools/s;
.super Ljava/lang/Object;
.source "NetManager.java"


# static fields
.field private static a:Landroid/net/ConnectivityManager;


# direct methods
.method public static declared-synchronized a()Landroid/net/ConnectivityManager;
    .registers 3

    const-class v0, Lcom/mbridge/msdk/foundation/tools/s;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/mbridge/msdk/foundation/tools/s;->a:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_30

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lcom/mbridge/msdk/foundation/tools/s;->a:Landroid/net/ConnectivityManager;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_26
    .catchall {:try_start_3 .. :try_end_23} :catchall_24

    goto :goto_30

    :catchall_24
    move-exception v1

    goto :goto_34

    :catch_26
    move-exception v1

    :try_start_27
    const-string v2, "NetManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    :goto_30
    sget-object v1, Lcom/mbridge/msdk/foundation/tools/s;->a:Landroid/net/ConnectivityManager;
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_24

    monitor-exit v0

    return-object v1

    :goto_34
    monitor-exit v0

    throw v1
.end method
