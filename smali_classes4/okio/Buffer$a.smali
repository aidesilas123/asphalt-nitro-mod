###### Class okio.Buffer.a (okio.Buffer$a)
.class public final Lokio/Buffer$a;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lokio/Buffer;

.field public b:Z

.field private c:Lokio/u;

.field public d:J

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$a;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$a;->f:I

    iput v0, p0, Lokio/Buffer$a;->g:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lokio/Buffer$a;->a:Lokio/Buffer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-object v0, p0, Lokio/Buffer$a;->a:Lokio/Buffer;

    invoke-virtual {p0, v0}, Lokio/Buffer$a;->f(Lokio/u;)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lokio/Buffer$a;->d:J

    iput-object v0, p0, Lokio/Buffer$a;->e:[B

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$a;->f:I

    iput v0, p0, Lokio/Buffer$a;->g:I

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Lokio/u;
    .registers 2

    iget-object v0, p0, Lokio/Buffer$a;->c:Lokio/u;

    return-object v0
.end method

.method public final e(J)I
    .registers 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lokio/Buffer$a;->a:Lokio/Buffer;

    if-eqz v3, :cond_f5

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-ltz v6, :cond_d2

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v4

    cmp-long v7, v1, v4

    if-gtz v7, :cond_d2

    const/4 v4, -0x1

    if-eqz v6, :cond_c5

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-nez v7, :cond_23

    goto/16 :goto_c5

    :cond_23
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v6

    iget-object v8, v3, Lokio/Buffer;->a:Lokio/u;

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$a;->d()Lokio/u;

    move-result-object v9

    if-eqz v9, :cond_56

    iget-wide v9, v0, Lokio/Buffer$a;->d:J

    iget v11, v0, Lokio/Buffer$a;->f:I

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$a;->d()Lokio/u;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v12, v12, Lokio/u;->c:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    cmp-long v11, v9, v1

    if-lez v11, :cond_4e

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$a;->d()Lokio/u;

    move-result-object v6

    move-object v15, v8

    move-object v8, v6

    move-wide v6, v9

    move-object v9, v15

    goto :goto_57

    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$a;->d()Lokio/u;

    move-result-object v4

    move-wide v15, v9

    move-object v9, v4

    move-wide v4, v15

    goto :goto_57

    :cond_56
    move-object v9, v8

    :goto_57
    sub-long v10, v6, v1

    sub-long v12, v1, v4

    cmp-long v14, v10, v12

    if-lez v14, :cond_74

    :goto_5f
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, v9, Lokio/u;->d:I

    iget v7, v9, Lokio/u;->c:I

    sub-int v8, v6, v7

    int-to-long v10, v8

    add-long/2addr v10, v4

    cmp-long v8, v1, v10

    if-ltz v8, :cond_8a

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v9, v9, Lokio/u;->g:Lokio/u;

    goto :goto_5f

    :cond_74
    :goto_74
    cmp-long v4, v6, v1

    if-lez v4, :cond_88

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lokio/u;->h:Lokio/u;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v8, Lokio/u;->d:I

    iget v5, v8, Lokio/u;->c:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v6, v4

    goto :goto_74

    :cond_88
    move-wide v4, v6

    move-object v9, v8

    :cond_8a
    iget-boolean v6, v0, Lokio/Buffer$a;->b:Z

    if-eqz v6, :cond_ab

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v6, v9, Lokio/u;->e:Z

    if-eqz v6, :cond_ab

    invoke-virtual {v9}, Lokio/u;->f()Lokio/u;

    move-result-object v6

    iget-object v7, v3, Lokio/Buffer;->a:Lokio/u;

    if-ne v7, v9, :cond_9f

    iput-object v6, v3, Lokio/Buffer;->a:Lokio/u;

    :cond_9f
    invoke-virtual {v9, v6}, Lokio/u;->c(Lokio/u;)Lokio/u;

    move-result-object v9

    iget-object v3, v9, Lokio/u;->h:Lokio/u;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lokio/u;->b()Lokio/u;

    :cond_ab
    invoke-virtual {v0, v9}, Lokio/Buffer$a;->f(Lokio/u;)V

    iput-wide v1, v0, Lokio/Buffer$a;->d:J

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v9, Lokio/u;->b:[B

    iput-object v3, v0, Lokio/Buffer$a;->e:[B

    iget v3, v9, Lokio/u;->c:I

    sub-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v3, v2

    iput v3, v0, Lokio/Buffer$a;->f:I

    iget v1, v9, Lokio/u;->d:I

    iput v1, v0, Lokio/Buffer$a;->g:I

    sub-int v4, v1, v3

    goto :goto_d1

    :cond_c5
    :goto_c5
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lokio/Buffer$a;->f(Lokio/u;)V

    iput-wide v1, v0, Lokio/Buffer$a;->d:J

    iput-object v3, v0, Lokio/Buffer$a;->e:[B

    iput v4, v0, Lokio/Buffer$a;->f:I

    iput v4, v0, Lokio/Buffer$a;->g:I

    :goto_d1
    return v4

    :cond_d2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " > size="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f(Lokio/u;)V
    .registers 2

    iput-object p1, p0, Lokio/Buffer$a;->c:Lokio/u;

    return-void
.end method
