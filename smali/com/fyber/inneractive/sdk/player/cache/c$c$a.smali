###### Class com.fyber.inneractive.sdk.player.cache.c.C0170c.a (com.fyber.inneractive.sdk.player.cache.c$c$a)
.class public Lcom/fyber/inneractive/sdk/player/cache/c$c$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/cache/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/cache/c$c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/cache/c$c;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/c$c$a;->a:Lcom/fyber/inneractive/sdk/player/cache/c$c;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/c$c$a;->a:Lcom/fyber/inneractive/sdk/player/cache/c$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/player/cache/c$c;->a(Lcom/fyber/inneractive/sdk/player/cache/c$c;Z)Z

    :goto_c
    return-void
.end method

.method public flush()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/c$c$a;->a:Lcom/fyber/inneractive/sdk/player/cache/c$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/player/cache/c$c;->a(Lcom/fyber/inneractive/sdk/player/cache/c$c;Z)Z

    :goto_c
    return-void
.end method

.method public write(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/c$c$a;->a:Lcom/fyber/inneractive/sdk/player/cache/c$c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/player/cache/c$c;->a(Lcom/fyber/inneractive/sdk/player/cache/c$c;Z)Z

    :goto_c
    return-void
.end method

.method public write([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/c$c$a;->a:Lcom/fyber/inneractive/sdk/player/cache/c$c;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/player/cache/c$c;->a(Lcom/fyber/inneractive/sdk/player/cache/c$c;Z)Z

    :goto_c
    return-void
.end method
