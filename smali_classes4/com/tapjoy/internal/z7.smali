###### Class com.tapjoy.internal.z7 (com.tapjoy.internal.z7)
.class public final Lcom/tapjoy/internal/z7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tapjoy/internal/d0;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:I


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/z7;->b:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/tapjoy/internal/z7;->c:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/z7;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/z7;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/z7;->g:J

    iput-object p1, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 8

    iget v0, p0, Lcom/tapjoy/internal/z7;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    iget-wide v0, p0, Lcom/tapjoy/internal/z7;->c:J

    iget-wide v2, p0, Lcom/tapjoy/internal/z7;->b:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v4, Lcom/tapjoy/internal/n;

    iget-wide v4, v4, Lcom/tapjoy/internal/n;->b:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_23

    const/4 v4, 0x6

    iput v4, p0, Lcom/tapjoy/internal/z7;->e:I

    iput-wide v0, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-wide v0, p0, Lcom/tapjoy/internal/z7;->g:J

    iput-wide v0, p0, Lcom/tapjoy/internal/z7;->c:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/z7;->g:J

    return-wide v2

    :cond_23
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_29
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/z7;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)V
    .registers 8

    iget v0, p0, Lcom/tapjoy/internal/z7;->e:I

    const/4 v1, 0x6

    if-ne v0, p1, :cond_8

    iput v1, p0, Lcom/tapjoy/internal/z7;->e:I

    goto :goto_20

    :cond_8
    iget-wide v2, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-wide v4, p0, Lcom/tapjoy/internal/z7;->c:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_21

    if-nez p1, :cond_1d

    iget-wide v2, p0, Lcom/tapjoy/internal/z7;->g:J

    iput-wide v2, p0, Lcom/tapjoy/internal/z7;->c:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tapjoy/internal/z7;->g:J

    iput v1, p0, Lcom/tapjoy/internal/z7;->e:I

    goto :goto_20

    :cond_1d
    const/4 p1, 0x7

    iput p1, p0, Lcom/tapjoy/internal/z7;->e:I

    :goto_20
    return-void

    :cond_21
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected to end at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tapjoy/internal/z7;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tapjoy/internal/z7;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(J)V
    .registers 9

    iget v0, p0, Lcom/tapjoy/internal/z7;->e:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4b

    iget v0, p0, Lcom/tapjoy/internal/z7;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/z7;->d:I

    if-ltz v0, :cond_43

    iget-wide v1, p0, Lcom/tapjoy/internal/z7;->g:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_43

    iget-wide v1, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-wide v3, p0, Lcom/tapjoy/internal/z7;->c:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_40

    if-nez v0, :cond_20

    goto :goto_40

    :cond_20
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected to end at "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tapjoy/internal/z7;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tapjoy/internal/z7;->b:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    :goto_40
    iput-wide p1, p0, Lcom/tapjoy/internal/z7;->c:J

    return-void

    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No corresponding call to beginMessage()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call to endMessage()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()J
    .registers 5

    iget v0, p0, Lcom/tapjoy/internal/z7;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/tapjoy/internal/z7;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/z7;->d:I

    const/16 v1, 0x41

    if-gt v0, v1, :cond_19

    iget-wide v0, p0, Lcom/tapjoy/internal/z7;->g:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tapjoy/internal/z7;->g:J

    const/4 v2, 0x6

    iput v2, p0, Lcom/tapjoy/internal/z7;->e:I

    return-wide v0

    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wire recursion limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to beginMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(I)V
    .registers 13

    :goto_0
    iget-wide v0, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-wide v2, p0, Lcom/tapjoy/internal/z7;->c:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_bc

    iget-object v0, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v0, Lcom/tapjoy/internal/n;

    iget-wide v0, v0, Lcom/tapjoy/internal/n;->b:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v3

    if-nez v6, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_bc

    invoke-virtual {p0}, Lcom/tapjoy/internal/z7;->f()I

    move-result v0

    if-eqz v0, :cond_b4

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_ad

    if-eq v0, v5, :cond_a6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3b

    iput v1, p0, Lcom/tapjoy/internal/z7;->e:I

    invoke-virtual {p0}, Lcom/tapjoy/internal/z7;->h()I

    goto :goto_0

    :cond_3b
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected field encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    if-ne v1, p1, :cond_52

    return-void

    :cond_52
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected end group"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/z7;->e(I)V

    goto :goto_0

    :cond_5e
    invoke-virtual {p0}, Lcom/tapjoy/internal/z7;->f()I

    move-result v0

    iget-wide v1, p0, Lcom/tapjoy/internal/z7;->b:J

    int-to-long v5, v0

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-object v0, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v0, Lcom/tapjoy/internal/n;

    :cond_6c
    :goto_6c
    cmp-long v1, v5, v3

    if-lez v1, :cond_a1

    iget-object v1, v0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    if-eqz v1, :cond_9b

    iget v2, v1, Lcom/tapjoy/internal/r7;->c:I

    iget v1, v1, Lcom/tapjoy/internal/r7;->b:I

    sub-int/2addr v2, v1

    int-to-long v1, v2

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-wide v7, v0, Lcom/tapjoy/internal/n;->b:J

    int-to-long v9, v2

    sub-long/2addr v7, v9

    iput-wide v7, v0, Lcom/tapjoy/internal/n;->b:J

    sub-long/2addr v5, v9

    iget-object v1, v0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    iget v7, v1, Lcom/tapjoy/internal/r7;->b:I

    add-int/2addr v7, v2

    iput v7, v1, Lcom/tapjoy/internal/r7;->b:I

    iget v2, v1, Lcom/tapjoy/internal/r7;->c:I

    if-ne v7, v2, :cond_6c

    invoke-virtual {v1}, Lcom/tapjoy/internal/r7;->a()Lcom/tapjoy/internal/r7;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    invoke-static {v1}, Lcom/tapjoy/internal/v6;->a(Lcom/tapjoy/internal/r7;)V

    goto :goto_6c

    :cond_9b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_a1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    :cond_a6
    iput v5, p0, Lcom/tapjoy/internal/z7;->e:I

    invoke-virtual {p0}, Lcom/tapjoy/internal/z7;->i()J

    goto/16 :goto_0

    :cond_ad
    iput v2, p0, Lcom/tapjoy/internal/z7;->e:I

    invoke-virtual {p0}, Lcom/tapjoy/internal/z7;->k()J

    goto/16 :goto_0

    :cond_b4
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected tag 0"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bc
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final f()I
    .registers 7

    iget-wide v0, p0, Lcom/tapjoy/internal/z7;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-object v0, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v0, Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->h()B

    move-result v0

    if-ltz v0, :cond_12

    return v0

    :cond_12
    and-int/lit8 v0, v0, 0x7f

    iget-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-object v1, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v1, Lcom/tapjoy/internal/n;

    invoke-virtual {v1}, Lcom/tapjoy/internal/n;->h()B

    move-result v1

    if-ltz v1, :cond_27

    shl-int/lit8 v1, v1, 0x7

    :goto_25
    or-int/2addr v0, v1

    goto :goto_8b

    :cond_27
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-object v1, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v1, Lcom/tapjoy/internal/n;

    invoke-virtual {v1}, Lcom/tapjoy/internal/n;->h()B

    move-result v1

    if-ltz v1, :cond_3e

    shl-int/lit8 v1, v1, 0xe

    goto :goto_25

    :cond_3e
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-object v1, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v1, Lcom/tapjoy/internal/n;

    invoke-virtual {v1}, Lcom/tapjoy/internal/n;->h()B

    move-result v1

    if-ltz v1, :cond_55

    shl-int/lit8 v1, v1, 0x15

    goto :goto_25

    :cond_55
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-object v1, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v1, Lcom/tapjoy/internal/n;

    invoke-virtual {v1}, Lcom/tapjoy/internal/n;->h()B

    move-result v1

    shl-int/lit8 v4, v1, 0x1c

    or-int/2addr v0, v4

    if-gez v1, :cond_8b

    const/4 v1, 0x0

    :goto_6d
    const/4 v4, 0x5

    if-ge v1, v4, :cond_83

    iget-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-object v4, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v4, Lcom/tapjoy/internal/n;

    invoke-virtual {v4}, Lcom/tapjoy/internal/n;->h()B

    move-result v4

    if-ltz v4, :cond_80

    return v0

    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_83
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed VARINT"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    :goto_8b
    return v0
.end method

.method public final g()I
    .registers 9

    iget v0, p0, Lcom/tapjoy/internal/z7;->e:I

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-ne v0, v1, :cond_b

    iput v2, p0, Lcom/tapjoy/internal/z7;->e:I

    iget v0, p0, Lcom/tapjoy/internal/z7;->f:I

    return v0

    :cond_b
    const/4 v1, 0x6

    if-ne v0, v1, :cond_c0

    :goto_e
    iget-wide v0, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-wide v3, p0, Lcom/tapjoy/internal/z7;->c:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_be

    iget-object v0, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v0, Lcom/tapjoy/internal/n;

    iget-wide v0, v0, Lcom/tapjoy/internal/n;->b:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v0, v3

    if-nez v7, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-nez v0, :cond_be

    invoke-virtual {p0}, Lcom/tapjoy/internal/z7;->f()I

    move-result v0

    if-eqz v0, :cond_b6

    shr-int/lit8 v1, v0, 0x3

    iput v1, p0, Lcom/tapjoy/internal/z7;->f:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_b1

    if-eq v0, v6, :cond_ac

    const/4 v3, 0x3

    if-eq v0, v2, :cond_69

    if-eq v0, v3, :cond_65

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5d

    const/4 v3, 0x5

    if-ne v0, v3, :cond_49

    iput v2, p0, Lcom/tapjoy/internal/z7;->h:I

    iput v3, p0, Lcom/tapjoy/internal/z7;->e:I

    return v1

    :cond_49
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected field encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5d
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected end group"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/z7;->e(I)V

    goto :goto_e

    :cond_69
    iput v3, p0, Lcom/tapjoy/internal/z7;->h:I

    iput v2, p0, Lcom/tapjoy/internal/z7;->e:I

    invoke-virtual {p0}, Lcom/tapjoy/internal/z7;->f()I

    move-result v0

    if-ltz v0, :cond_98

    iget-wide v1, p0, Lcom/tapjoy/internal/z7;->g:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_92

    iget-wide v1, p0, Lcom/tapjoy/internal/z7;->c:J

    iput-wide v1, p0, Lcom/tapjoy/internal/z7;->g:J

    iget-wide v3, p0, Lcom/tapjoy/internal/z7;->b:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tapjoy/internal/z7;->c:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_8c

    iget v0, p0, Lcom/tapjoy/internal/z7;->f:I

    return v0

    :cond_8c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_92
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_98
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ac
    iput v2, p0, Lcom/tapjoy/internal/z7;->h:I

    iput v6, p0, Lcom/tapjoy/internal/z7;->e:I

    return v1

    :cond_b1
    iput v6, p0, Lcom/tapjoy/internal/z7;->h:I

    iput v5, p0, Lcom/tapjoy/internal/z7;->e:I

    return v1

    :cond_b6
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected tag 0"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_be
    const/4 v0, -0x1

    return v0

    :cond_c0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to nextTag()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()I
    .registers 8

    iget v0, p0, Lcom/tapjoy/internal/z7;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1f

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_1f

    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected FIXED32 or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/z7;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v0, Lcom/tapjoy/internal/n;

    iget-wide v2, v0, Lcom/tapjoy/internal/n;->b:J

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_51

    iget-wide v2, p0, Lcom/tapjoy/internal/z7;->b:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tapjoy/internal/z7;->b:J

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->l()I

    move-result v0

    sget-object v2, Lcom/tapjoy/internal/sa;->a:Ljava/nio/charset/Charset;

    const/high16 v2, -0x1000000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x18

    const/high16 v3, 0xff0000

    and-int/2addr v3, v0

    ushr-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v3, v0

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/z7;->b(I)V

    return v0

    :cond_51
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final i()J
    .registers 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tapjoy/internal/z7;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_21

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b

    goto :goto_21

    :cond_b
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected FIXED64 or LENGTH_DELIMITED but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/tapjoy/internal/z7;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    :goto_21
    iget-object v1, v0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v1, Lcom/tapjoy/internal/n;

    iget-wide v3, v1, Lcom/tapjoy/internal/n;->b:J

    const-wide/16 v5, 0x8

    cmp-long v7, v3, v5

    if-ltz v7, :cond_e1

    iget-wide v7, v0, Lcom/tapjoy/internal/z7;->b:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/tapjoy/internal/z7;->b:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_cb

    iget-object v7, v1, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    iget v8, v7, Lcom/tapjoy/internal/r7;->b:I

    iget v9, v7, Lcom/tapjoy/internal/r7;->c:I

    sub-int v10, v9, v8

    const/16 v11, 0x20

    const/16 v12, 0x8

    if-ge v10, v12, :cond_58

    invoke-virtual {v1}, Lcom/tapjoy/internal/n;->l()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    shl-long/2addr v3, v11

    invoke-virtual {v1}, Lcom/tapjoy/internal/n;->l()I

    move-result v1

    int-to-long v7, v1

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    goto :goto_c2

    :cond_58
    iget-object v10, v7, Lcom/tapjoy/internal/r7;->a:[B

    add-int/lit8 v13, v8, 0x1

    aget-byte v8, v10, v8

    int-to-long v14, v8

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v8, 0x38

    shl-long/2addr v14, v8

    add-int/lit8 v8, v13, 0x1

    aget-byte v13, v10, v13

    move-wide/from16 v18, v3

    int-to-long v2, v13

    and-long v2, v2, v16

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v2, v14

    add-int/lit8 v4, v8, 0x1

    aget-byte v8, v10, v8

    int-to-long v13, v8

    and-long v13, v13, v16

    const/16 v8, 0x28

    shl-long/2addr v13, v8

    or-long/2addr v2, v13

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v10, v4

    int-to-long v13, v4

    and-long v13, v13, v16

    shl-long/2addr v13, v11

    or-long/2addr v2, v13

    add-int/lit8 v4, v8, 0x1

    aget-byte v8, v10, v8

    int-to-long v13, v8

    and-long v13, v13, v16

    const/16 v8, 0x18

    shl-long/2addr v13, v8

    or-long/2addr v2, v13

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v10, v4

    int-to-long v13, v4

    and-long v13, v13, v16

    const/16 v4, 0x10

    shl-long/2addr v13, v4

    or-long/2addr v2, v13

    add-int/lit8 v4, v8, 0x1

    aget-byte v8, v10, v8

    int-to-long v13, v8

    and-long v13, v13, v16

    shl-long v11, v13, v12

    or-long/2addr v2, v11

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v10, v4

    int-to-long v10, v4

    and-long v10, v10, v16

    or-long v3, v2, v10

    sub-long v5, v18, v5

    iput-wide v5, v1, Lcom/tapjoy/internal/n;->b:J

    if-ne v8, v9, :cond_c0

    invoke-virtual {v7}, Lcom/tapjoy/internal/r7;->a()Lcom/tapjoy/internal/r7;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    invoke-static {v7}, Lcom/tapjoy/internal/v6;->a(Lcom/tapjoy/internal/r7;)V

    goto :goto_c2

    :cond_c0
    iput v8, v7, Lcom/tapjoy/internal/r7;->b:I

    :goto_c2
    invoke-static {v3, v4}, Lcom/tapjoy/internal/sa;->a(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/z7;->b(I)V

    return-wide v1

    :cond_cb
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "size < 8: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/tapjoy/internal/n;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final j()I
    .registers 4

    iget v0, p0, Lcom/tapjoy/internal/z7;->e:I

    if-eqz v0, :cond_1e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    goto :goto_1e

    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/z7;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/tapjoy/internal/z7;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/z7;->b(I)V

    return v0
.end method

.method public final k()J
    .registers 9

    iget v0, p0, Lcom/tapjoy/internal/z7;->e:I

    if-eqz v0, :cond_1e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    goto :goto_1e

    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/z7;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_1e
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_22
    const/16 v4, 0x40

    if-ge v3, v4, :cond_45

    iget-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tapjoy/internal/z7;->b:J

    iget-object v4, p0, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v4, Lcom/tapjoy/internal/n;

    invoke-virtual {v4}, Lcom/tapjoy/internal/n;->h()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_42

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/z7;->b(I)V

    return-wide v0

    :cond_42
    add-int/lit8 v3, v3, 0x7

    goto :goto_22

    :cond_45
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "WireInput encountered a malformed varint"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
