###### Class com.google.android.gms.internal.ads.zzaka (com.google.android.gms.internal.ads.zzaka)
.class public final Lcom/google/android/gms/internal/ads/zzaka;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajy;


# static fields
.field private static final zza:[D


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzadk;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaln;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzfj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzakn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:[Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzajz;

.field private zzi:J

.field private zzj:Z

.field private zzk:Z

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:Z

.field private zzq:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaka;->zza:[D

    return-void

    :array_a
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaka;-><init>(Lcom/google/android/gms/internal/ads/zzaln;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaln;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/ads/zzaln;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzd:Lcom/google/android/gms/internal/ads/zzaln;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzg:[Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajz;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzajz;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzh:Lcom/google/android/gms/internal/ads/zzajz;

    if-eqz p1, :cond_24

    new-instance p1, Lcom/google/android/gms/internal/ads/zzakn;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzakn;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>()V

    goto :goto_27

    :cond_24
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    :goto_27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zze:Lcom/google/android/gms/internal/ads/zzfj;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzo:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfj;)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzi:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzi:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzadk;->zzr(Lcom/google/android/gms/internal/ads/zzfj;I)V

    :goto_28
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzg:[Z

    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzgg;->zza([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_41

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzk:Z

    if-nez v4, :cond_39

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzh:Lcom/google/android/gms/internal/ads/zzajz;

    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajz;->zza([BII)V

    :cond_39
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    if-eqz v4, :cond_40

    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzakn;->zza([BII)V

    :cond_40
    return-void

    :cond_41
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzk:Z

    if-nez v9, :cond_124

    if-lez v8, :cond_58

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzh:Lcom/google/android/gms/internal/ads/zzajz;

    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzajz;->zza([BII)V

    :cond_58
    if-gez v8, :cond_5c

    neg-int v9, v8

    goto :goto_5d

    :cond_5c
    const/4 v9, 0x0

    :goto_5d
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzh:Lcom/google/android/gms/internal/ads/zzajz;

    invoke-virtual {v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzajz;->zzc(II)Z

    move-result v9

    if-eqz v9, :cond_124

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzh:Lcom/google/android/gms/internal/ads/zzajz;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzb:Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzajz;->zzc:[B

    iget v14, v9, Lcom/google/android/gms/internal/ads/zzajz;->zza:I

    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    const/4 v14, 0x4

    aget-byte v15, v13, v14

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x5

    aget-byte v10, v13, v16

    and-int/lit16 v10, v10, 0xff

    const/16 v17, 0x6

    aget-byte v11, v13, v17

    and-int/lit16 v11, v11, 0xff

    const/16 v17, 0x7

    aget-byte v14, v13, v17

    and-int/lit16 v14, v14, 0xf0

    and-int/lit8 v19, v10, 0xf

    const/4 v6, 0x4

    shl-int/2addr v15, v6

    shr-int/2addr v10, v6

    or-int/2addr v10, v15

    shr-int/2addr v14, v6

    const/16 v15, 0x8

    shl-int/lit8 v18, v19, 0x8

    or-int v11, v18, v11

    const/4 v15, 0x2

    if-eq v14, v15, :cond_ad

    const/4 v15, 0x3

    if-eq v14, v15, :cond_a8

    if-eq v14, v6, :cond_a3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_b4

    :cond_a3
    mul-int/lit8 v6, v11, 0x79

    mul-int/lit8 v14, v10, 0x64

    goto :goto_b1

    :cond_a8
    mul-int/lit8 v6, v11, 0x10

    mul-int/lit8 v14, v10, 0x9

    goto :goto_b1

    :cond_ad
    mul-int/lit8 v6, v11, 0x4

    mul-int/lit8 v14, v10, 0x3

    :goto_b1
    int-to-float v6, v6

    int-to-float v14, v14

    div-float/2addr v6, v14

    :goto_b4
    new-instance v14, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzak;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    const-string v12, "video/mpeg2"

    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzak;->zzH(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzR(F)Lcom/google/android/gms/internal/ads/zzak;

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v6

    aget-byte v10, v13, v17

    and-int/lit8 v10, v10, 0xf

    add-int/lit8 v10, v10, -0x1

    const-wide/16 v11, 0x0

    if-ltz v10, :cond_106

    const/16 v14, 0x8

    if-ge v10, v14, :cond_106

    sget-object v11, Lcom/google/android/gms/internal/ads/zzaka;->zza:[D

    aget-wide v10, v11, v10

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzajz;->zzb:I

    add-int/lit8 v9, v9, 0x9

    aget-byte v9, v13, v9

    and-int/lit8 v12, v9, 0x60

    shr-int/lit8 v12, v12, 0x5

    and-int/lit8 v9, v9, 0x1f

    if-eq v12, v9, :cond_ff

    int-to-double v12, v12

    add-int/lit8 v9, v9, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    int-to-double v14, v9

    div-double/2addr v12, v14

    mul-double v10, v10, v12

    :cond_ff
    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v10

    double-to-long v11, v12

    :cond_106
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    iget-object v10, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/ads/zzam;

    invoke-interface {v9, v10}, Lcom/google/android/gms/internal/ads/zzadk;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzl:J

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzk:Z

    :cond_124
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    const/16 v9, 0xb2

    if-eqz v6, :cond_16c

    if-lez v8, :cond_131

    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzakn;->zza([BII)V

    const/4 v1, 0x0

    goto :goto_132

    :cond_131
    neg-int v1, v8

    :goto_132
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzakn;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_158

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzakn;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzakn;->zzb:I

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzgg;->zzb([BI)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaka;->zze:Lcom/google/android/gms/internal/ads/zzfj;

    sget v8, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzakn;->zza:[B

    invoke-virtual {v6, v8, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzE([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzd:Lcom/google/android/gms/internal/ads/zzaln;

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzo:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaka;->zze:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1, v10, v11, v6}, Lcom/google/android/gms/internal/ads/zzaln;->zza(JLcom/google/android/gms/internal/ads/zzfj;)V

    :cond_158
    if-ne v5, v9, :cond_16c

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v1

    add-int/lit8 v5, v4, 0x2

    aget-byte v1, v1, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_16a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzakn;->zzc(I)V

    :cond_16a
    const/16 v5, 0xb2

    :cond_16c
    if-eqz v5, :cond_17e

    const/16 v1, 0xb3

    if-ne v5, v1, :cond_173

    goto :goto_17e

    :cond_173
    const/16 v1, 0xb8

    if-ne v5, v1, :cond_17a

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzp:Z

    :cond_17a
    move v4, v2

    move-object v6, v3

    goto/16 :goto_1e5

    :cond_17e
    :goto_17e
    sub-int v1, v2, v4

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzq:Z

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_1ac

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzk:Z

    if-eqz v4, :cond_1ac

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzo:J

    cmp-long v4, v9, v14

    if-eqz v4, :cond_1ac

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzp:Z

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzi:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzn:J

    sub-long/2addr v12, v14

    long-to-int v4, v12

    sub-int v12, v4, v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    const/4 v14, 0x0

    move v13, v1

    move v4, v2

    move-object v6, v3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzadk;->zzt(JIIILcom/google/android/gms/internal/ads/zzadj;)V

    goto :goto_1af

    :cond_1ac
    move v4, v2

    move-object v6, v3

    move-wide v2, v14

    :goto_1af
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzj:Z

    if-eqz v8, :cond_1bb

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzq:Z

    if-eqz v8, :cond_1b8

    goto :goto_1bb

    :cond_1b8
    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_1de

    :cond_1bb
    :goto_1bb
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzi:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzn:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzm:J

    cmp-long v1, v14, v2

    if-eqz v1, :cond_1c8

    goto :goto_1d4

    :cond_1c8
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzo:J

    cmp-long v1, v8, v2

    if-eqz v1, :cond_1d3

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzl:J

    add-long v14, v8, v10

    goto :goto_1d4

    :cond_1d3
    move-wide v14, v2

    :goto_1d4
    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzo:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzp:Z

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzm:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzj:Z

    :goto_1de
    if-nez v5, :cond_1e2

    const/4 v10, 0x1

    goto :goto_1e3

    :cond_1e2
    const/4 v10, 0x0

    :goto_1e3
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzq:Z

    :goto_1e5
    move v2, v4

    move-object v3, v6

    move v1, v7

    move-object/from16 v6, p1

    goto/16 :goto_28
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzalk;)V
    .registers 5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzb:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzw(II)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzd:Lcom/google/android/gms/internal/ads/zzaln;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzalk;)V

    :cond_1b
    return-void
.end method

.method public final zzc(Z)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_19

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzp:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzi:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzn:J

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzo:J

    long-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzadk;->zzt(JIIILcom/google/android/gms/internal/ads/zzadj;)V

    :cond_19
    return-void
.end method

.method public final zzd(JI)V
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzm:J

    return-void
.end method

.method public final zze()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzg:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgg;->zzf([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzh:Lcom/google/android/gms/internal/ads/zzajz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajz;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakn;->zzb()V

    :cond_11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzi:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzj:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzo:J

    return-void
.end method
