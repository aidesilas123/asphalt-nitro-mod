###### Class com.applovin.exoplayer2.ba (com.applovin.exoplayer2.ba)
.class public abstract Lcom/applovin/exoplayer2/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/ba$b;,
        Lcom/applovin/exoplayer2/ba$a;,
        Lcom/applovin/exoplayer2/ba$c;
    }
.end annotation


# static fields
.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/ba;",
            ">;"
        }
    .end annotation
.end field

.field public static final iw:Lcom/applovin/exoplayer2/ba;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/ba$1;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/ba$1;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/ba;->iw:Lcom/applovin/exoplayer2/ba;

    sget-object v0, Lcom/applovin/exoplayer2/q0;->a:Lcom/applovin/exoplayer2/q0;

    sput-object v0, Lcom/applovin/exoplayer2/ba;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/g$a;Landroid/os/IBinder;)Lcom/applovin/exoplayer2/common/a/s;
    .registers 5
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/applovin/exoplayer2/g;",
            ">(",
            "Lcom/applovin/exoplayer2/g$a<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Lcom/applovin/exoplayer2/common/a/s$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/common/a/s$a;-><init>()V

    invoke-static {p1}, Lcom/applovin/exoplayer2/f;->a(Landroid/os/IBinder;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    const/4 v1, 0x0

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {p0, v2}, Lcom/applovin/exoplayer2/g$a;->fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/common/a/s$a;->v(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/s$a;->gd()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p0

    return-object p0
.end method

.method private static ak(I)[I
    .registers 3

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_a

    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    return-object v0
.end method

.method public static synthetic e(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/ba;->q(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba;

    move-result-object p0

    return-object p0
.end method

.method private static q(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba;
    .registers 4

    sget-object v0, Lcom/applovin/exoplayer2/ba$c;->br:Lcom/applovin/exoplayer2/g$a;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/applovin/exoplayer2/ba;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/applovin/exoplayer2/l/b;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/g$a;Landroid/os/IBinder;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/ba$a;->br:Lcom/applovin/exoplayer2/g$a;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/applovin/exoplayer2/ba;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/applovin/exoplayer2/l/b;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/g$a;Landroid/os/IBinder;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/applovin/exoplayer2/ba;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    new-instance v2, Lcom/applovin/exoplayer2/ba$b;

    if-nez p0, :cond_33

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/ba;->ak(I)[I

    move-result-object p0

    :cond_33
    invoke-direct {v2, v0, v1, p0}, Lcom/applovin/exoplayer2/ba$b;-><init>(Lcom/applovin/exoplayer2/common/a/s;Lcom/applovin/exoplayer2/common/a/s;[I)V

    return-object v2
.end method

.method private static t(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(IIZ)I
    .registers 6

    const/4 v0, 0x1

    if-eqz p2, :cond_1c

    if-eq p2, v0, :cond_1b

    const/4 v1, 0x2

    if-ne p2, v1, :cond_15

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/ba;->c(Z)I

    move-result p2

    if-ne p1, p2, :cond_13

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/ba;->d(Z)I

    move-result p1

    goto :goto_14

    :cond_13
    add-int/2addr p1, v0

    :goto_14
    return p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1b
    return p1

    :cond_1c
    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/ba;->c(Z)I

    move-result p2

    if-ne p1, p2, :cond_24

    const/4 p1, -0x1

    goto :goto_25

    :cond_24
    add-int/2addr p1, v0

    :goto_25
    return p1
.end method

.method public final a(ILcom/applovin/exoplayer2/ba$a;Lcom/applovin/exoplayer2/ba$c;IZ)I
    .registers 7

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    invoke-virtual {p0, p2, p3}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$c;->iR:I

    if-ne v0, p1, :cond_1d

    invoke-virtual {p0, p2, p4, p5}, Lcom/applovin/exoplayer2/ba;->a(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_16

    return p2

    :cond_16
    invoke-virtual {p0, p1, p3}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object p1

    iget p1, p1, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    return p1

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/ba$c;",
            "Lcom/applovin/exoplayer2/ba$a;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJJ)Landroid/util/Pair;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method public final a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJJ)Landroid/util/Pair;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/ba$c;",
            "Lcom/applovin/exoplayer2/ba$a;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_1e

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba$c;->dk()J

    move-result-wide p4

    cmp-long p3, p4, p6

    if-nez p3, :cond_1e

    const/4 p1, 0x0

    return-object p1

    :cond_1e
    iget p3, p1, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    invoke-virtual {p0, p3, p2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    :goto_23
    iget v0, p1, Lcom/applovin/exoplayer2/ba$c;->iR:I

    if-ge p3, v0, :cond_3b

    iget-wide v0, p2, Lcom/applovin/exoplayer2/ba$a;->iy:J

    cmp-long v2, v0, p4

    if-eqz v2, :cond_3b

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v1

    iget-wide v1, v1, Lcom/applovin/exoplayer2/ba$a;->iy:J

    cmp-long v3, v1, p4

    if-gtz v3, :cond_3b

    move p3, v0

    goto :goto_23

    :cond_3b
    const/4 p1, 0x1

    invoke-virtual {p0, p3, p2, p1}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    iget-wide v0, p2, Lcom/applovin/exoplayer2/ba$a;->iy:J

    sub-long/2addr p4, v0

    iget-wide v0, p2, Lcom/applovin/exoplayer2/ba$a;->fH:J

    cmp-long p1, v0, p6

    if-eqz p1, :cond_4f

    const-wide/16 p6, 0x1

    sub-long/2addr v0, p6

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    :cond_4f
    const-wide/16 p6, 0x0

    invoke-static {p6, p7, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iget-object p1, p2, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;
.end method

.method public a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;
    .registers 5

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;
.end method

.method public b(IIZ)I
    .registers 6

    const/4 v0, 0x1

    if-eqz p2, :cond_1c

    if-eq p2, v0, :cond_1b

    const/4 v1, 0x2

    if-ne p2, v1, :cond_15

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/ba;->d(Z)I

    move-result p2

    if-ne p1, p2, :cond_13

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/ba;->c(Z)I

    move-result p1

    goto :goto_14

    :cond_13
    sub-int/2addr p1, v0

    :goto_14
    return p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1b
    return p1

    :cond_1c
    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/ba;->d(Z)I

    move-result p2

    if-ne p1, p2, :cond_24

    const/4 p1, -0x1

    goto :goto_25

    :cond_24
    sub-int/2addr p1, v0

    :goto_25
    return p1
.end method

.method public abstract b(I)Ljava/lang/Object;
.end method

.method public final b(ILcom/applovin/exoplayer2/ba$a;Lcom/applovin/exoplayer2/ba$c;IZ)Z
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Lcom/applovin/exoplayer2/ba$c;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public abstract c(Ljava/lang/Object;)I
.end method

.method public c(Z)I
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    goto :goto_e

    :cond_8
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_e
    return p1
.end method

.method public abstract cP()I
.end method

.method public abstract cQ()I
.end method

.method public d(Z)I
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/exoplayer2/ba;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/exoplayer2/ba;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v3

    if-ne v1, v3, :cond_68

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba;->cQ()I

    move-result v1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cQ()I

    move-result v3

    if-eq v1, v3, :cond_21

    goto :goto_68

    :cond_21
    new-instance v1, Lcom/applovin/exoplayer2/ba$c;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/ba$c;-><init>()V

    new-instance v3, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {v3}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    new-instance v4, Lcom/applovin/exoplayer2/ba$c;

    invoke-direct {v4}, Lcom/applovin/exoplayer2/ba$c;-><init>()V

    new-instance v5, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {v5}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    const/4 v6, 0x0

    :goto_36
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v7

    if-ge v6, v7, :cond_4e

    invoke-virtual {p0, v6, v1}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v7

    invoke-virtual {p1, v6, v4}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/applovin/exoplayer2/ba$c;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4b

    return v2

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cQ()I

    move-result v4

    if-ge v1, v4, :cond_67

    invoke-virtual {p0, v1, v3, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v4

    invoke-virtual {p1, v1, v5, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/applovin/exoplayer2/ba$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    return v2

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_67
    return v0

    :cond_68
    :goto_68
    return v2
.end method

.method public hashCode()I
    .registers 7

    new-instance v0, Lcom/applovin/exoplayer2/ba$c;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/ba$c;-><init>()V

    new-instance v1, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v2

    const/16 v3, 0xd9

    add-int/2addr v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_13
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v5

    if-ge v4, v5, :cond_27

    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {p0, v4, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/ba$c;->hashCode()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_27
    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cQ()I

    move-result v0

    add-int/2addr v3, v0

    :goto_2e
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cQ()I

    move-result v0

    if-ge v2, v0, :cond_43

    mul-int/lit8 v3, v3, 0x1f

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba$a;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_43
    return v3
.end method

.method public final isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

###### Class com.applovin.exoplayer2.ba.AnonymousClass1 (com.applovin.exoplayer2.ba$1)
.class Lcom/applovin/exoplayer2/ba$1;
.super Lcom/applovin/exoplayer2/ba;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ba;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;
    .registers 4

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;
    .registers 5

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public b(I)Ljava/lang/Object;
    .registers 2

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public c(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public cP()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public cQ()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.applovin.exoplayer2.ba.a (com.applovin.exoplayer2.ba$a)
.class public final Lcom/applovin/exoplayer2/ba$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/ba$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cN:I

.field public ch:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public fH:J

.field private iA:Lcom/applovin/exoplayer2/h/a/a;

.field public ix:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public iy:J

.field public iz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/r0;->a:Lcom/applovin/exoplayer2/r0;

    sput-object v0, Lcom/applovin/exoplayer2/ba$a;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/applovin/exoplayer2/h/a/a;->NI:Lcom/applovin/exoplayer2/h/a/a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/h/a/a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    return-object p0
.end method

.method public static synthetic b(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba$a;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/ba$a;->r(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p0

    return-object p0
.end method

.method private static r(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba$a;
    .registers 13

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/applovin/exoplayer2/ba$a;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/applovin/exoplayer2/ba$a;->t(I)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/applovin/exoplayer2/ba$a;->t(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/applovin/exoplayer2/ba$a;->t(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/applovin/exoplayer2/ba$a;->t(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3f

    sget-object v0, Lcom/applovin/exoplayer2/h/a/a;->br:Lcom/applovin/exoplayer2/g$a;

    invoke-interface {v0, p0}, Lcom/applovin/exoplayer2/g$a;->fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;

    move-result-object p0

    check-cast p0, Lcom/applovin/exoplayer2/h/a/a;

    goto :goto_41

    :cond_3f
    sget-object p0, Lcom/applovin/exoplayer2/h/a/a;->NI:Lcom/applovin/exoplayer2/h/a/a;

    :goto_41
    move-object v10, p0

    new-instance p0, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/applovin/exoplayer2/ba$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/applovin/exoplayer2/h/a/a;Z)Lcom/applovin/exoplayer2/ba$a;

    return-object p0
.end method

.method private static t(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(J)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/ba$a;->fH:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/applovin/exoplayer2/h/a/a;->x(JJ)I

    move-result p1

    return p1
.end method

.method public B(J)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/ba$a;->fH:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/applovin/exoplayer2/h/a/a;->y(JJ)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/applovin/exoplayer2/ba$a;
    .registers 18
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v8, Lcom/applovin/exoplayer2/h/a/a;->NI:Lcom/applovin/exoplayer2/h/a/a;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/applovin/exoplayer2/ba$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/applovin/exoplayer2/h/a/a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/applovin/exoplayer2/h/a/a;Z)Lcom/applovin/exoplayer2/ba$a;
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/ba$a;->ix:Ljava/lang/Object;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    iput p3, p0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iput-wide p4, p0, Lcom/applovin/exoplayer2/ba$a;->fH:J

    iput-wide p6, p0, Lcom/applovin/exoplayer2/ba$a;->iy:J

    iput-object p8, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    iput-boolean p9, p0, Lcom/applovin/exoplayer2/ba$a;->iz:Z

    return-object p0
.end method

.method public al(I)J
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p1

    iget-wide v0, p1, Lcom/applovin/exoplayer2/h/a/a$a;->rJ:J

    return-wide v0
.end method

.method public am(I)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/a/a$a;->lM()I

    move-result p1

    return p1
.end method

.method public an(I)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/a/a$a;->lO()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public ao(I)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p1

    iget p1, p1, Lcom/applovin/exoplayer2/h/a/a$a;->NQ:I

    return p1
.end method

.method public ap(I)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/h/a/a$a;->NU:Z

    return p1
.end method

.method public aq(I)J
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p1

    iget-wide v0, p1, Lcom/applovin/exoplayer2/h/a/a$a;->NT:J

    return-wide v0
.end method

.method public dd()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ba$a;->fH:J

    return-wide v0
.end method

.method public de()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ba$a;->iy:J

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/h;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public df()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ba$a;->iy:J

    return-wide v0
.end method

.method public dg()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    iget v0, v0, Lcom/applovin/exoplayer2/h/a/a;->NK:I

    return v0
.end method

.method public dh()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    iget v0, v0, Lcom/applovin/exoplayer2/h/a/a;->NO:I

    return v0
.end method

.method public di()J
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/h/a/a;->NM:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_53

    const-class v2, Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_53

    :cond_14
    check-cast p1, Lcom/applovin/exoplayer2/ba$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/ba$a;->ix:Ljava/lang/Object;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ba$a;->ix:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget v2, p0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iget v3, p1, Lcom/applovin/exoplayer2/ba$a;->cN:I

    if-ne v2, v3, :cond_51

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$a;->fH:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ba$a;->fH:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_51

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$a;->iy:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ba$a;->iy:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_51

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ba$a;->iz:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ba$a;->iz:Z

    if-ne v2, v3, :cond_51

    iget-object v2, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    return v0

    :cond_53
    :goto_53
    return v1
.end method

.method public h(II)I
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/h/a/a$a;->ed(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->ix:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0xd9

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    if-nez v0, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_19
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ba$a;->fH:J

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v1, v0

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ba$a;->iy:J

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ba$a;->iz:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/a/a;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method public i(II)J
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$a;->iA:Lcom/applovin/exoplayer2/h/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p1

    iget v0, p1, Lcom/applovin/exoplayer2/h/a/a$a;->NQ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object p1, p1, Lcom/applovin/exoplayer2/h/a/a$a;->tT:[J

    aget-wide v0, p1, p2

    goto :goto_15

    :cond_10
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_15
    return-wide v0
.end method

###### Class com.applovin.exoplayer2.r0 (com.applovin.exoplayer2.r0)
.class public final synthetic Lcom/applovin/exoplayer2/r0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/r0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/r0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/r0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/r0;->a:Lcom/applovin/exoplayer2/r0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/ba$a;->b(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p1

    return-object p1
.end method

###### Class com.applovin.exoplayer2.ba.b (com.applovin.exoplayer2.ba$b)
.class public final Lcom/applovin/exoplayer2/ba$b;
.super Lcom/applovin/exoplayer2/ba;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final iB:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/ba$c;",
            ">;"
        }
    .end annotation
.end field

.field private final iC:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/ba$a;",
            ">;"
        }
    .end annotation
.end field

.field private final iD:[I

.field private final iE:[I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/common/a/s;Lcom/applovin/exoplayer2/common/a/s;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/ba$c;",
            ">;",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/ba$a;",
            ">;[I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ba;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    array-length v1, p3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ba$b;->iB:Lcom/applovin/exoplayer2/common/a/s;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ba$b;->iC:Lcom/applovin/exoplayer2/common/a/s;

    iput-object p3, p0, Lcom/applovin/exoplayer2/ba$b;->iD:[I

    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/applovin/exoplayer2/ba$b;->iE:[I

    :goto_1c
    array-length p1, p3

    if-ge v2, p1, :cond_28

    iget-object p1, p0, Lcom/applovin/exoplayer2/ba$b;->iE:[I

    aget p2, p3, v2

    aput v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_28
    return-void
.end method


# virtual methods
.method public a(IIZ)I
    .registers 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    return p1

    :cond_4
    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/ba$b;->c(Z)I

    move-result v1

    if-ne p1, v1, :cond_14

    const/4 p1, 0x2

    if-ne p2, p1, :cond_12

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/ba$b;->d(Z)I

    move-result p1

    goto :goto_13

    :cond_12
    const/4 p1, -0x1

    :goto_13
    return p1

    :cond_14
    if-eqz p3, :cond_20

    iget-object p2, p0, Lcom/applovin/exoplayer2/ba$b;->iD:[I

    iget-object p3, p0, Lcom/applovin/exoplayer2/ba$b;->iE:[I

    aget p1, p3, p1

    add-int/2addr p1, v0

    aget p1, p2, p1

    goto :goto_21

    :cond_20
    add-int/2addr p1, v0

    :goto_21
    return p1
.end method

.method public a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;
    .registers 14

    iget-object p3, p0, Lcom/applovin/exoplayer2/ba$b;->iC:Lcom/applovin/exoplayer2/common/a/s;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/ba$a;

    iget-object v1, p1, Lcom/applovin/exoplayer2/ba$a;->ix:Ljava/lang/Object;

    iget-object v2, p1, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    iget v3, p1, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ba$a;->fH:J

    iget-wide v6, p1, Lcom/applovin/exoplayer2/ba$a;->iy:J

    invoke-static {p1}, Lcom/applovin/exoplayer2/ba$a;->a(Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/h/a/a;

    move-result-object v8

    iget-boolean v9, p1, Lcom/applovin/exoplayer2/ba$a;->iz:Z

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lcom/applovin/exoplayer2/ba$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/applovin/exoplayer2/h/a/a;Z)Lcom/applovin/exoplayer2/ba$a;

    return-object p2
.end method

.method public a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;
    .registers 27

    move-object/from16 v15, p2

    move-object/from16 v0, p2

    move-object/from16 v13, p0

    iget-object v1, v13, Lcom/applovin/exoplayer2/ba$b;->iB:Lcom/applovin/exoplayer2/common/a/s;

    move/from16 v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/applovin/exoplayer2/ba$c;

    iget-object v1, v14, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    iget-object v2, v14, Lcom/applovin/exoplayer2/ba$c;->gL:Lcom/applovin/exoplayer2/ab;

    iget-object v3, v14, Lcom/applovin/exoplayer2/ba$c;->iI:Ljava/lang/Object;

    iget-wide v4, v14, Lcom/applovin/exoplayer2/ba$c;->iJ:J

    iget-wide v6, v14, Lcom/applovin/exoplayer2/ba$c;->iK:J

    iget-wide v8, v14, Lcom/applovin/exoplayer2/ba$c;->iL:J

    iget-boolean v10, v14, Lcom/applovin/exoplayer2/ba$c;->iM:Z

    iget-boolean v11, v14, Lcom/applovin/exoplayer2/ba$c;->iN:Z

    iget-object v12, v14, Lcom/applovin/exoplayer2/ba$c;->eb:Lcom/applovin/exoplayer2/ab$e;

    move-object/from16 p3, v0

    move-object/from16 p1, v1

    iget-wide v0, v14, Lcom/applovin/exoplayer2/ba$c;->iP:J

    move-object/from16 p4, v2

    move-object v2, v14

    move-wide v13, v0

    iget-wide v0, v2, Lcom/applovin/exoplayer2/ba$c;->fH:J

    move-wide v15, v0

    iget v0, v2, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    move/from16 v17, v0

    iget v0, v2, Lcom/applovin/exoplayer2/ba$c;->iR:I

    move/from16 v18, v0

    iget-wide v0, v2, Lcom/applovin/exoplayer2/ba$c;->iS:J

    move-wide/from16 v19, v0

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    move-object/from16 v21, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v0 .. v20}, Lcom/applovin/exoplayer2/ba$c;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ab;Ljava/lang/Object;JJJZZLcom/applovin/exoplayer2/ab$e;JJIIJ)Lcom/applovin/exoplayer2/ba$c;

    move-object/from16 v1, v21

    iget-boolean v0, v1, Lcom/applovin/exoplayer2/ba$c;->iz:Z

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/applovin/exoplayer2/ba$c;->iz:Z

    return-object v1
.end method

.method public b(IIZ)I
    .registers 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    return p1

    :cond_4
    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/ba$b;->d(Z)I

    move-result v1

    if-ne p1, v1, :cond_14

    const/4 p1, 0x2

    if-ne p2, p1, :cond_12

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/ba$b;->c(Z)I

    move-result p1

    goto :goto_13

    :cond_12
    const/4 p1, -0x1

    :goto_13
    return p1

    :cond_14
    if-eqz p3, :cond_20

    iget-object p2, p0, Lcom/applovin/exoplayer2/ba$b;->iD:[I

    iget-object p3, p0, Lcom/applovin/exoplayer2/ba$b;->iE:[I

    aget p1, p3, p1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    goto :goto_21

    :cond_20
    sub-int/2addr p1, v0

    :goto_21
    return p1
.end method

.method public b(I)Ljava/lang/Object;
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(Ljava/lang/Object;)I
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(Z)I
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/applovin/exoplayer2/ba$b;->iD:[I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba$b;->cP()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    goto :goto_1b

    :cond_15
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba$b;->cP()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1b
    return p1
.end method

.method public cP()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$b;->iB:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public cQ()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$b;->iC:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public d(Z)I
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/applovin/exoplayer2/ba$b;->iD:[I

    aget v0, p1, v0

    :cond_f
    return v0
.end method

###### Class com.applovin.exoplayer2.ba.c (com.applovin.exoplayer2.ba$c)
.class public final Lcom/applovin/exoplayer2/ba$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/ba$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final iF:Ljava/lang/Object;

.field private static final iG:Ljava/lang/Object;

.field private static final iH:Lcom/applovin/exoplayer2/ab;


# instance fields
.field public ch:Ljava/lang/Object;

.field public eb:Lcom/applovin/exoplayer2/ab$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public er:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public fH:J

.field public gL:Lcom/applovin/exoplayer2/ab;

.field public iI:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public iJ:J

.field public iK:J

.field public iL:J

.field public iM:Z

.field public iN:Z

.field public iO:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public iP:J

.field public iQ:I

.field public iR:I

.field public iS:J

.field public iz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/ba$c;->iF:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/ba$c;->iG:Ljava/lang/Object;

    new-instance v0, Lcom/applovin/exoplayer2/ab$b;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/ab$b;-><init>()V

    const-string v1, "com.applovin.exoplayer2.Timeline"

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ab$b;->n(Ljava/lang/String;)Lcom/applovin/exoplayer2/ab$b;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ab$b;->b(Landroid/net/Uri;)Lcom/applovin/exoplayer2/ab$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ab$b;->bV()Lcom/applovin/exoplayer2/ab;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/ba$c;->iH:Lcom/applovin/exoplayer2/ab;

    sget-object v0, Lcom/applovin/exoplayer2/s0;->a:Lcom/applovin/exoplayer2/s0;

    sput-object v0, Lcom/applovin/exoplayer2/ba$c;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/applovin/exoplayer2/ba$c;->iF:Ljava/lang/Object;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    sget-object v0, Lcom/applovin/exoplayer2/ba$c;->iH:Lcom/applovin/exoplayer2/ab;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ba$c;->gL:Lcom/applovin/exoplayer2/ab;

    return-void
.end method

.method public static synthetic b(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba$c;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/ba$c;->s(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object p0

    return-object p0
.end method

.method private static s(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba$c;
    .registers 27

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    sget-object v3, Lcom/applovin/exoplayer2/ab;->br:Lcom/applovin/exoplayer2/g$a;

    invoke-interface {v3, v1}, Lcom/applovin/exoplayer2/g$a;->fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/ab;

    move-object v5, v1

    goto :goto_19

    :cond_18
    move-object v5, v2

    :goto_19
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_60

    sget-object v2, Lcom/applovin/exoplayer2/ab$e;->br:Lcom/applovin/exoplayer2/g$a;

    invoke-interface {v2, v1}, Lcom/applovin/exoplayer2/g$a;->fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/applovin/exoplayer2/ab$e;

    :cond_60
    move-object v15, v2

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v24, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/applovin/exoplayer2/ba$c;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    new-instance v0, Lcom/applovin/exoplayer2/ba$c;

    move-object v3, v0

    invoke-direct {v0}, Lcom/applovin/exoplayer2/ba$c;-><init>()V

    sget-object v4, Lcom/applovin/exoplayer2/ba$c;->iG:Ljava/lang/Object;

    const/4 v6, 0x0

    move-wide/from16 v7, v24

    invoke-virtual/range {v3 .. v23}, Lcom/applovin/exoplayer2/ba$c;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ab;Ljava/lang/Object;JJJZZLcom/applovin/exoplayer2/ab$e;JJIIJ)Lcom/applovin/exoplayer2/ba$c;

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/ba$c;->iz:Z

    return-object v0
.end method

.method private static t(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ab;Ljava/lang/Object;JJJZZLcom/applovin/exoplayer2/ab$e;JJIIJ)Lcom/applovin/exoplayer2/ba$c;
    .registers 26
    .param p2    # Lcom/applovin/exoplayer2/ab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/applovin/exoplayer2/ab$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p12

    move-object v3, p1

    iput-object v3, v0, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    if-eqz v1, :cond_b

    move-object v3, v1

    goto :goto_d

    :cond_b
    sget-object v3, Lcom/applovin/exoplayer2/ba$c;->iH:Lcom/applovin/exoplayer2/ab;

    :goto_d
    iput-object v3, v0, Lcom/applovin/exoplayer2/ba$c;->gL:Lcom/applovin/exoplayer2/ab;

    if-eqz v1, :cond_18

    iget-object v1, v1, Lcom/applovin/exoplayer2/ab;->ea:Lcom/applovin/exoplayer2/ab$f;

    if-eqz v1, :cond_18

    iget-object v1, v1, Lcom/applovin/exoplayer2/ab$f;->er:Ljava/lang/Object;

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    iput-object v1, v0, Lcom/applovin/exoplayer2/ba$c;->er:Ljava/lang/Object;

    move-object v1, p3

    iput-object v1, v0, Lcom/applovin/exoplayer2/ba$c;->iI:Ljava/lang/Object;

    move-wide v3, p4

    iput-wide v3, v0, Lcom/applovin/exoplayer2/ba$c;->iJ:J

    move-wide v3, p6

    iput-wide v3, v0, Lcom/applovin/exoplayer2/ba$c;->iK:J

    move-wide v3, p8

    iput-wide v3, v0, Lcom/applovin/exoplayer2/ba$c;->iL:J

    move v1, p10

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/ba$c;->iM:Z

    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/ba$c;->iN:Z

    const/4 v1, 0x0

    if-eqz v2, :cond_33

    const/4 v3, 0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    iput-boolean v3, v0, Lcom/applovin/exoplayer2/ba$c;->iO:Z

    iput-object v2, v0, Lcom/applovin/exoplayer2/ba$c;->eb:Lcom/applovin/exoplayer2/ab$e;

    move-wide/from16 v2, p13

    iput-wide v2, v0, Lcom/applovin/exoplayer2/ba$c;->iP:J

    move-wide/from16 v2, p15

    iput-wide v2, v0, Lcom/applovin/exoplayer2/ba$c;->fH:J

    move/from16 v2, p17

    iput v2, v0, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    move/from16 v2, p18

    iput v2, v0, Lcom/applovin/exoplayer2/ba$c;->iR:I

    move-wide/from16 v2, p19

    iput-wide v2, v0, Lcom/applovin/exoplayer2/ba$c;->iS:J

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/ba$c;->iz:Z

    return-object v0
.end method

.method public dj()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ba$c;->iP:J

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/h;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dk()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ba$c;->iP:J

    return-wide v0
.end method

.method public dl()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ba$c;->fH:J

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/h;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dm()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ba$c;->iL:J

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/ai;->bv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dn()Z
    .registers 5

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ba$c;->iO:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/ba$c;->eb:Lcom/applovin/exoplayer2/ab$e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$c;->eb:Lcom/applovin/exoplayer2/ab$e;

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_90

    const-class v2, Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_90

    :cond_15
    check-cast p1, Lcom/applovin/exoplayer2/ba$c;

    iget-object v2, p0, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/applovin/exoplayer2/ba$c;->gL:Lcom/applovin/exoplayer2/ab;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ba$c;->gL:Lcom/applovin/exoplayer2/ab;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/applovin/exoplayer2/ba$c;->iI:Ljava/lang/Object;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ba$c;->iI:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/applovin/exoplayer2/ba$c;->eb:Lcom/applovin/exoplayer2/ab$e;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ba$c;->eb:Lcom/applovin/exoplayer2/ab$e;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->iJ:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ba$c;->iJ:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_8e

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->iK:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ba$c;->iK:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_8e

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->iL:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ba$c;->iL:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_8e

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ba$c;->iM:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ba$c;->iM:Z

    if-ne v2, v3, :cond_8e

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ba$c;->iN:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ba$c;->iN:Z

    if-ne v2, v3, :cond_8e

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ba$c;->iz:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ba$c;->iz:Z

    if-ne v2, v3, :cond_8e

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->iP:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ba$c;->iP:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_8e

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->fH:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ba$c;->fH:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_8e

    iget v2, p0, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    iget v3, p1, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    if-ne v2, v3, :cond_8e

    iget v2, p0, Lcom/applovin/exoplayer2/ba$c;->iR:I

    iget v3, p1, Lcom/applovin/exoplayer2/ba$c;->iR:I

    if-ne v2, v3, :cond_8e

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->iS:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ba$c;->iS:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v0, 0x0

    :goto_8f
    return v0

    :cond_90
    :goto_90
    return v1
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$c;->gL:Lcom/applovin/exoplayer2/ab;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ab;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$c;->iI:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/ba$c;->eb:Lcom/applovin/exoplayer2/ab$e;

    if-nez v0, :cond_27

    goto :goto_2b

    :cond_27
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ab$e;->hashCode()I

    move-result v2

    :goto_2b
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->iJ:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->iK:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->iL:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ba$c;->iM:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ba$c;->iN:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ba$c;->iz:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->iP:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->fH:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/ba$c;->iR:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ba$c;->iS:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

###### Class com.applovin.exoplayer2.s0 (com.applovin.exoplayer2.s0)
.class public final synthetic Lcom/applovin/exoplayer2/s0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/s0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/s0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/s0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/s0;->a:Lcom/applovin/exoplayer2/s0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/ba$c;->b(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object p1

    return-object p1
.end method

###### Class com.applovin.exoplayer2.q0 (com.applovin.exoplayer2.q0)
.class public final synthetic Lcom/applovin/exoplayer2/q0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/q0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/q0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/q0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/q0;->a:Lcom/applovin/exoplayer2/q0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/ba;->e(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    return-object p1
.end method
