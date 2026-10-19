###### Class com.fyber.inneractive.sdk.player.cache.n.a (com.fyber.inneractive.sdk.player.cache.n$a)
.class public Lcom/fyber/inneractive/sdk/player/cache/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/cache/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/cache/n;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/cache/n;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/n$a;->a:Lcom/fyber/inneractive/sdk/player/cache/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/n$a;->a:Lcom/fyber/inneractive/sdk/player/cache/n;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/cache/n;->a:Landroid/content/Context;

    const-string v1, "fyb.vamp.vid.cache"

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/player/cache/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_75

    const/4 v1, 0x0

    :try_start_d
    const-string v2, "VideoCache opening the cache in directory - %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/cache/n$a;->a:Lcom/fyber/inneractive/sdk/player/cache/n;

    const-wide/32 v4, 0x3200000

    invoke-static {v0, v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/player/cache/c;->a(Ljava/io/File;IIJ)Lcom/fyber/inneractive/sdk/player/cache/c;

    move-result-object v6

    iput-object v6, v2, Lcom/fyber/inneractive/sdk/player/cache/n;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/cache/n$a;->a:Lcom/fyber/inneractive/sdk/player/cache/n;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/cache/n;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/cache/c;->close()V

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/cache/c;->a:Ljava/io/File;

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/cache/m;->a(Ljava/io/File;)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/cache/n$a;->a:Lcom/fyber/inneractive/sdk/player/cache/n;

    invoke-static {v0, v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/player/cache/c;->a(Ljava/io/File;IIJ)Lcom/fyber/inneractive/sdk/player/cache/c;

    move-result-object v4

    iput-object v4, v2, Lcom/fyber/inneractive/sdk/player/cache/n;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    const-string v2, "VideoCache opened the cache in directory - %s current size is %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/n$a;->a:Lcom/fyber/inneractive/sdk/player/cache/n;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/cache/n;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    monitor-enter v0
    :try_end_45
    .catchall {:try_start_d .. :try_end_45} :catchall_63

    :try_start_45
    iget-wide v5, v0, Lcom/fyber/inneractive/sdk/player/cache/c;->h:J
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_60

    :try_start_47
    monitor-exit v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/n$a;->a:Lcom/fyber/inneractive/sdk/player/cache/n;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/cache/n;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    iput-object v0, v2, Lcom/fyber/inneractive/sdk/player/cache/c;->l:Lcom/fyber/inneractive/sdk/player/cache/c$e;

    invoke-static {v0, v3}, Lcom/fyber/inneractive/sdk/player/cache/n;->a(Lcom/fyber/inneractive/sdk/player/cache/n;Z)Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/n$a;->a:Lcom/fyber/inneractive/sdk/player/cache/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_75

    :catchall_60
    move-exception v2

    monitor-exit v0

    throw v2
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to open cache directory"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Lcom/fyber/inneractive/sdk/network/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;)V

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to open cache directory"

    invoke-static {v2, v0, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_75
    :goto_75
    return-void
.end method
