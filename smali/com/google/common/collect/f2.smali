###### Class com.google.common.collect.f2 (com.google.common.collect.f2)
.class Lcom/google/common/collect/f2;
.super Ljava/lang/Object;
.source "ObjectCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/f2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field transient a:[Ljava/lang/Object;

.field transient b:[I

.field transient c:I

.field transient d:I

.field private transient e:[I

.field transient f:[J

.field private transient g:F

.field private transient h:I


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/f2;->n(IF)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/f2;-><init>(IF)V

    return-void
.end method

.method constructor <init>(IF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/f2;->n(IF)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/f2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/f2<",
            "+TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/f2;->C()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/f2;->n(IF)V

    invoke-virtual {p1}, Lcom/google/common/collect/f2;->e()I

    move-result v0

    :goto_10
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    invoke-virtual {p1, v0}, Lcom/google/common/collect/f2;->i(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/f2;->k(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/f2;->u(Ljava/lang/Object;I)I

    invoke-virtual {p1, v0}, Lcom/google/common/collect/f2;->s(I)I

    move-result v0

    goto :goto_10

    :cond_23
    return-void
.end method

.method private A(I)V
    .registers 13

    iget-object v0, p0, Lcom/google/common/collect/f2;->e:[I

    array-length v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_d

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/common/collect/f2;->h:I

    return-void

    :cond_d
    int-to-float v0, p1

    iget v1, p0, Lcom/google/common/collect/f2;->g:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Lcom/google/common/collect/f2;->r(I)[I

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/f2;->f:[J

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_1f
    iget v4, p0, Lcom/google/common/collect/f2;->c:I

    if-ge v3, v4, :cond_41

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lcom/google/common/collect/f2;->h(J)I

    move-result v4

    and-int v5, v4, v2

    aget v6, p1, v5

    aput v3, p1, v5

    int-to-long v4, v4

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    const-wide v7, 0xffffffffL

    int-to-long v9, v6

    and-long v6, v9, v7

    or-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_41
    iput v0, p0, Lcom/google/common/collect/f2;->h:I

    iput-object p1, p0, Lcom/google/common/collect/f2;->e:[I

    return-void
.end method

.method private static D(JI)J
    .registers 7

    const-wide v0, -0x100000000L

    and-long/2addr p0, v0

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static b()Lcom/google/common/collect/f2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/f2<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f2;

    invoke-direct {v0}, Lcom/google/common/collect/f2;-><init>()V

    return-object v0
.end method

.method static c(I)Lcom/google/common/collect/f2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/f2<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f2;-><init>(I)V

    return-object v0
.end method

.method private static h(J)I
    .registers 3

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static j(J)I
    .registers 2

    long-to-int p1, p0

    return p1
.end method

.method private l()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/f2;->e:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static q(I)[J
    .registers 3

    new-array p0, p0, [J

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-object p0
.end method

.method private static r(I)[I
    .registers 2

    new-array p0, p0, [I

    const/4 v0, -0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method private w(Ljava/lang/Object;I)I
    .registers 12

    invoke-direct {p0}, Lcom/google/common/collect/f2;->l()I

    move-result v0

    and-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/common/collect/f2;->e:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    return v2

    :cond_e
    const/4 v4, -0x1

    :goto_f
    iget-object v5, p0, Lcom/google/common/collect/f2;->f:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/f2;->h(J)I

    move-result v5

    if-ne v5, p2, :cond_56

    iget-object v5, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    iget-object p1, p0, Lcom/google/common/collect/f2;->b:[I

    aget p1, p1, v1

    if-ne v4, v3, :cond_36

    iget-object p2, p0, Lcom/google/common/collect/f2;->e:[I

    iget-object v2, p0, Lcom/google/common/collect/f2;->f:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/common/collect/f2;->j(J)I

    move-result v2

    aput v2, p2, v0

    goto :goto_46

    :cond_36
    iget-object p2, p0, Lcom/google/common/collect/f2;->f:[J

    aget-wide v2, p2, v4

    aget-wide v5, p2, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/f2;->j(J)I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/google/common/collect/f2;->D(JI)J

    move-result-wide v2

    aput-wide v2, p2, v4

    :goto_46
    invoke-virtual {p0, v1}, Lcom/google/common/collect/f2;->p(I)V

    iget p2, p0, Lcom/google/common/collect/f2;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/f2;->c:I

    iget p2, p0, Lcom/google/common/collect/f2;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/f2;->d:I

    return p1

    :cond_56
    iget-object v4, p0, Lcom/google/common/collect/f2;->f:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/f2;->j(J)I

    move-result v4

    if-ne v4, v3, :cond_61

    return v2

    :cond_61
    move v8, v4

    move v4, v1

    move v1, v8

    goto :goto_f
.end method

.method private z(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/f2;->f:[J

    array-length v0, v0

    if-le p1, v0, :cond_17

    ushr-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    if-gez p1, :cond_12

    const p1, 0x7fffffff

    :cond_12
    if-eq p1, v0, :cond_17

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f2;->y(I)V

    :cond_17
    return-void
.end method


# virtual methods
.method B(II)V
    .registers 4

    iget v0, p0, Lcom/google/common/collect/f2;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/google/common/collect/f2;->b:[I

    aput p2, v0, p1

    return-void
.end method

.method C()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/f2;->c:I

    return v0
.end method

.method public a()V
    .registers 6

    iget v0, p0, Lcom/google/common/collect/f2;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/f2;->d:I

    iget-object v0, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/f2;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/f2;->b:[I

    iget v1, p0, Lcom/google/common/collect/f2;->c:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/f2;->e:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/common/collect/f2;->f:[J

    const-wide/16 v3, -0x1

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    iput v2, p0, Lcom/google/common/collect/f2;->c:I

    return-void
.end method

.method d(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/f2;->f:[J

    array-length v0, v0

    if-le p1, v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f2;->y(I)V

    :cond_8
    iget v0, p0, Lcom/google/common/collect/f2;->h:I

    if-lt p1, v0, :cond_1c

    const/4 v0, 0x2

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/f2;->A(I)V

    :cond_1c
    return-void
.end method

.method e()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/f2;->c:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public f(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f2;->m(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    iget-object v0, p0, Lcom/google/common/collect/f2;->b:[I

    aget p1, v0, p1

    :goto_d
    return p1
.end method

.method g(I)Lcom/google/common/collect/c2$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/c2$a<",
            "TK;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/f2;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    new-instance v0, Lcom/google/common/collect/f2$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/f2$a;-><init>(Lcom/google/common/collect/f2;I)V

    return-object v0
.end method

.method i(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/f2;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method k(I)I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/f2;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/google/common/collect/f2;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method m(Ljava/lang/Object;)I
    .registers 7

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/f2;->e:[I

    invoke-direct {p0}, Lcom/google/common/collect/f2;->l()I

    move-result v2

    and-int/2addr v2, v0

    aget v1, v1, v2

    :goto_d
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    iget-object v2, p0, Lcom/google/common/collect/f2;->f:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/common/collect/f2;->h(J)I

    move-result v2

    if-ne v2, v0, :cond_25

    iget-object v2, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    return v1

    :cond_25
    invoke-static {v3, v4}, Lcom/google/common/collect/f2;->j(J)I

    move-result v1

    goto :goto_d

    :cond_2a
    return v2
.end method

.method n(IF)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "Initial capacity must be non-negative"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    const-string v2, "Illegal load factor"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    float-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/google/common/collect/l1;->a(ID)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/f2;->r(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/f2;->e:[I

    iput p2, p0, Lcom/google/common/collect/f2;->g:F

    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    new-array v2, p1, [I

    iput-object v2, p0, Lcom/google/common/collect/f2;->b:[I

    invoke-static {p1}, Lcom/google/common/collect/f2;->q(I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/f2;->f:[J

    int-to-float p1, v0

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/f2;->h:I

    return-void
.end method

.method o(ILjava/lang/Object;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f2;->f:[J

    int-to-long v1, p4

    const/16 p4, 0x20

    shl-long/2addr v1, p4

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    iget-object p4, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    aput-object p2, p4, p1

    iget-object p2, p0, Lcom/google/common/collect/f2;->b:[I

    aput p3, p2, p1

    return-void
.end method

.method p(I)V
    .registers 10

    invoke-virtual {p0}, Lcom/google/common/collect/f2;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge p1, v0, :cond_4b

    iget-object v5, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    iget-object v6, p0, Lcom/google/common/collect/f2;->b:[I

    aget v7, v6, v0

    aput v7, v6, p1

    aput-object v4, v5, v0

    aput v3, v6, v0

    iget-object v3, p0, Lcom/google/common/collect/f2;->f:[J

    aget-wide v4, v3, v0

    aput-wide v4, v3, p1

    aput-wide v1, v3, v0

    invoke-static {v4, v5}, Lcom/google/common/collect/f2;->h(J)I

    move-result v1

    invoke-direct {p0}, Lcom/google/common/collect/f2;->l()I

    move-result v2

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/common/collect/f2;->e:[I

    aget v3, v2, v1

    if-ne v3, v0, :cond_36

    aput p1, v2, v1

    goto :goto_57

    :cond_36
    :goto_36
    iget-object v1, p0, Lcom/google/common/collect/f2;->f:[J

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lcom/google/common/collect/f2;->j(J)I

    move-result v1

    if-ne v1, v0, :cond_49

    iget-object v0, p0, Lcom/google/common/collect/f2;->f:[J

    invoke-static {v4, v5, p1}, Lcom/google/common/collect/f2;->D(JI)J

    move-result-wide v1

    aput-wide v1, v0, v3

    goto :goto_57

    :cond_49
    move v3, v1

    goto :goto_36

    :cond_4b
    iget-object v0, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    aput-object v4, v0, p1

    iget-object v0, p0, Lcom/google/common/collect/f2;->b:[I

    aput v3, v0, p1

    iget-object v0, p0, Lcom/google/common/collect/f2;->f:[J

    aput-wide v1, v0, p1

    :goto_57
    return-void
.end method

.method s(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/google/common/collect/f2;->c:I

    if-ge p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    return p1
.end method

.method t(II)I
    .registers 3

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public u(Ljava/lang/Object;I)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/z;->d(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/common/collect/f2;->f:[J

    iget-object v1, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/f2;->b:[I

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0}, Lcom/google/common/collect/f2;->l()I

    move-result v4

    and-int/2addr v4, v3

    iget v5, p0, Lcom/google/common/collect/f2;->c:I

    iget-object v6, p0, Lcom/google/common/collect/f2;->e:[I

    aget v7, v6, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_20

    aput v5, v6, v4

    goto :goto_41

    :cond_20
    :goto_20
    aget-wide v9, v0, v7

    invoke-static {v9, v10}, Lcom/google/common/collect/f2;->h(J)I

    move-result v4

    if-ne v4, v3, :cond_35

    aget-object v4, v1, v7

    invoke-static {p1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    aget p1, v2, v7

    aput p2, v2, v7

    return p1

    :cond_35
    invoke-static {v9, v10}, Lcom/google/common/collect/f2;->j(J)I

    move-result v4

    if-ne v4, v8, :cond_6c

    invoke-static {v9, v10, v5}, Lcom/google/common/collect/f2;->D(JI)J

    move-result-wide v1

    aput-wide v1, v0, v7

    :goto_41
    const v0, 0x7fffffff

    if-eq v5, v0, :cond_64

    add-int/lit8 v0, v5, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/f2;->z(I)V

    invoke-virtual {p0, v5, p1, p2, v3}, Lcom/google/common/collect/f2;->o(ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/common/collect/f2;->c:I

    iget p1, p0, Lcom/google/common/collect/f2;->h:I

    if-lt v5, p1, :cond_5c

    iget-object p1, p0, Lcom/google/common/collect/f2;->e:[I

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/common/collect/f2;->A(I)V

    :cond_5c
    iget p1, p0, Lcom/google/common/collect/f2;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/f2;->d:I

    const/4 p1, 0x0

    return p1

    :cond_64
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6c
    move v7, v4

    goto :goto_20
.end method

.method public v(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/f2;->w(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method x(I)I
    .registers 6

    iget-object v0, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/f2;->f:[J

    aget-wide v2, v1, p1

    invoke-static {v2, v3}, Lcom/google/common/collect/f2;->h(J)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/f2;->w(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method y(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/f2;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/f2;->b:[I

    iget-object v0, p0, Lcom/google/common/collect/f2;->f:[J

    array-length v1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    if-le p1, v1, :cond_1e

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    :cond_1e
    iput-object v0, p0, Lcom/google/common/collect/f2;->f:[J

    return-void
.end method

###### Class com.google.common.collect.f2.a (com.google.common.collect.f2$a)
.class Lcom/google/common/collect/f2$a;
.super Lcom/google/common/collect/Multisets$f;
.source "ObjectCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$f<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic c:Lcom/google/common/collect/f2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f2;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/f2$a;->c:Lcom/google/common/collect/f2;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$f;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/f2$a;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/f2$a;->b:I

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f2$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method d()V
    .registers 4

    iget v0, p0, Lcom/google/common/collect/f2$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-object v1, p0, Lcom/google/common/collect/f2$a;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v1}, Lcom/google/common/collect/f2;->C()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/common/collect/f2$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/f2$a;->c:Lcom/google/common/collect/f2;

    iget-object v1, v1, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/f2$a;->b:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_1d
    iget-object v0, p0, Lcom/google/common/collect/f2$a;->c:Lcom/google/common/collect/f2;

    iget-object v1, p0, Lcom/google/common/collect/f2$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/f2;->m(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/f2$a;->b:I

    :cond_27
    return-void
.end method

.method public getCount()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/f2$a;->d()V

    iget v0, p0, Lcom/google/common/collect/f2$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v1, p0, Lcom/google/common/collect/f2$a;->c:Lcom/google/common/collect/f2;

    iget-object v1, v1, Lcom/google/common/collect/f2;->b:[I

    aget v0, v1, v0

    :goto_10
    return v0
.end method
