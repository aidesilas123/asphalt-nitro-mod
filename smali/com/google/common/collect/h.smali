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

###### Class com.google.common.collect.h.a (com.google.common.collect.h$a)
.class Lcom/google/common/collect/h$a;
.super Lcom/google/common/collect/h$c;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/h;->h()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h<",
        "TE;>.c<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/h$a;->e:Lcom/google/common/collect/h;

    invoke-direct {p0, p1}, Lcom/google/common/collect/h$c;-><init>(Lcom/google/common/collect/h;)V

    return-void
.end method


# virtual methods
.method c(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h$a;->e:Lcom/google/common/collect/h;

    iget-object v0, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->i(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.h.b (com.google.common.collect.h$b)
.class Lcom/google/common/collect/h$b;
.super Lcom/google/common/collect/h$c;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/h;->i()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h<",
        "TE;>.c<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/h$b;->e:Lcom/google/common/collect/h;

    invoke-direct {p0, p1}, Lcom/google/common/collect/h$c;-><init>(Lcom/google/common/collect/h;)V

    return-void
.end method


# virtual methods
.method bridge synthetic c(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h$b;->d(I)Lcom/google/common/collect/c2$a;

    move-result-object p1

    return-object p1
.end method

.method d(I)Lcom/google/common/collect/c2$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h$b;->e:Lcom/google/common/collect/h;

    iget-object v0, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->g(I)Lcom/google/common/collect/c2$a;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.h.c (com.google.common.collect.h$c)
.class abstract Lcom/google/common/collect/h$c;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/google/common/collect/h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0}, Lcom/google/common/collect/f2;->e()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/h$c;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/h$c;->b:I

    iget-object p1, p1, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    iget p1, p1, Lcom/google/common/collect/f2;->d:I

    iput p1, p0, Lcom/google/common/collect/h$c;->c:I

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    iget-object v0, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    iget v0, v0, Lcom/google/common/collect/f2;->d:I

    iget v1, p0, Lcom/google/common/collect/h$c;->c:I

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract c(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/h$c;->b()V

    iget v0, p0, Lcom/google/common/collect/h$c;->a:I

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/h$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/common/collect/h$c;->a:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/h$c;->c(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/h$c;->a:I

    iput v1, p0, Lcom/google/common/collect/h$c;->b:I

    iget-object v2, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    iget-object v2, v2, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/f2;->s(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/h$c;->a:I

    return-object v0

    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 7

    invoke-direct {p0}, Lcom/google/common/collect/h$c;->b()V

    iget v0, p0, Lcom/google/common/collect/h$c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/common/collect/z;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    iget-wide v2, v0, Lcom/google/common/collect/h;->d:J

    iget-object v4, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    iget v5, p0, Lcom/google/common/collect/h$c;->b:I

    invoke-virtual {v4, v5}, Lcom/google/common/collect/f2;->x(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/common/collect/h;->d:J

    iget-object v0, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    iget-object v0, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    iget v2, p0, Lcom/google/common/collect/h$c;->a:I

    iget v3, p0, Lcom/google/common/collect/h$c;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/f2;->t(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/h$c;->a:I

    iput v1, p0, Lcom/google/common/collect/h$c;->b:I

    iget-object v0, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    iget-object v0, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    iget v0, v0, Lcom/google/common/collect/f2;->d:I

    iput v0, p0, Lcom/google/common/collect/h$c;->c:I

    return-void
.end method
