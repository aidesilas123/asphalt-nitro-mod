###### Class com.mbridge.msdk.playercommon.exoplayer2.upstream.DefaultAllocator (com.mbridge.msdk.playercommon.exoplayer2.upstream.DefaultAllocator)
.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B

.field private final singleAllocationReleaseHolder:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

.field private targetBufferSize:I

.field private final trimOnReset:Z


# direct methods
.method public constructor <init>(ZI)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    invoke-static {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    if-ltz p3, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-static {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    iput p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    iput p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 p1, p3, 0x64

    new-array p1, p1, [Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    if-lez p3, :cond_3b

    mul-int p1, p3, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    :goto_29
    if-ge v0, p3, :cond_3e

    mul-int p1, v0, p2

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v3, v4, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;-><init>([BI)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    :cond_3e
    new-array p1, v1, [Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    return-void
.end method


# virtual methods
.method public final declared-synchronized allocate()Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    if-lez v0, :cond_17

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    goto :goto_21

    :cond_17
    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;-><init>([BI)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :goto_21
    monitor-exit p0

    return-object v2

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getIndividualAllocationLength()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public final declared-synchronized getTotalBytesAllocated()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized release(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->release([Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized release([Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    array-length v3, v2

    if-lt v1, v3, :cond_1b

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    array-length v3, p1

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    :cond_1b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_7a

    aget-object v2, p1, v1

    iget-object v3, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;->data:[B

    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v3, v4, :cond_6d

    array-length v3, v3

    iget v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    if-ne v3, v4, :cond_2d

    goto :goto_6d

    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected allocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;->data:[B

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6d
    :goto_6d
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    iget v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_7a
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_83
    .catchall {:try_start_1 .. :try_end_83} :catchall_85

    monitor-exit p0

    return-void

    :catchall_85
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setTargetBufferSize(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->trim()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized trim()V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    iget v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    iget v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_56

    if-lt v0, v2, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v3, :cond_4a

    add-int/lit8 v2, v2, -0x1

    :goto_1d
    if-gt v1, v2, :cond_40

    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    aget-object v4, v3, v1

    iget-object v5, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;->data:[B

    iget-object v6, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v5, v6, :cond_2c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    aget-object v5, v3, v2

    iget-object v7, v5, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;->data:[B

    if-eq v7, v6, :cond_35

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    :cond_35
    add-int/lit8 v6, v1, 0x1

    aput-object v5, v3, v1

    add-int/lit8 v1, v2, -0x1

    aput-object v4, v3, v2

    move v2, v1

    move v1, v6

    goto :goto_1d

    :cond_40
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_46
    .catchall {:try_start_17 .. :try_end_46} :catchall_56

    if-lt v0, v1, :cond_4a

    monitor-exit p0

    return-void

    :cond_4a
    :try_start_4a
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_56

    monitor-exit p0

    return-void

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method
