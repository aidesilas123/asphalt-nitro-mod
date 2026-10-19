###### Class com.fyber.inneractive.sdk.cache.session.c (com.fyber.inneractive.sdk.cache.session.c)
.class public Lcom/fyber/inneractive/sdk/cache/session/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/cache/session/enums/a;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/cache/session/enums/b;

.field public final synthetic c:Lcom/fyber/inneractive/sdk/cache/session/d;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/cache/session/d;Lcom/fyber/inneractive/sdk/cache/session/enums/a;Lcom/fyber/inneractive/sdk/cache/session/enums/b;)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/cache/session/c;->c:Lcom/fyber/inneractive/sdk/cache/session/d;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/cache/session/c;->a:Lcom/fyber/inneractive/sdk/cache/session/enums/a;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/cache/session/c;->b:Lcom/fyber/inneractive/sdk/cache/session/enums/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/cache/session/c;->c:Lcom/fyber/inneractive/sdk/cache/session/d;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/cache/session/d;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/cache/session/c;->a:Lcom/fyber/inneractive/sdk/cache/session/enums/a;

    sget-object v2, Lcom/fyber/inneractive/sdk/cache/session/enums/a;->NEW_SESSION:Lcom/fyber/inneractive/sdk/cache/session/enums/a;

    if-eq v1, v2, :cond_3f

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/cache/session/c;->c:Lcom/fyber/inneractive/sdk/cache/session/d;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/cache/session/d;->a:Lcom/fyber/inneractive/sdk/cache/session/f;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/cache/session/c;->b:Lcom/fyber/inneractive/sdk/cache/session/enums/b;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/cache/session/f;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/cache/session/e;

    if-eqz v2, :cond_48

    sget-object v3, Lcom/fyber/inneractive/sdk/cache/session/e$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_39

    const/4 v4, 0x2

    if-eq v1, v4, :cond_33

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2d

    goto :goto_48

    :cond_2d
    iget v1, v2, Lcom/fyber/inneractive/sdk/cache/session/e;->a:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/fyber/inneractive/sdk/cache/session/e;->a:I

    goto :goto_48

    :cond_33
    iget v1, v2, Lcom/fyber/inneractive/sdk/cache/session/e;->c:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/fyber/inneractive/sdk/cache/session/e;->c:I

    goto :goto_48

    :cond_39
    iget v1, v2, Lcom/fyber/inneractive/sdk/cache/session/e;->b:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/fyber/inneractive/sdk/cache/session/e;->b:I

    goto :goto_48

    :cond_3f
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/cache/session/c;->c:Lcom/fyber/inneractive/sdk/cache/session/d;

    new-instance v2, Lcom/fyber/inneractive/sdk/cache/session/f;

    invoke-direct {v2}, Lcom/fyber/inneractive/sdk/cache/session/f;-><init>()V

    iput-object v2, v1, Lcom/fyber/inneractive/sdk/cache/session/d;->a:Lcom/fyber/inneractive/sdk/cache/session/f;

    :cond_48
    :goto_48
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/cache/session/c;->c:Lcom/fyber/inneractive/sdk/cache/session/d;

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/cache/session/d;->a(Lcom/fyber/inneractive/sdk/cache/session/d;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_6c

    const/4 v2, 0x0

    :try_start_4f
    const-string v3, "session_details.json"

    sget-object v4, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/fyber/inneractive/sdk/util/l;->a(Ljava/lang/String;Landroid/content/Context;[B)Z

    move-result v2
    :try_end_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4f .. :try_end_61} :catch_61
    .catchall {:try_start_4f .. :try_end_61} :catchall_6c

    :catch_61
    :try_start_61
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/cache/session/c;->c:Lcom/fyber/inneractive/sdk/cache/session/d;

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/cache/session/d;->e:Lcom/fyber/inneractive/sdk/cache/session/d$a;

    if-eqz v4, :cond_6a

    invoke-interface {v4, v3, v2, v1}, Lcom/fyber/inneractive/sdk/cache/session/d$a;->a(Lcom/fyber/inneractive/sdk/cache/session/d;ZLorg/json/JSONObject;)V

    :cond_6a
    monitor-exit v0

    return-void

    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_6c

    throw v1
.end method
