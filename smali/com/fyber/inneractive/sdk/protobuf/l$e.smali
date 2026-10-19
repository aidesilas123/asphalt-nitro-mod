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
