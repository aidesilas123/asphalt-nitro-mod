###### Class com.google.common.collect.h (com.google.common.collect.h)
.class abstract Lcom/google/common/collect/h;
.super Lcom/google/common/collect/k;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/k<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient c:Lcom/google/common/collect/f2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f2<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient d:J


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h;->n(I)Lcom/google/common/collect/f2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {p1}, Lcom/google/common/collect/y2;->h(Ljava/io/ObjectInputStream;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/common/collect/h;->n(I)Lcom/google/common/collect/f2;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/y2;->g(Lcom/google/common/collect/c2;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-static {p0, p1}, Lcom/google/common/collect/y2;->k(Lcom/google/common/collect/c2;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;II)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->m(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_26

    if-eqz p2, :cond_18

    return v2

    :cond_18
    if-lez p3, :cond_25

    iget-object p2, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/f2;->u(Ljava/lang/Object;I)I

    iget-wide p1, p0, Lcom/google/common/collect/h;->d:J

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/collect/h;->d:J

    :cond_25
    return v1

    :cond_26
    iget-object p1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/f2;->k(I)I

    move-result p1

    if-eq p1, p2, :cond_2f

    return v2

    :cond_2f
    if-nez p3, :cond_3d

    iget-object p1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/f2;->x(I)I

    iget-wide v2, p0, Lcom/google/common/collect/h;->d:J

    int-to-long p1, p2

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/common/collect/h;->d:J

    goto :goto_49

    :cond_3d
    iget-object p1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {p1, v0, p3}, Lcom/google/common/collect/f2;->B(II)V

    iget-wide v2, p0, Lcom/google/common/collect/h;->d:J

    sub-int/2addr p3, p2

    int-to-long p1, p3

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/common/collect/h;->d:J

    :goto_49
    return v1
.end method

.method public final K(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final clear()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0}, Lcom/google/common/collect/f2;->a()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/h;->d:J

    return-void
.end method

.method final g()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0}, Lcom/google/common/collect/f2;->C()I

    move-result v0

    return v0
.end method

.method final h()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/h$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h$a;-><init>(Lcom/google/common/collect/h;)V

    return-object v0
.end method

.method final i()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/h$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h$b;-><init>(Lcom/google/common/collect/h;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Multisets;->h(Lcom/google/common/collect/c2;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method j(Lcom/google/common/collect/c2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0}, Lcom/google/common/collect/f2;->e()I

    move-result v0

    :goto_9
    if-ltz v0, :cond_21

    iget-object v1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/f2;->i(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/f2;->k(I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/common/collect/c2;->u(Ljava/lang/Object;I)I

    iget-object v1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/f2;->s(I)I

    move-result v0

    goto :goto_9

    :cond_21
    return-void
.end method

.method public final m(Ljava/lang/Object;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    if-nez p2, :cond_e

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->v(Ljava/lang/Object;)I

    move-result p1

    goto :goto_12

    :cond_e
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/f2;->u(Ljava/lang/Object;I)I

    move-result p1

    :goto_12
    iget-wide v0, p0, Lcom/google/common/collect/h;->d:J

    sub-int/2addr p2, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/h;->d:J

    return p1
.end method

.method abstract n(I)Lcom/google/common/collect/f2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/f2<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final s(Ljava/lang/Object;I)I
    .registers 6

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h;->K(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_7
    const/4 v0, 0x0

    if-lez p2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "occurrences cannot be negative: %s"

    invoke-static {v1, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    iget-object v1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/f2;->m(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1c

    return v0

    :cond_1c
    iget-object v0, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->k(I)I

    move-result v0

    if-le v0, p2, :cond_2c

    iget-object v1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    sub-int v2, v0, p2

    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/f2;->B(II)V

    goto :goto_32

    :cond_2c
    iget-object p2, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/f2;->x(I)I

    move p2, v0

    :goto_32
    iget-wide v1, p0, Lcom/google/common/collect/h;->d:J

    int-to-long p1, p2

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lcom/google/common/collect/h;->d:J

    return v0
.end method

.method public final size()I
    .registers 3

    iget-wide v0, p0, Lcom/google/common/collect/h;->d:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public final u(Ljava/lang/Object;I)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h;->K(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    const-string v3, "occurrences cannot be negative: %s"

    invoke-static {v2, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    iget-object v2, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/f2;->m(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    iget-object v0, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/f2;->u(Ljava/lang/Object;I)I

    iget-wide v2, p0, Lcom/google/common/collect/h;->d:J

    int-to-long p1, p2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/common/collect/h;->d:J

    return v1

    :cond_28
    iget-object p1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {p1, v2}, Lcom/google/common/collect/f2;->k(I)I

    move-result p1

    int-to-long v3, p1

    int-to-long v5, p2

    add-long/2addr v3, v5

    const-wide/32 v7, 0x7fffffff

    cmp-long p2, v3, v7

    if-gtz p2, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    const-string p2, "too many occurrences: %s"

    invoke-static {v0, p2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    iget-object p2, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    long-to-int v0, v3

    invoke-virtual {p2, v2, v0}, Lcom/google/common/collect/f2;->B(II)V

    iget-wide v0, p0, Lcom/google/common/collect/h;->d:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/common/collect/h;->d:J

    return p1
.end method
