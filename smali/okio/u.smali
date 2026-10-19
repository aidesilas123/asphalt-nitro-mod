###### Class okio.u (okio.u)
.class public final Lokio/u;
.super Ljava/lang/Object;
.source "Segment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/u$a;
    }
.end annotation


# static fields
.field public static final a:Lokio/u$a;


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Lokio/u;

.field public h:Lokio/u;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/u$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokio/u;->a:Lokio/u$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lokio/u;->b:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/u;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/u;->e:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .registers 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/u;->b:[B

    iput p2, p0, Lokio/u;->c:I

    iput p3, p0, Lokio/u;->d:I

    iput-boolean p4, p0, Lokio/u;->e:Z

    iput-boolean p5, p0, Lokio/u;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lokio/u;->h:Lokio/u;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_44

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v0, v0, Lokio/u;->f:Z

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget v0, p0, Lokio/u;->d:I

    iget v2, p0, Lokio/u;->c:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lokio/u;->h:Lokio/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lokio/u;->d:I

    rsub-int v2, v2, 0x2000

    iget-object v3, p0, Lokio/u;->h:Lokio/u;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v3, v3, Lokio/u;->e:Z

    if-eqz v3, :cond_2a

    goto :goto_31

    :cond_2a
    iget-object v1, p0, Lokio/u;->h:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lokio/u;->c:I

    :goto_31
    add-int/2addr v2, v1

    if-le v0, v2, :cond_35

    return-void

    :cond_35
    iget-object v1, p0, Lokio/u;->h:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lokio/u;->g(Lokio/u;I)V

    invoke-virtual {p0}, Lokio/u;->b()Lokio/u;

    invoke-static {p0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    return-void

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot compact"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lokio/u;
    .registers 5

    iget-object v0, p0, Lokio/u;->g:Lokio/u;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_6

    goto :goto_7

    :cond_6
    move-object v0, v1

    :goto_7
    iget-object v2, p0, Lokio/u;->h:Lokio/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lokio/u;->g:Lokio/u;

    iput-object v3, v2, Lokio/u;->g:Lokio/u;

    iget-object v2, p0, Lokio/u;->g:Lokio/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lokio/u;->h:Lokio/u;

    iput-object v3, v2, Lokio/u;->h:Lokio/u;

    iput-object v1, p0, Lokio/u;->g:Lokio/u;

    iput-object v1, p0, Lokio/u;->h:Lokio/u;

    return-object v0
.end method

.method public final c(Lokio/u;)Lokio/u;
    .registers 3

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lokio/u;->h:Lokio/u;

    iget-object v0, p0, Lokio/u;->g:Lokio/u;

    iput-object v0, p1, Lokio/u;->g:Lokio/u;

    iget-object v0, p0, Lokio/u;->g:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, v0, Lokio/u;->h:Lokio/u;

    iput-object p1, p0, Lokio/u;->g:Lokio/u;

    return-object p1
.end method

.method public final d()Lokio/u;
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/u;->e:Z

    new-instance v0, Lokio/u;

    iget-object v2, p0, Lokio/u;->b:[B

    iget v3, p0, Lokio/u;->c:I

    iget v4, p0, Lokio/u;->d:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lokio/u;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final e(I)Lokio/u;
    .registers 10

    if-lez p1, :cond_b

    iget v0, p0, Lokio/u;->d:I

    iget v1, p0, Lokio/u;->c:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_3c

    const/16 v0, 0x400

    if-lt p1, v0, :cond_17

    invoke-virtual {p0}, Lokio/u;->d()Lokio/u;

    move-result-object v0

    goto :goto_29

    :cond_17
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/u;

    move-result-object v0

    iget-object v1, p0, Lokio/u;->b:[B

    iget-object v2, v0, Lokio/u;->b:[B

    const/4 v3, 0x0

    iget v4, p0, Lokio/u;->c:I

    add-int v5, v4, p1

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/k;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    :goto_29
    iget v1, v0, Lokio/u;->c:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/u;->d:I

    iget v1, p0, Lokio/u;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/u;->c:I

    iget-object p1, p0, Lokio/u;->h:Lokio/u;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lokio/u;->c(Lokio/u;)Lokio/u;

    return-object v0

    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount out of range"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()Lokio/u;
    .registers 8

    new-instance v6, Lokio/u;

    iget-object v0, p0, Lokio/u;->b:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v0, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lokio/u;->c:I

    iget v3, p0, Lokio/u;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lokio/u;-><init>([BIIZZ)V

    return-object v6
.end method

.method public final g(Lokio/u;I)V
    .registers 11

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lokio/u;->f:Z

    if-eqz v0, :cond_54

    iget v5, p1, Lokio/u;->d:I

    add-int v0, v5, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_3c

    iget-boolean v0, p1, Lokio/u;->e:Z

    if-nez v0, :cond_36

    add-int v0, v5, p2

    iget v4, p1, Lokio/u;->c:I

    sub-int/2addr v0, v4

    if-gt v0, v1, :cond_30

    iget-object v2, p1, Lokio/u;->b:[B

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v2

    invoke-static/range {v1 .. v7}, Lkotlin/collections/k;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    iget v0, p1, Lokio/u;->d:I

    iget v1, p1, Lokio/u;->c:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/u;->d:I

    const/4 v0, 0x0

    iput v0, p1, Lokio/u;->c:I

    goto :goto_3c

    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3c
    :goto_3c
    iget-object v0, p0, Lokio/u;->b:[B

    iget-object v1, p1, Lokio/u;->b:[B

    iget v2, p1, Lokio/u;->d:I

    iget v3, p0, Lokio/u;->c:I

    add-int v4, v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/collections/k;->copyInto([B[BIII)[B

    iget v0, p1, Lokio/u;->d:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/u;->d:I

    iget p1, p0, Lokio/u;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lokio/u;->c:I

    return-void

    :cond_54
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class okio.u.a (okio.u$a)
.class public final Lokio/u$a;
.super Ljava/lang/Object;
.source "Segment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lokio/u$a;-><init>()V

    return-void
.end method
