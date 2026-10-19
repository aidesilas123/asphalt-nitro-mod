###### Class com.google.common.math.PairedStats (com.google.common.math.PairedStats)
.class public final Lcom/google/common/math/PairedStats;
.super Ljava/lang/Object;
.source "PairedStats.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Lcom/google/common/math/Stats;

.field private final b:Lcom/google/common/math/Stats;

.field private final c:D


# direct methods
.method constructor <init>(Lcom/google/common/math/Stats;Lcom/google/common/math/Stats;D)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/math/PairedStats;->a:Lcom/google/common/math/Stats;

    iput-object p2, p0, Lcom/google/common/math/PairedStats;->b:Lcom/google/common/math/Stats;

    iput-wide p3, p0, Lcom/google/common/math/PairedStats;->c:D

    return-void
.end method

.method public static fromByteArray([B)Lcom/google/common/math/PairedStats;
    .registers 5

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/16 v1, 0x58

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    array-length v2, p0

    const-string v3, "Expected PairedStats.BYTES = %s, got %s"

    invoke-static {v0, v3, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/math/Stats;->f(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/math/Stats;->f(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v2

    new-instance p0, Lcom/google/common/math/PairedStats;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/math/PairedStats;-><init>(Lcom/google/common/math/Stats;Lcom/google/common/math/Stats;D)V

    return-object p0
.end method


# virtual methods
.method public c()J
    .registers 3

    iget-object v0, p0, Lcom/google/common/math/PairedStats;->a:Lcom/google/common/math/Stats;

    invoke-virtual {v0}, Lcom/google/common/math/Stats;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()D
    .registers 6

    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/common/math/PairedStats;->c:D

    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->c()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-class v1, Lcom/google/common/math/PairedStats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_d

    return v0

    :cond_d
    check-cast p1, Lcom/google/common/math/PairedStats;

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->a:Lcom/google/common/math/Stats;

    iget-object v2, p1, Lcom/google/common/math/PairedStats;->a:Lcom/google/common/math/Stats;

    invoke-virtual {v1, v2}, Lcom/google/common/math/Stats;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->b:Lcom/google/common/math/Stats;

    iget-object v2, p1, Lcom/google/common/math/PairedStats;->b:Lcom/google/common/math/Stats;

    invoke-virtual {v1, v2}, Lcom/google/common/math/Stats;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-wide v1, p0, Lcom/google/common/math/PairedStats;->c:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/common/math/PairedStats;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_34

    const/4 v0, 0x1

    :cond_34
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->a:Lcom/google/common/math/Stats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->b:Lcom/google/common/math/Stats;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/math/PairedStats;->c:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->c()J

    move-result-wide v0

    const-string v2, "yStats"

    const-string v3, "xStats"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_2d

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->a:Lcom/google/common/math/Stats;

    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/MoreObjects$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->b:Lcom/google/common/math/Stats;

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->d()D

    move-result-wide v1

    const-string v3, "populationCovariance"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$b;->a(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->a:Lcom/google/common/math/Stats;

    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/MoreObjects$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->b:Lcom/google/common/math/Stats;

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
