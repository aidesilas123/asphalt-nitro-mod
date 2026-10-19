###### Class com.fyber.inneractive.sdk.protobuf.j.d (com.fyber.inneractive.sdk.protobuf.j$d)
.class public final Lcom/fyber/inneractive/sdk/protobuf/j$d;
.super Lcom/fyber/inneractive/sdk/protobuf/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final e:Ljava/nio/ByteBuffer;

.field public final f:Z

.field public final g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/j;-><init>(Lcom/fyber/inneractive/sdk/protobuf/j$a;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->g:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->j:J

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->f:Z

    return-void
.end method


# virtual methods
.method public A()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->w()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->e()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public final B()V
    .registers 5

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->j:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m:I

    if-le v3, v2, :cond_19

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->k:I

    int-to-long v2, v3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    goto :goto_1c

    :cond_19
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->k:I

    :goto_1c
    return-void
.end method

.method public final C()I
    .registers 5

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public a()I
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->l:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->a()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public a(ILcom/fyber/inneractive/sdk/protobuf/o0$a;Lcom/fyber/inneractive/sdk/protobuf/q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j;->a:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/j;->b:I

    if-ge v0, v1, :cond_1e

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j;->a:I

    check-cast p2, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;

    invoke-virtual {p2, p0, p3}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->a(Lcom/fyber/inneractive/sdk/protobuf/j;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->a(I)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/j;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/j;->a:I

    return-void

    :cond_1e
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->h()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public a(Lcom/fyber/inneractive/sdk/protobuf/o0$a;Lcom/fyber/inneractive/sdk/protobuf/q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m()I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/j;->a:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j;->b:I

    if-ge v1, v2, :cond_29

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->d(I)I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/j;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/j;->a:I

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;

    invoke-virtual {p1, p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->a(Lcom/fyber/inneractive/sdk/protobuf/j;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->a(I)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/j;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/j;->a:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->B()V

    return-void

    :cond_29
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->h()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public b()I
    .registers 5

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->j:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final b(J)I
    .registers 5

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->g:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->B()V

    return-void
.end method

.method public c()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public d(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->b()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m:I

    if-gt p1, v0, :cond_11

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->B()V

    return v0

    :cond_11
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1

    :cond_16
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->f()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public d()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public e()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m()I

    move-result v0

    if-lez v0, :cond_27

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->C()I

    move-result v1

    if-gt v0, v1, :cond_27

    new-array v1, v0, [B

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    int-to-long v10, v0

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    const-wide/16 v6, 0x0

    move-object v5, v1

    move-wide v8, v10

    invoke-virtual/range {v2 .. v9}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J[BJJ)V

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/i;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/i$h;

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/i$h;-><init>([B)V

    return-object v0

    :cond_27
    if-nez v0, :cond_2c

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/i;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    return-object v0

    :cond_2c
    if-gez v0, :cond_33

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->f()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0

    :cond_33
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public e(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_43

    if-eq v0, v2, :cond_3d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_35

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v0, v3, :cond_20

    if-eq v0, v4, :cond_1f

    const/4 p1, 0x5

    if-ne v0, p1, :cond_1a

    invoke-virtual {p0, v4}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->f(I)V

    return v2

    :cond_1a
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_1f
    return v1

    :cond_20
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->t()I

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->e(I)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_2c
    ushr-int/2addr p1, v3

    invoke-static {p1, v4}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->a(I)V

    return v2

    :cond_35
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->f(I)V

    return v2

    :cond_3d
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->f(I)V

    return v2

    :cond_43
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->C()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_65

    :goto_4b
    if-ge v1, v0, :cond_60

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    sget-object p1, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {p1, v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result p1

    if-ltz p1, :cond_5d

    goto :goto_6d

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_60
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->e()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1

    :cond_65
    :goto_65
    if-ge v1, v0, :cond_71

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->w()B

    move-result p1

    if-ltz p1, :cond_6e

    :goto_6d
    return v2

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_71
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->e()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public f()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->y()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public f(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_f

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->C()I

    move-result v0

    if-gt p1, v0, :cond_f

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    return-void

    :cond_f
    if-gez p1, :cond_16

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->f()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1

    :cond_16
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public g()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m()I

    move-result v0

    return v0
.end method

.method public h()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->x()I

    move-result v0

    return v0
.end method

.method public i()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public k()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m()I

    move-result v0

    return v0
.end method

.method public l()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    goto/16 :goto_87

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    sget-object v6, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v6, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v0

    if-ltz v0, :cond_19

    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    return v0

    :cond_19
    iget-wide v7, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    sub-long/2addr v7, v4

    const-wide/16 v9, 0x9

    cmp-long v1, v7, v9

    if-gez v1, :cond_23

    goto :goto_87

    :cond_23
    add-long v7, v4, v2

    invoke-virtual {v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_31

    xor-int/lit8 v0, v0, -0x80

    goto :goto_8d

    :cond_31
    add-long v4, v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_40

    xor-int/lit16 v0, v0, 0x3f80

    :cond_3e
    move-wide v7, v4

    goto :goto_8d

    :cond_40
    add-long v7, v4, v2

    invoke-virtual {v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_50

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_8d

    :cond_50
    add-long v4, v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    shl-int/lit8 v7, v1, 0x1c

    xor-int/2addr v0, v7

    const v7, 0xfe03f80

    xor-int/2addr v0, v7

    if-gez v1, :cond_3e

    add-long v7, v4, v2

    invoke-virtual {v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    if-gez v1, :cond_8d

    add-long v4, v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    if-gez v1, :cond_3e

    add-long v7, v4, v2

    invoke-virtual {v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    if-gez v1, :cond_8d

    add-long v4, v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    if-gez v1, :cond_3e

    add-long v7, v4, v2

    invoke-virtual {v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    if-gez v1, :cond_8d

    :goto_87
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->A()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_8d
    :goto_8d
    iput-wide v7, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    return v0
.end method

.method public n()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->x()I

    move-result v0

    return v0
.end method

.method public o()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m()I

    move-result v0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/j;->b(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/j;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m()I

    move-result v0

    if-lez v0, :cond_27

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->C()I

    move-result v1

    if-gt v0, v1, :cond_27

    new-array v1, v0, [B

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    int-to-long v10, v0

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    const-wide/16 v6, 0x0

    move-object v5, v1

    move-wide v8, v10

    invoke-virtual/range {v2 .. v9}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J[BJJ)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    add-long/2addr v1, v10

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    return-object v0

    :cond_27
    if-nez v0, :cond_2c

    const-string v0, ""

    return-object v0

    :cond_2c
    if-gez v0, :cond_33

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->f()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0

    :cond_33
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public s()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m()I

    move-result v0

    if-lez v0, :cond_43

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->C()I

    move-result v1

    if-gt v0, v1, :cond_43

    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    invoke-virtual {p0, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->b(J)I

    move-result v1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->e:Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/fyber/inneractive/sdk/protobuf/q1;->a:Lcom/fyber/inneractive/sdk/protobuf/q1$b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    add-int/2addr v4, v1

    invoke-virtual {v3, v2, v4, v0}, Lcom/fyber/inneractive/sdk/protobuf/q1$b;->a([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_2d
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {v3, v2, v1, v0}, Lcom/fyber/inneractive/sdk/protobuf/q1$b;->b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_38
    invoke-virtual {v3, v2, v1, v0}, Lcom/fyber/inneractive/sdk/protobuf/q1$b;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    :goto_3c
    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    return-object v1

    :cond_43
    if-nez v0, :cond_48

    const-string v0, ""

    return-object v0

    :cond_48
    if-gtz v0, :cond_4f

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->f()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0

    :cond_4f
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public t()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->l:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m()I

    move-result v0

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->l:I

    sget v1, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_17

    return v0

    :cond_17
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->b()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public u()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->m()I

    move-result v0

    return v0
.end method

.method public v()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method public w()B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v2, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v0

    return v0

    :cond_14
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public x()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3b

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v2, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const-wide/16 v4, 0x2

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const-wide/16 v4, 0x3

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v3

    return v0

    :cond_3b
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public y()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_74

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v2, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const-wide/16 v7, 0x1

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x2

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x3

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x4

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x5

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x6

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x7

    add-long/2addr v0, v7

    invoke-virtual {v2, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0

    :cond_74
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public z()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    goto/16 :goto_cd

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    sget-object v6, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v6, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v0

    if-ltz v0, :cond_1a

    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    int-to-long v0, v0

    return-wide v0

    :cond_1a
    iget-wide v7, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->h:J

    sub-long/2addr v7, v4

    const-wide/16 v9, 0x9

    cmp-long v1, v7, v9

    if-gez v1, :cond_25

    goto/16 :goto_cd

    :cond_25
    add-long v7, v4, v2

    invoke-virtual {v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_35

    xor-int/lit8 v0, v0, -0x80

    :goto_32
    int-to-long v0, v0

    goto/16 :goto_d3

    :cond_35
    add-long v4, v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_46

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_43
    :goto_43
    move-wide v7, v4

    goto/16 :goto_d3

    :cond_46
    add-long v7, v4, v2

    invoke-virtual {v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_56

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_32

    :cond_56
    int-to-long v0, v0

    add-long v4, v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v7

    int-to-long v7, v7

    const/16 v9, 0x1c

    shl-long/2addr v7, v9

    xor-long/2addr v0, v7

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-ltz v9, :cond_6d

    const-wide/32 v2, 0xfe03f80

    :goto_6b
    xor-long/2addr v0, v2

    goto :goto_43

    :cond_6d
    add-long v9, v4, v2

    invoke-virtual {v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v11, 0x23

    shl-long/2addr v4, v11

    xor-long/2addr v0, v4

    cmp-long v4, v0, v7

    if-gez v4, :cond_84

    const-wide v2, -0x7f01fc080L

    :goto_81
    xor-long/2addr v0, v2

    move-wide v7, v9

    goto :goto_d3

    :cond_84
    add-long v4, v9, v2

    invoke-virtual {v6, v9, v10}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v9

    int-to-long v9, v9

    const/16 v11, 0x2a

    shl-long/2addr v9, v11

    xor-long/2addr v0, v9

    cmp-long v9, v0, v7

    if-ltz v9, :cond_99

    const-wide v2, 0x3f80fe03f80L

    goto :goto_6b

    :cond_99
    add-long v9, v4, v2

    invoke-virtual {v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v11, 0x31

    shl-long/2addr v4, v11

    xor-long/2addr v0, v4

    cmp-long v4, v0, v7

    if-gez v4, :cond_ae

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_81

    :cond_ae
    add-long v4, v9, v2

    invoke-virtual {v6, v9, v10}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v9

    int-to-long v9, v9

    const/16 v11, 0x38

    shl-long/2addr v9, v11

    xor-long/2addr v0, v9

    const-wide v9, 0xfe03f80fe03f80L

    xor-long/2addr v0, v9

    cmp-long v9, v0, v7

    if-gez v9, :cond_43

    add-long/2addr v2, v4

    invoke-virtual {v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v4, v7

    if-gez v6, :cond_d2

    :goto_cd
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j$d;->A()J

    move-result-wide v0

    return-wide v0

    :cond_d2
    move-wide v7, v2

    :goto_d3
    iput-wide v7, p0, Lcom/fyber/inneractive/sdk/protobuf/j$d;->i:J

    return-wide v0
.end method
