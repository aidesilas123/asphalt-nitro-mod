###### Class com.mbridge.msdk.foundation.same.net.j (com.mbridge.msdk.foundation.same.net.j)
.class public abstract Lcom/mbridge/msdk/foundation/same/net/j;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mbridge/msdk/foundation/same/net/j<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/mbridge/msdk/foundation/same/net/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mbridge/msdk/foundation/same/net/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private g:Ljava/lang/Integer;

.field private h:Lcom/mbridge/msdk/foundation/same/net/k;

.field private i:Z

.field private j:Lcom/mbridge/msdk/foundation/same/net/m;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/mbridge/msdk/foundation/same/net/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/same/net/j;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->i:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->k:I

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/j;->e:Ljava/lang/String;

    iput p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->d:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->f:Z

    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->j:Lcom/mbridge/msdk/foundation/same/net/m;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/net/e<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->i:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->k:I

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/j;->e:Ljava/lang/String;

    iput p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->d:I

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->f:Z

    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->j:Lcom/mbridge/msdk/foundation/same/net/m;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/net/e<",
            "TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->i:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->k:I

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/j;->e:Ljava/lang/String;

    iput p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->d:I

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    iput-boolean p4, p0, Lcom/mbridge/msdk/foundation/same/net/j;->f:Z

    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->j:Lcom/mbridge/msdk/foundation/same/net/m;

    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/same/net/f/b;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mbridge/msdk/foundation/same/net/b/a;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/net/f/b;->c()Ljava/io/InputStream;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_5e

    :try_start_5
    instance-of v2, v1, Ljava/io/ByteArrayInputStream;

    if-nez v2, :cond_1d

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/net/f/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/net/g/b;->b(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1d

    instance-of p1, v1, Ljava/util/zip/GZIPInputStream;

    if-nez p1, :cond_1d

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, p1

    :cond_1d
    if-eqz v1, :cond_52

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_59

    const/16 v0, 0x400

    :try_start_26
    new-array v0, v0, [B

    :goto_28
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_34

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_28

    :cond_34
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_4d

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_4c

    :catch_42
    move-exception p1

    sget-object v1, Lcom/mbridge/msdk/foundation/same/net/j;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    return-object v0

    :catchall_4d
    move-exception v0

    move-object v4, v1

    move-object v1, p1

    move-object p1, v0

    goto :goto_5c

    :cond_52
    :try_start_52
    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v2, 0x7

    invoke-direct {p1, v2, v0}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p1

    move-object v4, v1

    move-object v1, v0

    :goto_5c
    move-object v0, v4

    goto :goto_60

    :catchall_5e
    move-exception p1

    move-object v1, v0

    :goto_60
    if-eqz v0, :cond_68

    :try_start_62
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_68

    :catch_66
    move-exception v0

    goto :goto_6e

    :cond_68
    :goto_68
    if-eqz v1, :cond_77

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6d} :catch_66

    goto :goto_77

    :goto_6e
    sget-object v1, Lcom/mbridge/msdk/foundation/same/net/j;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    :goto_77
    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->d:I

    return v0
.end method

.method public final a(I)Lcom/mbridge/msdk/foundation/same/net/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mbridge/msdk/foundation/same/net/j<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(Lcom/mbridge/msdk/foundation/same/net/k;)Lcom/mbridge/msdk/foundation/same/net/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/k;",
            ")",
            "Lcom/mbridge/msdk/foundation/same/net/j<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->h:Lcom/mbridge/msdk/foundation/same/net/k;

    return-object p0
.end method

.method public final a(Lcom/mbridge/msdk/foundation/same/net/m;)Lcom/mbridge/msdk/foundation/same/net/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/m;",
            ")",
            "Lcom/mbridge/msdk/foundation/same/net/j<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->j:Lcom/mbridge/msdk/foundation/same/net/m;

    return-object p0
.end method

.method protected abstract a(Lcom/mbridge/msdk/foundation/same/net/f/c;)Lcom/mbridge/msdk/foundation/same/net/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/f/c;",
            ")",
            "Lcom/mbridge/msdk/foundation/same/net/l<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final a(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mbridge/msdk/foundation/same/net/e;->onProgressChange(JJ)V

    :cond_7
    return-void
.end method

.method public final a(Lcom/mbridge/msdk/foundation/same/net/b/a;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/e;->onError(Lcom/mbridge/msdk/foundation/same/net/b/a;)V

    :cond_7
    return-void
.end method

.method public final a(Lcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/e<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    return-void
.end method

.method public final a(Lcom/mbridge/msdk/foundation/same/net/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/l<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/e;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/l;)V

    :cond_7
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->h:Lcom/mbridge/msdk/foundation/same/net/k;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/foundation/same/net/k;->b(Lcom/mbridge/msdk/foundation/same/net/j;)V

    :cond_7
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/same/net/f/b;Lcom/mbridge/msdk/foundation/same/net/c;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mbridge/msdk/foundation/same/net/b/a;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/net/f/b;->c()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Lcom/mbridge/msdk/foundation/same/net/f/b;)[B

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .registers 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    const/4 v0, 0x4

    if-gt p1, v0, :cond_8

    iput p1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->k:I

    :cond_8
    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->i:Z

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/mbridge/msdk/foundation/same/net/j;

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/net/j;->h()I

    move-result v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/net/j;->h()I

    move-result v1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/mbridge/msdk/foundation/same/net/j;->g:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_1c

    :cond_1a
    sub-int v0, v1, v0

    :goto_1c
    return v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->i:Z

    return v0
.end method

.method public final e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public f()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()V
    .registers 3

    const-string v0, "Charset"

    const-string v1, "UTF-8"

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->f:Z

    const-string v1, "Connection"

    if-eqz v0, :cond_13

    const-string v0, "keep-alive"

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_13
    const-string v0, "close"

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->k:I

    return v0
.end method

.method public final i()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->j:Lcom/mbridge/msdk/foundation/same/net/m;

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/net/m;->b()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    const/16 v0, 0xa

    return v0
.end method

.method public final j()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->j:Lcom/mbridge/msdk/foundation/same/net/m;

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/net/m;->c()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    const/16 v0, 0xa

    return v0
.end method

.method public final k()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->j:Lcom/mbridge/msdk/foundation/same/net/m;

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/net/m;->d()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    const/16 v0, 0xa

    return v0
.end method

.method public final l()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->j:Lcom/mbridge/msdk/foundation/same/net/m;

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/net/m;->e()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    const/16 v0, 0xa

    return v0
.end method

.method public final m()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->j:Lcom/mbridge/msdk/foundation/same/net/m;

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/net/m;->f()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Lcom/mbridge/msdk/foundation/same/net/m;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->j:Lcom/mbridge/msdk/foundation/same/net/m;

    return-object v0
.end method

.method public final o()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/net/e;->onCancel()V

    :cond_7
    return-void
.end method

.method public final p()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/net/e;->onPreExecute()V

    :cond_7
    return-void
.end method

.method public final q()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/net/e;->onFinish()V

    :cond_7
    return-void
.end method

.method public final r()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/net/e;->onRetry()V

    :cond_7
    return-void
.end method

.method public final s()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/j;->b:Lcom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/net/e;->onNetworking()V

    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->i:Z

    if-eqz v1, :cond_c

    const-string v1, "[X] "

    goto :goto_e

    :cond_c
    const-string v1, "[ ] "

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/net/j;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/j;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
