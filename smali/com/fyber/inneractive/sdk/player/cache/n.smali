###### Class com.fyber.inneractive.sdk.player.cache.n (com.fyber.inneractive.sdk.player.cache.n)
.class public Lcom/fyber/inneractive/sdk/player/cache/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/cache/c$e;


# static fields
.field public static final f:Lcom/fyber/inneractive/sdk/player/cache/n;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/fyber/inneractive/sdk/player/cache/c;

.field public c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/player/cache/n;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/player/cache/n;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/cache/n;->f:Lcom/fyber/inneractive/sdk/player/cache/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/cache/n;->c:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/n;->d:Ljava/util/List;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/cache/n$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/player/cache/n$a;-><init>(Lcom/fyber/inneractive/sdk/player/cache/n;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/n;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_78

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_78

    :cond_b
    sget-object v1, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    const-wide/32 v2, 0x3200000

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5d

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/l;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->b()Ljava/lang/String;

    move-result-object v1

    const-string v6, "mounted"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v1, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v1, 0x1

    :goto_3e
    if-eqz v1, :cond_5d

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-lez v1, :cond_50

    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    if-eqz v1, :cond_5d

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_5d
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-lez v1, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v4, 0x0

    :goto_6d
    if-eqz v4, :cond_78

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_78
    :goto_78
    return-object v0
.end method

.method public static synthetic a(Lcom/fyber/inneractive/sdk/player/cache/n;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/cache/n;->c:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/cache/n;->c:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/p;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/cache/c;Ljava/lang/String;)Z
    .registers 4

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/n;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_1a
    const/4 p1, 0x1

    return p1
.end method

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
