###### Class com.google.android.gms.internal.ads.zzvt (com.google.android.gms.internal.ads.zzvt)
.class final Lcom/google/android/gms/internal/ads/zzvt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfj;

.field private zzb:Lcom/google/android/gms/internal/ads/zzvs;

.field private zzc:Lcom/google/android/gms/internal/ads/zzvs;

.field private zzd:Lcom/google/android/gms/internal/ads/zzvs;

.field private zze:J

.field private final zzf:Lcom/google/android/gms/internal/ads/zzyn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyn;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzf:Lcom/google/android/gms/internal/ads/zzyn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzvs;

    const-wide/16 v0, 0x0

    const/high16 v2, 0x10000

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzvs;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzb:Lcom/google/android/gms/internal/ads/zzvs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzc:Lcom/google/android/gms/internal/ads/zzvs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    return-void
.end method

.method private final zzi(I)I
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzyg;

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzf:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyn;->zzb()Lcom/google/android/gms/internal/ads/zzyg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzvs;->zzb:J

    const/high16 v5, 0x10000

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzvs;-><init>(JI)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzyg;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzvs;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zze:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzvs;J)Lcom/google/android/gms/internal/ads/zzvs;
    .registers 6

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    goto :goto_0

    :cond_9
    return-object p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzvs;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzvs;
    .registers 8

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvt;->zzj(Lcom/google/android/gms/internal/ads/zzvs;J)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object p0

    :cond_4
    :goto_4
    if-lez p4, :cond_25

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzyg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzyg;->zza:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvs;->zza(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    goto :goto_4

    :cond_25
    return-object p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzvs;J[BI)Lcom/google/android/gms/internal/ads/zzvs;
    .registers 10

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvt;->zzj(Lcom/google/android/gms/internal/ads/zzvs;J)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object p0

    move v0, p4

    :cond_5
    :goto_5
    if-lez v0, :cond_28

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzyg;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzyg;->zza:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvs;->zza(J)I

    move-result v3

    sub-int v4, p4, v0

    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    goto :goto_5

    :cond_28
    return-object p0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzib;Lcom/google/android/gms/internal/ads/zzvv;Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzvs;
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzib;->zzk()Z

    move-result v3

    if-eqz v3, :cond_c9

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v6

    move-object/from16 v7, p0

    invoke-static {v7, v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzvt;->zzl(Lcom/google/android/gms/internal/ads/zzvs;J[BI)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v6

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v7

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    and-int/lit16 v9, v7, 0x80

    and-int/lit8 v7, v7, 0x7f

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzib;->zzb:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzhy;->zza:[B

    if-nez v11, :cond_37

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzhy;->zza:[B

    goto :goto_3a

    :cond_37
    invoke-static {v11, v8}, Ljava/util/Arrays;->fill([BB)V

    :goto_3a
    if-eqz v9, :cond_3e

    const/4 v9, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v9, 0x0

    :goto_3f
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzhy;->zza:[B

    invoke-static {v6, v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/zzvt;->zzl(Lcom/google/android/gms/internal/ads/zzvs;J[BI)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v6

    int-to-long v11, v7

    add-long/2addr v3, v11

    if-eqz v9, :cond_5e

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v7

    invoke-static {v6, v3, v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzvt;->zzl(Lcom/google/android/gms/internal/ads/zzvs;J[BI)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v6

    const-wide/16 v11, 0x2

    add-long/2addr v3, v11

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v5

    move v11, v5

    goto :goto_5f

    :cond_5e
    const/4 v11, 0x1

    :goto_5f
    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzhy;->zzd:[I

    if-eqz v5, :cond_66

    array-length v7, v5

    if-ge v7, v11, :cond_68

    :cond_66
    new-array v5, v11, [I

    :cond_68
    move-object v12, v5

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzhy;->zze:[I

    if-eqz v5, :cond_70

    array-length v7, v5

    if-ge v7, v11, :cond_72

    :cond_70
    new-array v5, v11, [I

    :cond_72
    move-object v13, v5

    if-eqz v9, :cond_98

    mul-int/lit8 v5, v11, 0x6

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v7

    invoke-static {v6, v3, v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzvt;->zzl(Lcom/google/android/gms/internal/ads/zzvs;J[BI)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v6

    int-to-long v14, v5

    add-long/2addr v3, v14

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    :goto_87
    if-ge v8, v11, :cond_a4

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v5

    aput v5, v12, v8

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v5

    aput v5, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_87

    :cond_98
    aput v8, v12, v8

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzvv;->zza:I

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    sub-long v14, v3, v14

    long-to-int v7, v14

    sub-int/2addr v5, v7

    aput v5, v13, v8

    :cond_a4
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzc:Lcom/google/android/gms/internal/ads/zzadj;

    sget v7, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzb:[B

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzhy;->zza:[B

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzadj;->zza:I

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v5

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/gms/internal/ads/zzhy;->zzc(I[I[I[B[BIII)V

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    sub-long/2addr v3, v7

    long-to-int v4, v3

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzvv;->zza:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzvv;->zza:I

    goto :goto_cc

    :cond_c9
    move-object/from16 v7, p0

    move-object v6, v7

    :goto_cc
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhv;->zze()Z

    move-result v3

    if-eqz v3, :cond_129

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v7

    invoke-static {v6, v4, v5, v7, v3}, Lcom/google/android/gms/internal/ads/zzvt;->zzl(Lcom/google/android/gms/internal/ads/zzvs;J[BI)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v2

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzvv;->zza:I

    add-int/lit8 v4, v4, -0x4

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzvv;->zza:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzib;->zzi(I)V

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;

    invoke-static {v3, v4, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzvt;->zzk(Lcom/google/android/gms/internal/ads/zzvs;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzvv;->zza:I

    sub-int/2addr v4, v2

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzvv;->zza:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_118

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v4, :cond_112

    goto :goto_118

    :cond_112
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_11e

    :cond_118
    :goto_118
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/nio/ByteBuffer;

    :goto_11e
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvv;->zza:I

    invoke-static {v3, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzvt;->zzk(Lcom/google/android/gms/internal/ads/zzvs;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v0

    goto :goto_138

    :cond_129
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzvv;->zza:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzib;->zzi(I)V

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvv;->zza:I

    invoke-static {v6, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzvt;->zzk(Lcom/google/android/gms/internal/ads/zzvs;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v0

    :goto_138
    return-object v0
.end method

.method private final zzn(I)V
    .registers 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zze:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zze:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzvs;->zzb:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvs;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    :cond_12
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzt;IZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzvt;->zzi(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzyg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzyg;->zza:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zze:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzvs;->zza(J)I

    move-result v0

    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zza([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_20

    if-eqz p3, :cond_1a

    return p2

    :cond_1a
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvt;->zzn(I)V

    return p1
.end method

.method public final zzb()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zze:J

    return-wide v0
.end method

.method public final zzc(J)V
    .registers 7

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2a

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzb:Lcom/google/android/gms/internal/ads/zzvs;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzf:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzyg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyn;->zzc(Lcom/google/android/gms/internal/ads/zzyg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzb:Lcom/google/android/gms/internal/ads/zzvs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvs;->zzb()Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzb:Lcom/google/android/gms/internal/ads/zzvs;

    goto :goto_6

    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzc:Lcom/google/android/gms/internal/ads/zzvs;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzvs;->zza:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzvs;->zza:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_2a

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzc:Lcom/google/android/gms/internal/ads/zzvs;

    :cond_2a
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzib;Lcom/google/android/gms/internal/ads/zzvv;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzc:Lcom/google/android/gms/internal/ads/zzvs;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzvt;->zzm(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzib;Lcom/google/android/gms/internal/ads/zzvv;Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzvs;

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzib;Lcom/google/android/gms/internal/ads/zzvv;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzc:Lcom/google/android/gms/internal/ads/zzvs;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzvt;->zzm(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzib;Lcom/google/android/gms/internal/ads/zzvv;Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzc:Lcom/google/android/gms/internal/ads/zzvs;

    return-void
.end method

.method public final zzf()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzb:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzyg;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzf:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyn;->zzd(Lcom/google/android/gms/internal/ads/zzyh;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvs;->zzb()Lcom/google/android/gms/internal/ads/zzvs;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzb:Lcom/google/android/gms/internal/ads/zzvs;

    const/high16 v1, 0x10000

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzvs;->zze(JI)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzb:Lcom/google/android/gms/internal/ads/zzvs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzc:Lcom/google/android/gms/internal/ads/zzvs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zze:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzf:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyn;->zzg()V

    return-void
.end method

.method public final zzg()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzb:Lcom/google/android/gms/internal/ads/zzvs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzc:Lcom/google/android/gms/internal/ads/zzvs;

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzfj;I)V
    .registers 8

    :goto_0
    if-lez p2, :cond_1a

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzvt;->zzi(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzd:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzyg;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzyg;->zza:[B

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->zze:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzvs;->zza(J)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    sub-int/2addr p2, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzvt;->zzn(I)V

    goto :goto_0

    :cond_1a
    return-void
.end method
