###### Class com.applovin.exoplayer2.k.m (com.applovin.exoplayer2.k.m)
.class public final Lcom/applovin/exoplayer2/k/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/k/b;


# instance fields
.field private final ZD:Z

.field private final ZE:I

.field private final ZF:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ZG:[Lcom/applovin/exoplayer2/k/a;

.field private ZH:I

.field private ZI:I

.field private ZJ:I

.field private ZK:[Lcom/applovin/exoplayer2/k/a;


# direct methods
.method public constructor <init>(ZI)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/k/m;-><init>(ZII)V

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
    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    if-ltz p3, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/k/m;->ZD:Z

    iput p2, p0, Lcom/applovin/exoplayer2/k/m;->ZE:I

    iput p3, p0, Lcom/applovin/exoplayer2/k/m;->ZJ:I

    add-int/lit8 p1, p3, 0x64

    new-array p1, p1, [Lcom/applovin/exoplayer2/k/a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/m;->ZK:[Lcom/applovin/exoplayer2/k/a;

    if-lez p3, :cond_3b

    mul-int p1, p3, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/m;->ZF:[B

    :goto_29
    if-ge v0, p3, :cond_3e

    mul-int p1, v0, p2

    iget-object v2, p0, Lcom/applovin/exoplayer2/k/m;->ZK:[Lcom/applovin/exoplayer2/k/a;

    new-instance v3, Lcom/applovin/exoplayer2/k/a;

    iget-object v4, p0, Lcom/applovin/exoplayer2/k/m;->ZF:[B

    invoke-direct {v3, v4, p1}, Lcom/applovin/exoplayer2/k/a;-><init>([BI)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/m;->ZF:[B

    :cond_3e
    new-array p1, v1, [Lcom/applovin/exoplayer2/k/a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/m;->ZG:[Lcom/applovin/exoplayer2/k/a;

    return-void
.end method


# virtual methods
.method public declared-synchronized Y()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/m;->ZD:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/k/m;->fj(I)V
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

.method public declared-synchronized a(Lcom/applovin/exoplayer2/k/a;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/m;->ZG:[Lcom/applovin/exoplayer2/k/a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/k/m;->a([Lcom/applovin/exoplayer2/k/a;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([Lcom/applovin/exoplayer2/k/a;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/applovin/exoplayer2/k/m;->ZJ:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/k/m;->ZK:[Lcom/applovin/exoplayer2/k/a;

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

    check-cast v0, [Lcom/applovin/exoplayer2/k/a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/m;->ZK:[Lcom/applovin/exoplayer2/k/a;

    :cond_1b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2e

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/applovin/exoplayer2/k/m;->ZK:[Lcom/applovin/exoplayer2/k/a;

    iget v4, p0, Lcom/applovin/exoplayer2/k/m;->ZJ:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/applovin/exoplayer2/k/m;->ZJ:I

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2e
    iget v0, p0, Lcom/applovin/exoplayer2/k/m;->ZI:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/exoplayer2/k/m;->ZI:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fj(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/applovin/exoplayer2/k/m;->ZH:I

    if-ge p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput p1, p0, Lcom/applovin/exoplayer2/k/m;->ZH:I

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/m;->ob()V
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

.method public declared-synchronized oa()Lcom/applovin/exoplayer2/k/a;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/applovin/exoplayer2/k/m;->ZI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/exoplayer2/k/m;->ZI:I

    iget v0, p0, Lcom/applovin/exoplayer2/k/m;->ZJ:I

    if-lez v0, :cond_21

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/m;->ZK:[Lcom/applovin/exoplayer2/k/a;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/k/m;->ZJ:I

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/k/a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/m;->ZK:[Lcom/applovin/exoplayer2/k/a;

    iget v2, p0, Lcom/applovin/exoplayer2/k/m;->ZJ:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_2b

    :cond_21
    new-instance v0, Lcom/applovin/exoplayer2/k/a;

    iget v1, p0, Lcom/applovin/exoplayer2/k/m;->ZE:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/k/a;-><init>([BI)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    :goto_2b
    monitor-exit p0

    return-object v0

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ob()V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/applovin/exoplayer2/k/m;->ZH:I

    iget v1, p0, Lcom/applovin/exoplayer2/k/m;->ZE:I

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/ai;->N(II)I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/k/m;->ZI:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/applovin/exoplayer2/k/m;->ZJ:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_68

    if-lt v0, v2, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/applovin/exoplayer2/k/m;->ZF:[B

    if-eqz v3, :cond_5c

    add-int/lit8 v2, v2, -0x1

    :goto_1d
    if-gt v1, v2, :cond_52

    iget-object v3, p0, Lcom/applovin/exoplayer2/k/m;->ZK:[Lcom/applovin/exoplayer2/k/a;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/k/a;

    iget-object v4, v3, Lcom/applovin/exoplayer2/k/a;->tf:[B

    iget-object v5, p0, Lcom/applovin/exoplayer2/k/m;->ZF:[B

    if-ne v4, v5, :cond_32

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_32
    iget-object v4, p0, Lcom/applovin/exoplayer2/k/m;->ZK:[Lcom/applovin/exoplayer2/k/a;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/exoplayer2/k/a;

    iget-object v5, v4, Lcom/applovin/exoplayer2/k/a;->tf:[B

    iget-object v6, p0, Lcom/applovin/exoplayer2/k/m;->ZF:[B

    if-eq v5, v6, :cond_45

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    :cond_45
    iget-object v5, p0, Lcom/applovin/exoplayer2/k/m;->ZK:[Lcom/applovin/exoplayer2/k/a;

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    add-int/lit8 v1, v2, -0x1

    aput-object v3, v5, v2

    move v2, v1

    move v1, v6

    goto :goto_1d

    :cond_52
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/k/m;->ZJ:I
    :try_end_58
    .catchall {:try_start_17 .. :try_end_58} :catchall_68

    if-lt v0, v1, :cond_5c

    monitor-exit p0

    return-void

    :cond_5c
    :try_start_5c
    iget-object v1, p0, Lcom/applovin/exoplayer2/k/m;->ZK:[Lcom/applovin/exoplayer2/k/a;

    iget v2, p0, Lcom/applovin/exoplayer2/k/m;->ZJ:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lcom/applovin/exoplayer2/k/m;->ZJ:I
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_68

    monitor-exit p0

    return-void

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public oc()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/k/m;->ZE:I

    return v0
.end method

.method public declared-synchronized ok()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/applovin/exoplayer2/k/m;->ZI:I

    iget v1, p0, Lcom/applovin/exoplayer2/k/m;->ZE:I
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
