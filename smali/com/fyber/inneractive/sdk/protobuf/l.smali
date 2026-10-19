###### Class com.fyber.inneractive.sdk.protobuf.l (com.fyber.inneractive.sdk.protobuf.l)
.class public abstract Lcom/fyber/inneractive/sdk/protobuf/l;
.super Lcom/fyber/inneractive/sdk/protobuf/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/protobuf/l$e;,
        Lcom/fyber/inneractive/sdk/protobuf/l$b;,
        Lcom/fyber/inneractive/sdk/protobuf/l$c;,
        Lcom/fyber/inneractive/sdk/protobuf/l$d;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Z


# instance fields
.field public a:Lcom/fyber/inneractive/sdk/protobuf/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/l;->b:Ljava/util/logging/Logger;

    sget-boolean v0, Lcom/fyber/inneractive/sdk/protobuf/p1;->g:Z

    sput-boolean v0, Lcom/fyber/inneractive/sdk/protobuf/l;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/h;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fyber/inneractive/sdk/protobuf/l$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 1

    if-ltz p0, :cond_7

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static a(ID)I
    .registers 3

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static a(IF)I
    .registers 2

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static a(II)I
    .registers 2

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static a(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static a(ILcom/fyber/inneractive/sdk/protobuf/i;)I
    .registers 3

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result p1

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static a(ILcom/fyber/inneractive/sdk/protobuf/o0;Lcom/fyber/inneractive/sdk/protobuf/d1;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/a;

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/a;->getSerializedSize(Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static a(ILjava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static a(IZ)I
    .registers 2

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static a(J)I
    .registers 8

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    const/16 p0, 0xa

    return p0

    :cond_12
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    :goto_22
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2f

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_2f
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    return v0
.end method

.method public static a(Lcom/fyber/inneractive/sdk/protobuf/b0;)I
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/b0;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/fyber/inneractive/sdk/protobuf/b0;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result p0

    goto :goto_17

    :cond_b
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/b0;->a:Lcom/fyber/inneractive/sdk/protobuf/o0;

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/fyber/inneractive/sdk/protobuf/b0;->a:Lcom/fyber/inneractive/sdk/protobuf/o0;

    invoke-interface {p0}, Lcom/fyber/inneractive/sdk/protobuf/o0;->getSerializedSize()I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static a(Lcom/fyber/inneractive/sdk/protobuf/i;)I
    .registers 2

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result p0

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/q1;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_4
    .catch Lcom/fyber/inneractive/sdk/protobuf/q1$d; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    :catch_5
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_c
    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static a([B)Lcom/fyber/inneractive/sdk/protobuf/l;
    .registers 4

    array-length v0, p0

    new-instance v1, Lcom/fyber/inneractive/sdk/protobuf/l$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$c;-><init>([BII)V

    return-object v1
.end method

.method public static b(I)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result p0

    return p0
.end method

.method public static b(II)I
    .registers 2

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static b(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(J)J
    .registers 5

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static c(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static c(II)I
    .registers 2

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static d(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static d(II)I
    .registers 2

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static d(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(II)I
    .registers 2

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/l;->d(I)I

    move-result p1

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(II)I
    .registers 2

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result p0

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILcom/fyber/inneractive/sdk/protobuf/o0;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/protobuf/q1$d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/l;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_f
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/h;->a([BII)V
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_18} :catch_1b
    .catch Lcom/fyber/inneractive/sdk/protobuf/l$d; {:try_start_f .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    throw p1

    :catch_1b
    move-exception p1

    new-instance p2, Lcom/fyber/inneractive/sdk/protobuf/l$d;

    invoke-direct {p2, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$d;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract b(ILcom/fyber/inneractive/sdk/protobuf/i;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(ILcom/fyber/inneractive/sdk/protobuf/o0;Lcom/fyber/inneractive/sdk/protobuf/d1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(ILcom/fyber/inneractive/sdk/protobuf/i;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.fyber.inneractive.sdk.protobuf.l.a (com.fyber.inneractive.sdk.protobuf.l$a)
.class public synthetic Lcom/fyber/inneractive/sdk/protobuf/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.fyber.inneractive.sdk.protobuf.l.b (com.fyber.inneractive.sdk.protobuf.l$b)
.class public abstract Lcom/fyber/inneractive/sdk/protobuf/l$b;
.super Lcom/fyber/inneractive/sdk/protobuf/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l;-><init>(Lcom/fyber/inneractive/sdk/protobuf/l$a;)V

    if-ltz p1, :cond_13

    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->e:I

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bufferSize must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(B)V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    aput-byte p1, v0, v1

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    return-void
.end method

.method public final e(J)V
    .registers 11

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    const/16 v5, 0x8

    shr-long v6, p1, v5

    and-long/2addr v6, v3

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    const/16 v6, 0x10

    shr-long v6, p1, v6

    and-long/2addr v6, v3

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    const/16 v6, 0x18

    shr-long v6, p1, v6

    and-long/2addr v3, v6

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    return-void
.end method

.method public final f(J)V
    .registers 14

    sget-boolean v0, Lcom/fyber/inneractive/sdk/protobuf/l;->c:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3f

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    int-to-long v6, v0

    :goto_c
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    int-to-long p1, p1

    sub-long/2addr p1, v6

    long-to-int p2, p1

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v8, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    int-to-long v8, v8

    long-to-int v10, p1

    and-int/lit8 v10, v10, 0x7f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    invoke-static {v0, v8, v9, v10}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_c

    :cond_3f
    :goto_3f
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    return-void

    :cond_58
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v6, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    ushr-long/2addr p1, v1

    goto :goto_3f
.end method

.method public final h(I)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    return-void
.end method

.method public final i(I)V
    .registers 8

    sget-boolean v0, Lcom/fyber/inneractive/sdk/protobuf/l;->c:Z

    if-eqz v0, :cond_37

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    int-to-long v0, v0

    :goto_7
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v3, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    int-to-long v3, v3

    int-to-byte p1, p1

    invoke-static {v2, v3, v4, p1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    int-to-long v2, p1

    sub-long/2addr v2, v0

    long-to-int p1, v2

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    return-void

    :cond_23
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v3, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    int-to-long v3, v3

    and-int/lit8 v5, p1, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_7

    :cond_37
    :goto_37
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    return-void

    :cond_4d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_37
.end method

###### Class com.fyber.inneractive.sdk.protobuf.l.c (com.fyber.inneractive.sdk.protobuf.l$c)
.class public Lcom/fyber/inneractive/sdk/protobuf/l$c;
.super Lcom/fyber/inneractive/sdk/protobuf/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>([BII)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l;-><init>(Lcom/fyber/inneractive/sdk/protobuf/l$a;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_19

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iput p2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->e:I

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->e:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/l$d;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(ILcom/fyber/inneractive/sdk/protobuf/o0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->j(II)V

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/protobuf/o0;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    invoke-interface {p2, p0}, Lcom/fyber/inneractive/sdk/protobuf/o0;->writeTo(Lcom/fyber/inneractive/sdk/protobuf/l;)V

    const/4 p1, 0x4

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    return-void
.end method

.method public final a([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->b([BII)V

    return-void
.end method

.method public final b(ILcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->b(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public final b(ILcom/fyber/inneractive/sdk/protobuf/o0;Lcom/fyber/inneractive/sdk/protobuf/d1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    move-object p1, p2

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/a;

    invoke-virtual {p1, p3}, Lcom/fyber/inneractive/sdk/protobuf/a;->getSerializedSize(Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l;->a:Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-interface {p3, p2, p1}, Lcom/fyber/inneractive/sdk/protobuf/d1;->a(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->a(B)V

    return-void
.end method

.method public final b(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    invoke-virtual {p1, p0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Lcom/fyber/inneractive/sdk/protobuf/h;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v2

    if-ne v2, v1, :cond_31

    add-int v1, v0, v2

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->a()I

    move-result v4

    sget-object v5, Lcom/fyber/inneractive/sdk/protobuf/q1;->a:Lcom/fyber/inneractive/sdk/protobuf/q1$b;

    invoke-virtual {v5, p1, v3, v1, v4}, Lcom/fyber/inneractive/sdk/protobuf/q1$b;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    goto :goto_56

    :cond_31
    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/q1;->a(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->a()I

    move-result v3

    sget-object v4, Lcom/fyber/inneractive/sdk/protobuf/q1;->a:Lcom/fyber/inneractive/sdk/protobuf/q1$b;

    invoke-virtual {v4, p1, v1, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/q1$b;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I
    :try_end_48
    .catch Lcom/fyber/inneractive/sdk/protobuf/q1$d; {:try_start_2 .. :try_end_48} :catch_50
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_48} :catch_49

    goto :goto_56

    :catch_49
    move-exception p1

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/l$d;

    invoke-direct {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$d;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_50
    move-exception v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    invoke-virtual {p0, p1, v1}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/protobuf/q1$d;)V

    :goto_56
    return-void
.end method

.method public final b([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    new-instance p2, Lcom/fyber/inneractive/sdk/protobuf/l$d;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final c(ILcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->j(II)V

    invoke-virtual {p0, v1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->b(ILcom/fyber/inneractive/sdk/protobuf/i;)V

    const/4 p1, 0x4

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    return-void
.end method

.method public final c(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_6f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6f} :catch_70

    return-void

    :catch_70
    move-exception p1

    new-instance p2, Lcom/fyber/inneractive/sdk/protobuf/l$d;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final d(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/fyber/inneractive/sdk/protobuf/l;->c:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->a()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_3a

    :goto_11
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v6, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_11

    :cond_3a
    :goto_3a
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_4d

    :try_start_40
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    :cond_4d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v6, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_5d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_5d} :catch_5f

    ushr-long/2addr p1, v1

    goto :goto_3a

    :catch_5f
    move-exception p1

    new-instance p2, Lcom/fyber/inneractive/sdk/protobuf/l$d;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final e(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p1

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/l$d;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final f(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    goto :goto_a

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d(J)V

    :goto_a
    return-void
.end method

.method public final f(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    invoke-virtual {p0, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->c(J)V

    return-void
.end method

.method public final g(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/fyber/inneractive/sdk/protobuf/l;->c:Z

    if-eqz v0, :cond_ab

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/d;->a()Z

    move-result v0

    if-nez v0, :cond_ab

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_ab

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    return-void

    :cond_23
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    return-void

    :cond_46
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    return-void

    :cond_69
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    return-void

    :cond_8c
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a([BJB)V

    return-void

    :cond_ab
    :goto_ab
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_bb

    :try_start_af
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_bb
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_af .. :try_end_ca} :catch_cd

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_ab

    :catch_cd
    move-exception p1

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/l$d;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$c;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final g(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->e(I)V

    return-void
.end method

.method public final g(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    invoke-virtual {p0, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d(J)V

    return-void
.end method

.method public final h(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    if-ltz p2, :cond_e

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    goto :goto_12

    :cond_e
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->d(J)V

    :goto_12
    return-void
.end method

.method public final i(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    return-void
.end method

.method public final j(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$c;->g(I)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.protobuf.l.d (com.fyber.inneractive.sdk.protobuf.l$d)
.class public Lcom/fyber/inneractive/sdk/protobuf/l$d;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x606a6e83ad3191dbL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodedOutputStream was writing to a flat byte array and ran out of space.: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.protobuf.l.e (com.fyber.inneractive.sdk.protobuf.l$e)
.class public final Lcom/fyber/inneractive/sdk/protobuf/l$e;
.super Lcom/fyber/inneractive/sdk/protobuf/l$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final h:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$b;-><init>(I)V

    const-string p2, "out"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$e;->h:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a(B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->e:I

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->b()V

    :cond_9
    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->b(B)V

    return-void
.end method

.method public a(ILcom/fyber/inneractive/sdk/protobuf/o0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(II)V

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/protobuf/o0;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    invoke-interface {p2, p0}, Lcom/fyber/inneractive/sdk/protobuf/o0;->writeTo(Lcom/fyber/inneractive/sdk/protobuf/l;)V

    const/4 p1, 0x4

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    return-void
.end method

.method public a([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->b([BII)V

    return-void
.end method

.method public final b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$e;->h:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    return-void
.end method

.method public b(ILcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->b(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public b(ILcom/fyber/inneractive/sdk/protobuf/o0;Lcom/fyber/inneractive/sdk/protobuf/d1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    move-object p1, p2

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/a;

    invoke-virtual {p1, p3}, Lcom/fyber/inneractive/sdk/protobuf/a;->getSerializedSize(Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l;->a:Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-interface {p3, p2, p1}, Lcom/fyber/inneractive/sdk/protobuf/d1;->a(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(I)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->b(B)V

    return-void
.end method

.method public b(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    invoke-virtual {p1, p0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Lcom/fyber/inneractive/sdk/protobuf/h;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->e:I

    if-le v2, v3, :cond_20

    new-array v1, v0, [B

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/q1;->a:Lcom/fyber/inneractive/sdk/protobuf/q1$b;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3, v0}, Lcom/fyber/inneractive/sdk/protobuf/q1$b;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    invoke-virtual {p0, v1, v3, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->b([BII)V

    return-void

    :cond_20
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_28

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->b()V

    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v0

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I
    :try_end_32
    .catch Lcom/fyber/inneractive/sdk/protobuf/q1$d; {:try_start_0 .. :try_end_32} :catch_7a

    if-ne v0, v1, :cond_4e

    add-int v1, v2, v0

    :try_start_36
    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v4, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->e:I

    sub-int/2addr v4, v1

    sget-object v5, Lcom/fyber/inneractive/sdk/protobuf/q1;->a:Lcom/fyber/inneractive/sdk/protobuf/q1$b;

    invoke-virtual {v5, p1, v3, v1, v4}, Lcom/fyber/inneractive/sdk/protobuf/q1$b;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    goto :goto_61

    :cond_4e
    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/q1;->a(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    sget-object v4, Lcom/fyber/inneractive/sdk/protobuf/q1;->a:Lcom/fyber/inneractive/sdk/protobuf/q1$b;

    invoke-virtual {v4, p1, v0, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/q1$b;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    :goto_61
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I
    :try_end_66
    .catch Lcom/fyber/inneractive/sdk/protobuf/q1$d; {:try_start_36 .. :try_end_66} :catch_6e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_36 .. :try_end_66} :catch_67

    goto :goto_7e

    :catch_67
    move-exception v0

    :try_start_68
    new-instance v1, Lcom/fyber/inneractive/sdk/protobuf/l$d;

    invoke-direct {v1, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$d;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6e
    move-exception v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    iget v3, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    throw v0
    :try_end_7a
    .catch Lcom/fyber/inneractive/sdk/protobuf/q1$d; {:try_start_68 .. :try_end_7a} :catch_7a

    :catch_7a
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/protobuf/q1$d;)V

    :goto_7e
    return-void
.end method

.method public b([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->e:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_17

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    goto :goto_41

    :cond_17
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->e:I

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->b()V

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->e:I

    if-gt p3, v0, :cond_37

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->d:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    goto :goto_3c

    :cond_37
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$e;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_3c
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->g:I

    :goto_41
    return-void
.end method

.method public c(ILcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(II)V

    invoke-virtual {p0, v1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->b(ILcom/fyber/inneractive/sdk/protobuf/i;)V

    const/4 p1, 0x4

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    return-void
.end method

.method public c(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(I)V

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->e(J)V

    return-void
.end method

.method public d(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(I)V

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f(J)V

    return-void
.end method

.method public e(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(I)V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->h(I)V

    return-void
.end method

.method public f(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_a

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(I)V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    goto :goto_e

    :cond_a
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->d(J)V

    :goto_e
    return-void
.end method

.method public f(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(I)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    invoke-virtual {p0, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->e(J)V

    return-void
.end method

.method public g(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(I)V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    return-void
.end method

.method public g(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(I)V

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->h(I)V

    return-void
.end method

.method public g(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(I)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    invoke-virtual {p0, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f(J)V

    return-void
.end method

.method public h(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(I)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    if-ltz p2, :cond_13

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    goto :goto_17

    :cond_13
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f(J)V

    :goto_17
    return-void
.end method

.method public i(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->g(I)V

    return-void
.end method

.method public final j(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->e:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l$b;->f:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_a

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->b()V

    :cond_a
    return-void
.end method

.method public j(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/l$e;->j(I)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/l$b;->i(I)V

    return-void
.end method
