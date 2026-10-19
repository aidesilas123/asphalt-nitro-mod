###### Class com.fyber.inneractive.sdk.player.cache.l (com.fyber.inneractive.sdk.player.cache.l)
.class public Lcom/fyber/inneractive/sdk/player/cache/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/nio/charset/Charset;

.field public c:[B

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p3, :cond_2a

    if-ltz p2, :cond_22

    sget-object v0, Lcom/fyber/inneractive/sdk/player/cache/m;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->b:Ljava/nio/charset/Charset;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->c:[B

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->c:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iput v3, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->d:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->e:I

    return-void

    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->a:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->c:[B

    if-eqz v1, :cond_7f

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->d:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->e:I

    if-lt v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/cache/l;->a()V

    :cond_10
    iget v1, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->d:I

    :goto_12
    iget v2, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->e:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_41

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->c:[B

    aget-byte v4, v2, v1

    if-ne v4, v3, :cond_3e

    iget v3, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->d:I

    if-eq v1, v3, :cond_2b

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v2, v4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2b

    goto :goto_2c

    :cond_2b
    move v4, v1

    :goto_2c
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v3

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->d:I

    monitor-exit v0

    return-object v5

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_41
    new-instance v1, Lcom/fyber/inneractive/sdk/player/cache/l$a;

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->e:I

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->d:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/fyber/inneractive/sdk/player/cache/l$a;-><init>(Lcom/fyber/inneractive/sdk/player/cache/l;I)V

    :cond_4d
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->c:[B

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->d:I

    iget v5, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->e:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->e:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/cache/l;->a()V

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->d:I

    :goto_5f
    iget v4, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->e:I

    if-eq v2, v4, :cond_4d

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->c:[B

    aget-byte v5, v4, v2

    if-ne v5, v3, :cond_7c

    iget v3, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->d:I

    if-eq v2, v3, :cond_72

    sub-int v5, v2, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_72
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->d:I

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/cache/l$a;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_7f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    throw v1
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->a:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->c:[B

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->c:[B

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/l;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

###### Class com.fyber.inneractive.sdk.player.cache.l.a (com.fyber.inneractive.sdk.player.cache.l$a)
.class public Lcom/fyber/inneractive/sdk/player/cache/l$a;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/cache/l;->b()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/cache/l;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/cache/l;I)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/l$a;->a:Lcom/fyber/inneractive/sdk/player/cache/l;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    if-lez v0, :cond_f

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v3, 0xd

    if-ne v1, v3, :cond_f

    move v0, v2

    :cond_f
    :try_start_f
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/cache/l$a;->a:Lcom/fyber/inneractive/sdk/player/cache/l;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/cache/l;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
