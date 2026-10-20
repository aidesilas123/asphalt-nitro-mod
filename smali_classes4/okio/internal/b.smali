###### Class okio.internal.b (okio.internal.b)
.class public final Lokio/internal/b;
.super Lokio/j;
.source "FixedLengthSource.kt"


# instance fields
.field private final a:J

.field private final b:Z

.field private c:J


# direct methods
.method public constructor <init>(Lokio/y;JZ)V
    .registers 6

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/j;-><init>(Lokio/y;)V

    iput-wide p2, p0, Lokio/internal/b;->a:J

    iput-boolean p4, p0, Lokio/internal/b;->b:Z

    return-void
.end method

.method private final a(Lokio/Buffer;J)V
    .registers 5

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->D(Lokio/y;)J

    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->n(Lokio/Buffer;J)V

    invoke-virtual {v0}, Lokio/Buffer;->d()V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .registers 13

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lokio/internal/b;->c:J

    iget-wide v2, p0, Lokio/internal/b;->a:J

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v2

    if-lez v8, :cond_13

    move-wide p2, v6

    goto :goto_21

    :cond_13
    iget-boolean v8, p0, Lokio/internal/b;->b:Z

    if-eqz v8, :cond_21

    sub-long/2addr v2, v0

    cmp-long v0, v2, v6

    if-nez v0, :cond_1d

    return-wide v4

    :cond_1d
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    :cond_21
    :goto_21
    invoke-super {p0, p1, p2, p3}, Lokio/j;->read(Lokio/Buffer;J)J

    move-result-wide p2

    cmp-long v0, p2, v4

    if-eqz v0, :cond_2e

    iget-wide v1, p0, Lokio/internal/b;->c:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lokio/internal/b;->c:J

    :cond_2e
    iget-wide v1, p0, Lokio/internal/b;->c:J

    iget-wide v3, p0, Lokio/internal/b;->a:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_38

    if-eqz v0, :cond_3c

    :cond_38
    cmp-long v0, v1, v3

    if-lez v0, :cond_74

    :cond_3c
    cmp-long v0, p2, v6

    if-lez v0, :cond_51

    cmp-long p2, v1, v3

    if-lez p2, :cond_51

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide p2

    iget-wide v0, p0, Lokio/internal/b;->c:J

    iget-wide v2, p0, Lokio/internal/b;->a:J

    sub-long/2addr v0, v2

    sub-long/2addr p2, v0

    invoke-direct {p0, p1, p2, p3}, Lokio/internal/b;->a(Lokio/Buffer;J)V

    :cond_51
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lokio/internal/b;->a:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lokio/internal/b;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    return-wide p2
.end method
