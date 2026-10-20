###### Class com.fyber.inneractive.sdk.cache.session.b (com.fyber.inneractive.sdk.cache.session.b)
.class public Lcom/fyber/inneractive/sdk/cache/session/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/cache/session/d;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/cache/session/d;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/cache/session/b;->a:Lcom/fyber/inneractive/sdk/cache/session/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string v0, "session_details.json"

    sget-object v1, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {v1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_23

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v6, v5, [B

    invoke-virtual {v4, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-ne v7, v5, :cond_1e

    new-instance v5, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_24

    goto :goto_1f

    :cond_1e
    move-object v5, v3

    :goto_1f
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/io/Closeable;)V

    goto :goto_32

    :catchall_23
    move-object v4, v3

    :catchall_24
    :try_start_24
    const-string v5, "readFileFromContext failed reading %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_62

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/io/Closeable;)V

    move-object v5, v3

    :goto_32
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5c

    :try_start_38
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_3f

    move-object v3, v4

    goto :goto_46

    :catchall_3f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Failed parsing SessionCache"

    invoke-static {v4, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_46
    if-eqz v3, :cond_53

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/cache/session/b$a;

    invoke-direct {v1, p0, v3}, Lcom/fyber/inneractive/sdk/cache/session/b$a;-><init>(Lcom/fyber/inneractive/sdk/cache/session/b;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_61

    :cond_53
    invoke-virtual {v1, v0}, Landroid/app/Application;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/cache/session/b;->a:Lcom/fyber/inneractive/sdk/cache/session/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_61

    :cond_5c
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/cache/session/b;->a:Lcom/fyber/inneractive/sdk/cache/session/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_61
    return-void

    :catchall_62
    move-exception v0

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/io/Closeable;)V

    throw v0
.end method
