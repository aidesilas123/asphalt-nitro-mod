###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.c (com.fyber.inneractive.sdk.player.exoplayer2.upstream.c)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/AssetManager;

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0<",
            "-",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/net/Uri;

.field public d:Ljava/io/InputStream;

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0<",
            "-",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->a:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->e:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    return v4

    :cond_e
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_15

    goto :goto_1b

    :cond_15
    int-to-long v5, p3

    :try_start_16
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_1b
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_52

    if-ne p1, v4, :cond_35

    iget-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->e:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_2a

    return v4

    :cond_2a
    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_35
    iget-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->e:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_3f

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->e:J

    :cond_3f
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;

    if-eqz p2, :cond_51

    check-cast p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;

    monitor-enter p2

    :try_start_46
    iget-wide v0, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->d:J
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4e

    monitor-exit p2

    goto :goto_51

    :catchall_4e
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_51
    :goto_51
    return p1

    :catch_52
    move-exception p1

    new-instance p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;

    invoke-direct {p2, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_18
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->a:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->d:Ljava/io/InputStream;

    iget-wide v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->d:J

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget-wide v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->d:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_63

    iget-wide v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->e:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_43

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->e:J

    goto :goto_55

    :cond_43
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->e:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v0, v5

    if-nez v7, :cond_55

    iput-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->e:J
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_55} :catch_69

    :cond_55
    :goto_55
    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->f:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;

    if-eqz v0, :cond_60

    check-cast v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;

    invoke-virtual {v0, p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->a(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)V

    :cond_60
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->e:J

    return-wide v0

    :cond_63
    :try_start_63
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_69} :catch_69

    :catch_69
    move-exception p1

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;

    invoke-direct {v0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->c:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->d:Ljava/io/InputStream;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_1f
    .catchall {:try_start_4 .. :try_end_b} :catchall_1d

    :cond_b
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->d:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->f:Z

    if-eqz v0, :cond_1c

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->f:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;

    if-eqz v0, :cond_1c

    check-cast v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;

    invoke-virtual {v0, p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->a(Ljava/lang/Object;)V

    :cond_1c
    return-void

    :catchall_1d
    move-exception v2

    goto :goto_26

    :catch_1f
    move-exception v2

    :try_start_20
    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;

    invoke-direct {v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1d

    :goto_26
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->d:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->f:Z

    if-eqz v0, :cond_37

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->f:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;

    if-eqz v0, :cond_37

    check-cast v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;

    invoke-virtual {v0, p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->a(Ljava/lang/Object;)V

    :cond_37
    throw v2
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.c.a (com.fyber.inneractive.sdk.player.exoplayer2.upstream.c$a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c$a;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
