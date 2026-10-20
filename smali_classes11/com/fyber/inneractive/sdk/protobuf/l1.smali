###### Class com.fyber.inneractive.sdk.protobuf.l1 (com.fyber.inneractive.sdk.protobuf.l1)
.class public final Lcom/fyber/inneractive/sdk/protobuf/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/fyber/inneractive/sdk/protobuf/l1;


# instance fields
.field public a:I

.field public b:[I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/l1;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/fyber/inneractive/sdk/protobuf/l1;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/l1;->f:Lcom/fyber/inneractive/sdk/protobuf/l1;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/fyber/inneractive/sdk/protobuf/l1;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->d:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->b:[I

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->e:Z

    return-void
.end method

.method public static a(Lcom/fyber/inneractive/sdk/protobuf/l1;Lcom/fyber/inneractive/sdk/protobuf/l1;)Lcom/fyber/inneractive/sdk/protobuf/l1;
    .registers 8

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    iget v1, p1, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/protobuf/l1;->b:[I

    iget v3, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    iget v4, p1, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    iget p0, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    iget p1, p1, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/fyber/inneractive/sdk/protobuf/l1;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/l1;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public static a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_58

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_40

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2c

    const/4 v1, 0x5

    if-ne p0, v1, :cond_22

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object p1, p2, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {p1, v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto :goto_65

    :cond_22
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_2c
    move-object p0, p2

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v2, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/l;->i(II)V

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/l1;

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a(Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    iget-object p0, p0, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l;->i(II)V

    goto :goto_65

    :cond_40
    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/i;

    check-cast p2, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object p0, p2, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {p0, v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(ILcom/fyber/inneractive/sdk/protobuf/i;)V

    goto :goto_65

    :cond_4a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    check-cast p2, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {p2, v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto :goto_65

    :cond_58
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    check-cast p2, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {p2, v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    :goto_65
    return-void
.end method

.method public static c()Lcom/fyber/inneractive/sdk/protobuf/l1;
    .registers 5

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/l1;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/fyber/inneractive/sdk/protobuf/l1;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(ILjava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a()V

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->b:[I

    array-length v2, v1

    if-ne v0, v2, :cond_21

    const/4 v2, 0x4

    if-ge v0, v2, :cond_10

    const/16 v2, 0x8

    goto :goto_12

    :cond_10
    shr-int/lit8 v2, v0, 0x1

    :goto_12
    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->b:[I

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    :cond_21
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->b:[I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/protobuf/s1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_c
    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->b:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method

.method public a(ILcom/fyber/inneractive/sdk/protobuf/j;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a()V

    sget v0, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    const/4 v2, 0x1

    if-eqz v1, :cond_63

    if-eq v1, v2, :cond_57

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4f

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2d

    if-eq v1, v4, :cond_2c

    const/4 v0, 0x5

    if-ne v1, v0, :cond_27

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/protobuf/j;->h()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a(ILjava/lang/Object;)V

    return v2

    :cond_27
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_2c
    return v3

    :cond_2d
    new-instance v1, Lcom/fyber/inneractive/sdk/protobuf/l1;

    const/16 v5, 0x8

    new-array v6, v5, [I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v1, v3, v6, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/l1;-><init>(I[I[Ljava/lang/Object;Z)V

    :cond_38
    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/protobuf/j;->t()I

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {v1, v3, p2}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a(ILcom/fyber/inneractive/sdk/protobuf/j;)Z

    move-result v3

    if-nez v3, :cond_38

    :cond_44
    invoke-static {v0, v4}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/j;->a(I)V

    invoke-virtual {p0, p1, v1}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a(ILjava/lang/Object;)V

    return v2

    :cond_4f
    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/protobuf/j;->e()Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a(ILjava/lang/Object;)V

    return v2

    :cond_57
    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/protobuf/j;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a(ILjava/lang/Object;)V

    return v2

    :cond_63
    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/protobuf/j;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a(ILjava/lang/Object;)V

    return v2
.end method

.method public b()I
    .registers 7

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    if-ge v0, v2, :cond_7b

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->b:[I

    aget v2, v2, v0

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_69

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5a

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4f

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3d

    const/4 v4, 0x5

    if-ne v2, v4, :cond_33

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(II)I

    move-result v2

    goto :goto_77

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3d
    invoke-static {v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/fyber/inneractive/sdk/protobuf/l1;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/protobuf/l1;->b()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_77

    :cond_4f
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-static {v3, v2}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/i;)I

    move-result v2

    goto :goto_77

    :cond_5a
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IJ)I

    move-result v2

    goto :goto_77

    :cond_69
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->e(IJ)I

    move-result v2

    :goto_77
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_7b
    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->d:I

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Lcom/fyber/inneractive/sdk/protobuf/l1;

    if-nez v2, :cond_d

    return v1

    :cond_d
    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/l1;

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    if-ne v2, v3, :cond_47

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->b:[I

    iget-object v4, p1, Lcom/fyber/inneractive/sdk/protobuf/l1;->b:[I

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v2, :cond_27

    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_24

    const/4 v2, 0x0

    goto :goto_28

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_27
    const/4 v2, 0x1

    :goto_28
    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    iget v3, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const/4 p1, 0x0

    goto :goto_43

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_42
    const/4 p1, 0x1

    :goto_43
    if-nez p1, :cond_46

    goto :goto_47

    :cond_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public hashCode()I
    .registers 9

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->b:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_e
    if-ge v5, v0, :cond_18

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_18
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/l1;->a:I

    :goto_1f
    if-ge v3, v2, :cond_2d

    mul-int/lit8 v4, v4, 0x1f

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_2d
    add-int/2addr v1, v4

    return v1
.end method
