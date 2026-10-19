###### Class kotlin.reflect.jvm.internal.impl.protobuf.n.e (kotlin.reflect.jvm.internal.impl.protobuf.n$e)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;
.super Ljava/io/InputStream;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

.field private b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field final synthetic g:Lkotlin/reflect/jvm/internal/impl/protobuf/n;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e()V

    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    if-eqz v0, :cond_2e

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->c:I

    if-ne v0, v1, :cond_2e

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->c:I

    goto :goto_2e

    :cond_29
    const/4 v1, 0x0

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->c:I

    :cond_2e
    :goto_2e
    return-void
.end method

.method private e()V
    .registers 4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e:I

    return-void
.end method

.method private f([BII)I
    .registers 8

    move v0, p3

    :goto_1
    if-lez v0, :cond_28

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d()V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    if-nez v1, :cond_e

    if-ne v0, p3, :cond_28

    const/4 p1, -0x1

    return p1

    :cond_e
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->c:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_21

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    invoke-virtual {v2, p1, v3, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->d([BIII)V

    add-int/2addr p2, v1

    :cond_21
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_28
    sub-int/2addr p3, v0

    return p3
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public mark(I)V
    .registers 3

    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e:I

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->f:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d()V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    if-nez v0, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->z(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_10

    if-ltz p3, :cond_10

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_10

    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->f([BII)I

    move-result p1

    return p1

    :cond_10
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->f:I

    invoke-direct {p0, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->f([BII)I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_17

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    move-wide p1, v0

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p2, p1

    invoke-direct {p0, v0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->f([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_17
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
