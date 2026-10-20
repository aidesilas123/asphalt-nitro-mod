###### Class com.fyber.inneractive.sdk.player.cache.i (com.fyber.inneractive.sdk.player.cache.i)
.class public Lcom/fyber/inneractive/sdk/player/cache/i;
.super Lcom/fyber/inneractive/sdk/player/cache/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/player/cache/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/player/cache/a;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/player/cache/b$a;
    .registers 6

    sget-object p2, Lcom/fyber/inneractive/sdk/player/cache/b$a;->INVALID:Lcom/fyber/inneractive/sdk/player/cache/b$a;

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    :try_start_7
    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/cache/a;->a()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_13
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge p1, v1, :cond_33

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-object p2, Lcom/fyber/inneractive/sdk/player/cache/b$a;->OK:Lcom/fyber/inneractive/sdk/player/cache/b$a;
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_33

    goto :goto_33

    :cond_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :catchall_33
    :cond_33
    :goto_33
    :try_start_33
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_36

    :catchall_36
    return-object p2
.end method
