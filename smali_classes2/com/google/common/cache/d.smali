###### Class com.google.common.cache.d (com.google.common.cache.d)
.class public final Lcom/google/common/cache/d;
.super Ljava/lang/Object;
.source "CacheStats.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .registers 31

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    cmp-long v17, v1, v15

    if-ltz v17, :cond_1c

    const/16 v17, 0x1

    goto :goto_1e

    :cond_1c
    const/16 v17, 0x0

    :goto_1e
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v3, v15

    if-ltz v17, :cond_28

    const/16 v17, 0x1

    goto :goto_2a

    :cond_28
    const/16 v17, 0x0

    :goto_2a
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v5, v15

    if-ltz v17, :cond_34

    const/16 v17, 0x1

    goto :goto_36

    :cond_34
    const/16 v17, 0x0

    :goto_36
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v7, v15

    if-ltz v17, :cond_40

    const/16 v17, 0x1

    goto :goto_42

    :cond_40
    const/16 v17, 0x0

    :goto_42
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v9, v15

    if-ltz v17, :cond_4c

    const/16 v17, 0x1

    goto :goto_4e

    :cond_4c
    const/16 v17, 0x0

    :goto_4e
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v11, v15

    if-ltz v17, :cond_56

    goto :goto_57

    :cond_56
    const/4 v13, 0x0

    :goto_57
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iput-wide v1, v0, Lcom/google/common/cache/d;->a:J

    iput-wide v3, v0, Lcom/google/common/cache/d;->b:J

    iput-wide v5, v0, Lcom/google/common/cache/d;->c:J

    iput-wide v7, v0, Lcom/google/common/cache/d;->d:J

    iput-wide v9, v0, Lcom/google/common/cache/d;->e:J

    iput-wide v11, v0, Lcom/google/common/cache/d;->f:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Lcom/google/common/cache/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    check-cast p1, Lcom/google/common/cache/d;

    iget-wide v2, p0, Lcom/google/common/cache/d;->a:J

    iget-wide v4, p1, Lcom/google/common/cache/d;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/d;->b:J

    iget-wide v4, p1, Lcom/google/common/cache/d;->b:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/d;->c:J

    iget-wide v4, p1, Lcom/google/common/cache/d;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/d;->d:J

    iget-wide v4, p1, Lcom/google/common/cache/d;->d:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/d;->e:J

    iget-wide v4, p1, Lcom/google/common/cache/d;->e:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/d;->f:J

    iget-wide v4, p1, Lcom/google/common/cache/d;->f:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_38

    const/4 v1, 0x1

    :cond_38
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/common/cache/d;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/d;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/d;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/d;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/d;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/d;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/d;->a:J

    const-string v3, "hitCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$b;->c(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/d;->b:J

    const-string v3, "missCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$b;->c(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/d;->c:J

    const-string v3, "loadSuccessCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$b;->c(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/d;->d:J

    const-string v3, "loadExceptionCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$b;->c(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/d;->e:J

    const-string v3, "totalLoadTime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$b;->c(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/d;->f:J

    const-string v3, "evictionCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$b;->c(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
