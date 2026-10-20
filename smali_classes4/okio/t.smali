###### Class okio.t (okio.t)
.class public final Lokio/t;
.super Ljava/lang/Object;
.source "PeekSource.kt"

# interfaces
.implements Lokio/y;


# instance fields
.field private final a:Lokio/e;

.field private final b:Lokio/Buffer;

.field private c:Lokio/u;

.field private d:I

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lokio/e;)V
    .registers 3

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/t;->a:Lokio/e;

    invoke-interface {p1}, Lokio/e;->y()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lokio/t;->b:Lokio/Buffer;

    iget-object p1, p1, Lokio/Buffer;->a:Lokio/u;

    iput-object p1, p0, Lokio/t;->c:Lokio/u;

    if-nez p1, :cond_18

    const/4 p1, -0x1

    goto :goto_1a

    :cond_18
    iget p1, p1, Lokio/u;->c:I

    :goto_1a
    iput p1, p0, Lokio/t;->d:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/t;->e:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    cmp-long v4, p2, v1

    if-ltz v4, :cond_f

    const/4 v5, 0x1

    goto :goto_10

    :cond_f
    const/4 v5, 0x0

    :goto_10
    if-eqz v5, :cond_87

    iget-boolean v5, p0, Lokio/t;->e:Z

    xor-int/2addr v5, v3

    if-eqz v5, :cond_7b

    iget-object v5, p0, Lokio/t;->c:Lokio/u;

    if-eqz v5, :cond_2a

    iget-object v6, p0, Lokio/t;->b:Lokio/Buffer;

    iget-object v6, v6, Lokio/Buffer;->a:Lokio/u;

    if-ne v5, v6, :cond_2b

    iget v5, p0, Lokio/t;->d:I

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, v6, Lokio/u;->c:I

    if-ne v5, v6, :cond_2b

    :cond_2a
    const/4 v0, 0x1

    :cond_2b
    if-eqz v0, :cond_6f

    if-nez v4, :cond_30

    return-wide v1

    :cond_30
    iget-object v0, p0, Lokio/t;->a:Lokio/e;

    iget-wide v1, p0, Lokio/t;->f:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lokio/e;->request(J)Z

    move-result v0

    if-nez v0, :cond_40

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_40
    iget-object v0, p0, Lokio/t;->c:Lokio/u;

    if-nez v0, :cond_53

    iget-object v0, p0, Lokio/t;->b:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->a:Lokio/u;

    if-eqz v0, :cond_53

    iput-object v0, p0, Lokio/t;->c:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Lokio/u;->c:I

    iput v0, p0, Lokio/t;->d:I

    :cond_53
    iget-object v0, p0, Lokio/t;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v0

    iget-wide v2, p0, Lokio/t;->f:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v2, p0, Lokio/t;->b:Lokio/Buffer;

    iget-wide v4, p0, Lokio/t;->f:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->j(Lokio/Buffer;JJ)Lokio/Buffer;

    iget-wide v0, p0, Lokio/t;->f:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/t;->f:J

    return-wide p2

    :cond_6f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Peek source is invalid because upstream source was used"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_87
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "byteCount < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokio/t;->a:Lokio/e;

    invoke-interface {v0}, Lokio/y;->timeout()Lokio/z;

    move-result-object v0

    return-object v0
.end method
