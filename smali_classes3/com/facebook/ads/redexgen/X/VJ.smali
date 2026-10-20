###### Class com.facebook.ads.redexgen.X.VJ (com.facebook.ads.redexgen.X.VJ)
.class public final Lcom/facebook/ads/redexgen/X/VJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GU;


# static fields
.field public static A08:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[Lcom/facebook/ads/redexgen/X/GT;

.field public final A04:I

.field public final A05:Z

.field public final A06:[B

.field public final A07:[Lcom/facebook/ads/redexgen/X/GT;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VJ;->A01()V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/VJ;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-lez p2, :cond_38

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    if-ltz p3, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A05:Z

    iput p2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    add-int/lit8 v0, p3, 0x64

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/GT;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:[Lcom/facebook/ads/redexgen/X/GT;

    if-lez p3, :cond_3a

    mul-int v0, p3, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A06:[B

    const/4 v4, 0x0

    :goto_26
    if-ge v4, p3, :cond_3d

    mul-int v3, v4, p2

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:[Lcom/facebook/ads/redexgen/X/GT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A06:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/GT;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/GT;-><init>([BI)V

    aput-object v0, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_38
    const/4 v0, 0x0

    goto :goto_8

    :cond_3a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A06:[B

    :cond_3d
    new-array v0, v5, [Lcom/facebook/ads/redexgen/X/GT;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:[Lcom/facebook/ads/redexgen/X/GT;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/VJ;->A08:[B

    return-void

    :array_a
    .array-data 1
        0x64t
        0x68t
        0x28t
        0x13t
        0x18t
        0x5t
        0xdt
        0x18t
        0x1et
        0x9t
        0x18t
        0x19t
        0x5dt
        0x1ct
        0x11t
        0x11t
        0x12t
        0x1et
        0x1ct
        0x9t
        0x14t
        0x12t
        0x13t
        0x47t
        0x5dt
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized A02()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A04:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    mul-int/2addr v1, v0

    monitor-exit p0

    return v1

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A03()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A05:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/VJ;->A04(I)V
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

.method public final declared-synchronized A04(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A02:I

    if-ge p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput p1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A02:I

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/VJ;->AFy()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A3T()Lcom/facebook/ads/redexgen/X/GT;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    if-lez v0, :cond_17

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:[Lcom/facebook/ads/redexgen/X/GT;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    aget-object v0, v3, v2

    const/4 v1, 0x0

    aput-object v1, v3, v2

    goto :goto_21

    :cond_17
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/GT;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/GT;-><init>([BI)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :goto_21
    monitor-exit p0

    return-object v0

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A76()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    return v0
.end method

.method public final declared-synchronized AEP(Lcom/facebook/ads/redexgen/X/GT;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:[Lcom/facebook/ads/redexgen/X/GT;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/VJ;->AEQ([Lcom/facebook/ads/redexgen/X/GT;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AEQ([Lcom/facebook/ads/redexgen/X/GT;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget v3, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    array-length v1, p1

    add-int/2addr v1, v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:[Lcom/facebook/ads/redexgen/X/GT;

    array-length v0, v2

    if-lt v1, v0, :cond_1b

    array-length v0, v2

    mul-int/lit8 v1, v0, 0x2

    array-length v0, p1

    add-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/GT;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:[Lcom/facebook/ads/redexgen/X/GT;

    :cond_1b
    array-length v5, p1

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v5, :cond_9c

    aget-object v4, p1, v3

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/GT;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A06:[B

    if-eq v1, v0, :cond_2e

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/GT;->A01:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    if-ne v1, v0, :cond_3b

    :cond_2e
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:[Lcom/facebook/ads/redexgen/X/GT;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    aput-object v4, v2, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x17

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/GT;->A01:[B

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A06:[B

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/GT;->A01:[B

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    array-length v0, p1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a5
    .catchall {:try_start_1 .. :try_end_a5} :catchall_a7

    monitor-exit p0

    return-void

    :catchall_a7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFy()V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(II)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    if-lt v3, v1, :cond_17
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_5d

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A06:[B

    if-eqz v0, :cond_51

    const/4 v7, 0x0

    add-int/lit8 v6, v1, -0x1

    :goto_1e
    if-gt v7, v6, :cond_47

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:[Lcom/facebook/ads/redexgen/X/GT;

    aget-object v5, v0, v7

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/GT;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A06:[B

    if-ne v1, v0, :cond_2d

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_2d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:[Lcom/facebook/ads/redexgen/X/GT;

    aget-object v4, v0, v6

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/GT;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A06:[B

    if-eq v1, v0, :cond_3a

    add-int/lit8 v6, v6, -0x1

    goto :goto_1e

    :cond_3a
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:[Lcom/facebook/ads/redexgen/X/GT;

    add-int/lit8 v1, v7, 0x1

    aput-object v4, v2, v7

    add-int/lit8 v0, v6, -0x1

    aput-object v5, v2, v6

    move v6, v0

    move v7, v1

    goto :goto_1e

    :cond_47
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    if-lt v3, v0, :cond_51
    :try_end_4f
    .catchall {:try_start_17 .. :try_end_4f} :catchall_5d

    monitor-exit p0

    return-void

    :cond_51
    :try_start_51
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:[Lcom/facebook/ads/redexgen/X/GT;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    const/4 v0, 0x0

    invoke-static {v2, v3, v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v3, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_5d

    monitor-exit p0

    return-void

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
