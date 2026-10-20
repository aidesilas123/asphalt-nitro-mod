###### Class com.google.android.gms.internal.ads.zzail (com.google.android.gms.internal.ads.zzail)
.class public final Lcom/google/android/gms/internal/ads/zzail;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzace;
.implements Lcom/google/android/gms/internal/ads/zzade;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzacl;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzfj;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfj;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfj;

.field private final zzf:Ljava/util/ArrayDeque;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzain;

.field private final zzh:Ljava/util/List;

.field private zzi:I

.field private zzj:I

.field private zzk:J

.field private zzl:I

.field private zzm:Lcom/google/android/gms/internal/ads/zzfj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:Z

.field private zzs:Lcom/google/android/gms/internal/ads/zzach;

.field private zzt:[Lcom/google/android/gms/internal/ads/zzaik;

.field private zzu:[[J

.field private zzv:I

.field private zzw:J

.field private zzx:I

.field private zzy:Lcom/google/android/gms/internal/ads/zzago;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaij;->zza:Lcom/google/android/gms/internal/ads/zzaij;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzail;->zza:Lcom/google/android/gms/internal/ads/zzacl;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzail;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzail;->zzi:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzain;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzain;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzg:Lcom/google/android/gms/internal/ads/zzain;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzh:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zze:Lcom/google/android/gms/internal/ads/zzfj;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgg;->zza:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzn:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzach;->zza:Lcom/google/android/gms/internal/ads/zzach;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzs:Lcom/google/android/gms/internal/ads/zzach;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzaik;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzail;->zzt:[Lcom/google/android/gms/internal/ads/zzaik;

    return-void
.end method

.method private static zzf(I)I
    .registers 2

    const v0, 0x68656963

    if-eq p0, v0, :cond_e

    const v0, 0x71742020

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzais;J)I
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzais;->zza(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzais;->zzb(J)I

    move-result p0

    return p0

    :cond_c
    return v0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzais;JJ)J
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzail;->zzi(Lcom/google/android/gms/internal/ads/zzais;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-wide p3

    :cond_8
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzais;->zzc:[J

    aget-wide p1, p0, p1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzk()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    return-void
.end method

.method private final zzl(J)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcf;
        }
    .end annotation

    move-object/from16 v0, p0

    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_273

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahq;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzahq;->zza:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_273

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzahq;

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzahs;->zzd:I

    const v4, 0x6d6f6f76

    if-ne v1, v4, :cond_25e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzail;->zzx:I

    new-instance v11, Lcom/google/android/gms/internal/ads/zzacu;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzacu;-><init>()V

    const v5, 0x75647461

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v5

    if-eqz v5, :cond_46

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaia;->zzb(Lcom/google/android/gms/internal/ads/zzahr;)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzacu;->zzb(Lcom/google/android/gms/internal/ads/zzcb;)Z

    move-object v13, v5

    goto :goto_47

    :cond_46
    const/4 v13, 0x0

    :goto_47
    const v5, 0x6d657461

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzahq;->zza(I)Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v5

    if-eqz v5, :cond_56

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaia;->zza(Lcom/google/android/gms/internal/ads/zzahq;)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v5

    move-object v14, v5

    goto :goto_57

    :cond_56
    const/4 v14, 0x0

    :goto_57
    new-instance v15, Lcom/google/android/gms/internal/ads/zzcb;

    const/4 v10, 0x1

    new-array v5, v10, [Lcom/google/android/gms/internal/ads/zzca;

    const v6, 0x6d766864

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    if-ne v4, v10, :cond_6c

    const/16 v16, 0x1

    goto :goto_6e

    :cond_6c
    const/16 v16, 0x0

    :goto_6e
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaia;->zzc(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzgc;

    move-result-object v4

    aput-object v4, v5, v9

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v15, v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzcb;-><init>(J[Lcom/google/android/gms/internal/ads/zzca;)V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lcom/google/android/gms/internal/ads/zzaii;->zza:Lcom/google/android/gms/internal/ads/zzaii;

    move-object v4, v11

    move-object/from16 v20, v13

    move-wide v12, v7

    move-object/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v16

    move-object/from16 v10, v19

    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzaia;->zzd(Lcom/google/android/gms/internal/ads/zzahq;Lcom/google/android/gms/internal/ads/zzacu;JLcom/google/android/gms/internal/ads/zzad;ZZLcom/google/android/gms/internal/ads/zzftn;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move-wide v7, v12

    const/4 v6, -0x1

    const/4 v9, 0x0

    :goto_a0
    const-wide/16 v16, 0x0

    if-ge v9, v4, :cond_1d1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzais;

    iget v5, v10, Lcom/google/android/gms/internal/ads/zzais;->zzb:I

    if-nez v5, :cond_b7

    move-object/from16 v22, v3

    move/from16 v24, v4

    move-object/from16 v21, v11

    const/4 v2, -0x1

    goto/16 :goto_1c2

    :cond_b7
    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzais;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    move-object/from16 v22, v3

    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzaip;->zze:J

    cmp-long v23, v2, v12

    if-eqz v23, :cond_c2

    goto :goto_c4

    :cond_c2
    iget-wide v2, v10, Lcom/google/android/gms/internal/ads/zzais;->zzh:J

    :goto_c4
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    new-instance v12, Lcom/google/android/gms/internal/ads/zzaik;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzail;->zzs:Lcom/google/android/gms/internal/ads/zzach;

    move/from16 v24, v4

    iget v4, v5, Lcom/google/android/gms/internal/ads/zzaip;->zzb:I

    invoke-interface {v13, v9, v4}, Lcom/google/android/gms/internal/ads/zzach;->zzw(II)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v4

    invoke-direct {v12, v5, v10, v4}, Lcom/google/android/gms/internal/ads/zzaik;-><init>(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzais;Lcom/google/android/gms/internal/ads/zzadk;)V

    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzaip;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v13, "audio/true-hd"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e8

    iget v4, v10, Lcom/google/android/gms/internal/ads/zzais;->zze:I

    mul-int/lit8 v4, v4, 0x10

    goto :goto_ec

    :cond_e8
    iget v4, v10, Lcom/google/android/gms/internal/ads/zzais;->zze:I

    add-int/lit8 v4, v4, 0x1e

    :goto_ec
    iget-object v13, v5, Lcom/google/android/gms/internal/ads/zzaip;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzN(I)Lcom/google/android/gms/internal/ads/zzak;

    iget v4, v5, Lcom/google/android/gms/internal/ads/zzaip;->zzb:I

    move-wide/from16 v25, v7

    const/4 v7, 0x2

    if-ne v4, v7, :cond_110

    cmp-long v4, v2, v16

    if-lez v4, :cond_110

    iget v4, v10, Lcom/google/android/gms/internal/ads/zzais;->zzb:I

    const/4 v10, 0x1

    if-le v4, v10, :cond_111

    long-to-float v2, v2

    int-to-float v3, v4

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v2

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzG(F)Lcom/google/android/gms/internal/ads/zzak;

    goto :goto_111

    :cond_110
    const/4 v10, 0x1

    :cond_111
    :goto_111
    iget v2, v5, Lcom/google/android/gms/internal/ads/zzaip;->zzb:I

    sget v3, Lcom/google/android/gms/internal/ads/zzaih;->zzb:I

    if-ne v2, v10, :cond_127

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzacu;->zza()Z

    move-result v2

    if-eqz v2, :cond_127

    iget v2, v11, Lcom/google/android/gms/internal/ads/zzacu;->zza:I

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzE(I)Lcom/google/android/gms/internal/ads/zzak;

    iget v2, v11, Lcom/google/android/gms/internal/ads/zzacu;->zzb:I

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzF(I)Lcom/google/android/gms/internal/ads/zzak;

    :cond_127
    iget v2, v5, Lcom/google/android/gms/internal/ads/zzaip;->zzb:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzh:Ljava/util/List;

    const/4 v4, 0x3

    new-array v7, v4, [Lcom/google/android/gms/internal/ads/zzcb;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_137

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto :goto_13f

    :cond_137
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzh:Ljava/util/List;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcb;

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzcb;-><init>(Ljava/util/List;)V

    const/4 v3, 0x0

    :goto_13f
    aput-object v8, v7, v3

    aput-object v20, v7, v10

    const/4 v8, 0x2

    aput-object v15, v7, v8

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcb;

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzca;

    move-object/from16 v21, v11

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v8, v10, v11, v4}, Lcom/google/android/gms/internal/ads/zzcb;-><init>(J[Lcom/google/android/gms/internal/ads/zzca;)V

    if-eqz v14, :cond_18f

    const/4 v4, 0x0

    :goto_157
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzcb;->zza()I

    move-result v10

    if-ge v4, v10, :cond_18f

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzcb;->zzb(I)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/ads/zzfw;

    if-eqz v11, :cond_18b

    check-cast v10, Lcom/google/android/gms/internal/ads/zzfw;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzfw;->zza:Ljava/lang/String;

    const-string v3, "com.android.capture.fps"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_180

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18b

    const/4 v3, 0x1

    new-array v11, v3, [Lcom/google/android/gms/internal/ads/zzca;

    const/16 v17, 0x0

    aput-object v10, v11, v17

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzcb;->zzc([Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v8

    goto :goto_18b

    :cond_180
    const/4 v3, 0x1

    const/16 v17, 0x0

    new-array v11, v3, [Lcom/google/android/gms/internal/ads/zzca;

    aput-object v10, v11, v17

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzcb;->zzc([Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v8

    :cond_18b
    :goto_18b
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_157

    :cond_18f
    const/4 v2, 0x0

    const/4 v3, 0x3

    :goto_191
    if-ge v2, v3, :cond_19c

    aget-object v4, v7, v2

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzcb;->zzd(Lcom/google/android/gms/internal/ads/zzcb;)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_191

    :cond_19c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzcb;->zza()I

    move-result v2

    if-lez v2, :cond_1a5

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzak;->zzO(Lcom/google/android/gms/internal/ads/zzcb;)Lcom/google/android/gms/internal/ads/zzak;

    :cond_1a5
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzaik;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzadk;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzaip;->zzb:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1bc

    const/4 v2, -0x1

    if-ne v6, v2, :cond_1bd

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v6, v3

    goto :goto_1bd

    :cond_1bc
    const/4 v2, -0x1

    :cond_1bd
    :goto_1bd
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v7, v25

    :goto_1c2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, v21

    move-object/from16 v3, v22

    move/from16 v4, v24

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_a0

    :cond_1d1
    const/4 v2, -0x1

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzv:I

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzail;->zzw:J

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzaik;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzaik;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzt:[Lcom/google/android/gms/internal/ads/zzaik;

    array-length v3, v1

    new-array v4, v3, [[J

    new-array v5, v3, [I

    new-array v6, v3, [J

    new-array v3, v3, [Z

    const/4 v9, 0x0

    :goto_1eb
    array-length v7, v1

    if-ge v9, v7, :cond_206

    aget-object v7, v1, v9

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzais;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:I

    new-array v7, v7, [J

    aput-object v7, v4, v9

    aget-object v7, v1, v9

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzais;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzais;->zzf:[J

    const/4 v8, 0x0

    aget-wide v10, v7, v8

    aput-wide v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1eb

    :cond_206
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_208
    array-length v7, v1

    if-ge v9, v7, :cond_248

    const-wide v10, 0x7fffffffffffffffL

    const/4 v7, 0x0

    const/4 v12, -0x1

    :goto_212
    array-length v13, v1

    if-ge v7, v13, :cond_224

    aget-boolean v13, v3, v7

    if-nez v13, :cond_221

    aget-wide v13, v6, v7

    cmp-long v15, v13, v10

    if-gtz v15, :cond_221

    move v12, v7

    move-wide v10, v13

    :cond_221
    add-int/lit8 v7, v7, 0x1

    goto :goto_212

    :cond_224
    aget v7, v5, v12

    aget-object v10, v4, v12

    aput-wide v16, v10, v7

    aget-object v11, v1, v12

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzais;

    iget-object v13, v11, Lcom/google/android/gms/internal/ads/zzais;->zzd:[I

    aget v13, v13, v7

    int-to-long v13, v13

    add-long v16, v16, v13

    const/4 v13, 0x1

    add-int/2addr v7, v13

    aput v7, v5, v12

    array-length v10, v10

    if-ge v7, v10, :cond_243

    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzais;->zzf:[J

    aget-wide v14, v10, v7

    aput-wide v14, v6, v12

    goto :goto_208

    :cond_243
    aput-boolean v13, v3, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_208

    :cond_248
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzail;->zzu:[[J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzs:Lcom/google/android/gms/internal/ads/zzach;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzach;->zzD()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzs:Lcom/google/android/gms/internal/ads/zzach;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzach;->zzO(Lcom/google/android/gms/internal/ads/zzade;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzi:I

    goto/16 :goto_2

    :cond_25e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahq;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzahq;->zzc(Lcom/google/android/gms/internal/ads/zzahq;)V

    goto/16 :goto_2

    :cond_273
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzi:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27b

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzail;->zzk()V

    :cond_27b
    return-void
.end method


# virtual methods
.method public final zza()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzw:J

    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacf;Lcom/google/android/gms/internal/ads/zzadb;)I
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_6
    :goto_6
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzi:I

    const v4, 0x66747970

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz v3, :cond_25c

    const-wide/32 v13, 0x40000

    if-eq v3, v10, :cond_1cb

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v3

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzail;->zzn:I

    if-ne v9, v8, :cond_9e

    const-wide v16, 0x7fffffffffffffffL

    move-wide/from16 v18, v16

    move-wide/from16 v21, v18

    move-wide/from16 v23, v21

    const/4 v9, 0x0

    const/16 v20, 0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, 0x1

    :goto_34
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzt:[Lcom/google/android/gms/internal/ads/zzaik;

    array-length v15, v5

    if-ge v9, v15, :cond_84

    aget-object v5, v5, v9

    iget v15, v5, Lcom/google/android/gms/internal/ads/zzaik;->zze:I

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzais;

    iget v12, v5, Lcom/google/android/gms/internal/ads/zzais;->zzb:I

    if-ne v15, v12, :cond_44

    goto :goto_81

    :cond_44
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzais;->zzc:[J

    aget-wide v28, v5, v15

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzu:[[J

    sget v12, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    aget-object v5, v5, v9

    aget-wide v30, v5, v15

    sub-long v28, v28, v3

    cmp-long v5, v28, v6

    if-ltz v5, :cond_5d

    cmp-long v5, v28, v13

    if-ltz v5, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 v5, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v5, 0x1

    :goto_5e
    if-nez v5, :cond_64

    if-nez v27, :cond_6c

    const/4 v12, 0x0

    goto :goto_66

    :cond_64
    move/from16 v12, v27

    :goto_66
    if-ne v5, v12, :cond_75

    cmp-long v15, v28, v23

    if-gez v15, :cond_75

    :cond_6c
    move/from16 v27, v5

    move/from16 v26, v9

    move-wide/from16 v23, v28

    move-wide/from16 v21, v30

    goto :goto_77

    :cond_75
    move/from16 v27, v12

    :goto_77
    cmp-long v12, v30, v18

    if-gez v12, :cond_81

    move/from16 v20, v5

    move/from16 v25, v9

    move-wide/from16 v18, v30

    :cond_81
    :goto_81
    add-int/lit8 v9, v9, 0x1

    goto :goto_34

    :cond_84
    cmp-long v5, v18, v16

    if-eqz v5, :cond_96

    if-eqz v20, :cond_96

    const-wide/32 v15, 0xa00000

    add-long v18, v18, v15

    cmp-long v5, v21, v18

    if-ltz v5, :cond_96

    move/from16 v9, v25

    goto :goto_98

    :cond_96
    move/from16 v9, v26

    :goto_98
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzail;->zzn:I

    if-ne v9, v8, :cond_9e

    goto/16 :goto_1ca

    :cond_9e
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzt:[Lcom/google/android/gms/internal/ads/zzaik;

    aget-object v5, v5, v9

    iget-object v9, v5, Lcom/google/android/gms/internal/ads/zzaik;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    iget v12, v5, Lcom/google/android/gms/internal/ads/zzaik;->zze:I

    iget-object v15, v5, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzais;

    iget-object v8, v15, Lcom/google/android/gms/internal/ads/zzais;->zzc:[J

    aget-wide v10, v8, v12

    iget-object v8, v15, Lcom/google/android/gms/internal/ads/zzais;->zzd:[I

    aget v8, v8, v12

    iget-object v15, v5, Lcom/google/android/gms/internal/ads/zzaik;->zzd:Lcom/google/android/gms/internal/ads/zzadl;

    sub-long v3, v10, v3

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzail;->zzo:I

    int-to-long v13, v13

    add-long/2addr v3, v13

    cmp-long v13, v3, v6

    if-ltz v13, :cond_1c7

    const-wide/32 v6, 0x40000

    cmp-long v13, v3, v6

    if-ltz v13, :cond_c5

    goto/16 :goto_1c7

    :cond_c5
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzaik;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzg:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_d1

    const-wide/16 v6, 0x8

    add-long/2addr v3, v6

    add-int/lit8 v8, v8, -0x8

    :cond_d1
    long-to-int v2, v3

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacf;->zzk(I)V

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzaik;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzj:I

    if-eqz v3, :cond_13b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzail;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    const/4 v4, 0x0

    aput-byte v4, v2, v4

    const/4 v6, 0x1

    aput-byte v4, v2, v6

    const/4 v6, 0x2

    aput-byte v4, v2, v6

    rsub-int/lit8 v4, v3, 0x4

    :goto_ec
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    if-ge v6, v8, :cond_17e

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzq:I

    if-nez v6, :cond_126

    invoke-interface {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzacf;->zzi([BII)V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzo:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzo:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v6

    if-ltz v6, :cond_11e

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzq:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v10, 0x4

    invoke-interface {v9, v6, v10}, Lcom/google/android/gms/internal/ads/zzadk;->zzr(Lcom/google/android/gms/internal/ads/zzfj;I)V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    add-int/2addr v6, v10

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    add-int/2addr v8, v4

    goto :goto_ec

    :cond_11e
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_126
    const/4 v7, 0x0

    invoke-interface {v9, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzadk;->zzf(Lcom/google/android/gms/internal/ads/zzt;IZ)I

    move-result v6

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzail;->zzo:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzail;->zzo:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzail;->zzq:I

    sub-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzail;->zzq:I

    goto :goto_ec

    :cond_13b
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15e

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    if-nez v2, :cond_15b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzail;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzabi;->zzb(ILcom/google/android/gms/internal/ads/zzfj;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzail;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v3, 0x7

    invoke-interface {v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzadk;->zzr(Lcom/google/android/gms/internal/ads/zzfj;I)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    :cond_15b
    add-int/lit8 v8, v8, 0x7

    goto :goto_163

    :cond_15e
    if-eqz v15, :cond_163

    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzadl;->zzd(Lcom/google/android/gms/internal/ads/zzacf;)V

    :cond_163
    :goto_163
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    if-ge v2, v8, :cond_17e

    sub-int v2, v8, v2

    const/4 v3, 0x0

    invoke-interface {v9, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadk;->zzf(Lcom/google/android/gms/internal/ads/zzt;IZ)I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzo:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzo:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzq:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzq:I

    goto :goto_163

    :cond_17e
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzais;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzais;->zzf:[J

    aget-wide v3, v2, v12

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzais;->zzg:[I

    aget v1, v1, v12

    if-eqz v15, :cond_1a7

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v2, v15

    move-object/from16 v16, v9

    move-wide/from16 v17, v3

    move/from16 v19, v1

    move/from16 v20, v8

    invoke-virtual/range {v15 .. v22}, Lcom/google/android/gms/internal/ads/zzadl;->zzc(Lcom/google/android/gms/internal/ads/zzadk;JIIILcom/google/android/gms/internal/ads/zzadj;)V

    const/4 v1, 0x1

    add-int/2addr v12, v1

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzais;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzais;->zzb:I

    if-ne v12, v1, :cond_1b5

    const/4 v1, 0x0

    invoke-virtual {v2, v9, v1}, Lcom/google/android/gms/internal/ads/zzadl;->zza(Lcom/google/android/gms/internal/ads/zzadk;Lcom/google/android/gms/internal/ads/zzadj;)V

    goto :goto_1b5

    :cond_1a7
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v9

    move-wide/from16 v16, v3

    move/from16 v18, v1

    move/from16 v19, v8

    invoke-interface/range {v15 .. v21}, Lcom/google/android/gms/internal/ads/zzadk;->zzt(JIIILcom/google/android/gms/internal/ads/zzadj;)V

    :cond_1b5
    :goto_1b5
    iget v1, v5, Lcom/google/android/gms/internal/ads/zzaik;->zze:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v5, Lcom/google/android/gms/internal/ads/zzaik;->zze:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzn:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzo:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzail;->zzq:I

    const/4 v8, 0x0

    goto :goto_1ca

    :cond_1c7
    :goto_1c7
    iput-wide v10, v2, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    const/4 v8, 0x1

    :goto_1ca
    return v8

    :cond_1cb
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzk:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzm:Lcom/google/android/gms/internal/ads/zzfj;

    if-eqz v3, :cond_22d

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v10

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    long-to-int v6, v5

    invoke-interface {v1, v10, v11, v6}, Lcom/google/android/gms/internal/ads/zzacf;->zzi([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzj:I

    if-ne v5, v4, :cond_212

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzail;->zzr:Z

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzail;->zzf(I)I

    move-result v4

    if-eqz v4, :cond_1f9

    goto :goto_20f

    :cond_1f9
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    :cond_1fd
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v4

    if-lez v4, :cond_20e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzail;->zzf(I)I

    move-result v4

    if-eqz v4, :cond_1fd

    goto :goto_20f

    :cond_20e
    const/4 v4, 0x0

    :goto_20f
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzail;->zzx:I

    goto :goto_246

    :cond_212
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_246

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzahq;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzahr;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzail;->zzj:I

    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzahr;-><init>(ILcom/google/android/gms/internal/ads/zzfj;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzahq;->zzd(Lcom/google/android/gms/internal/ads/zzahr;)V

    goto :goto_246

    :cond_22d
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzr:Z

    if-nez v3, :cond_23b

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzj:I

    const v4, 0x6d646174

    if-ne v3, v4, :cond_23b

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzx:I

    :cond_23b
    const-wide/32 v3, 0x40000

    cmp-long v9, v5, v3

    if-gez v9, :cond_248

    long-to-int v3, v5

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacf;->zzk(I)V

    :cond_246
    :goto_246
    const/4 v11, 0x0

    goto :goto_250

    :cond_248
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    const/4 v11, 0x1

    :goto_250
    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzail;->zzl(J)V

    if-eqz v11, :cond_6

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzi:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v3, 0x1

    return v3

    :cond_25c
    const/4 v3, 0x1

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    if-nez v5, :cond_287

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zze:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v1, v5, v8, v9, v3}, Lcom/google/android/gms/internal/ads/zzacf;->zzn([BIIZ)Z

    move-result v5

    if-nez v5, :cond_270

    const/4 v3, -0x1

    return v3

    :cond_270
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zze:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zze:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzail;->zzk:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zze:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzj:I

    :cond_287
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzail;->zzk:J

    const-wide/16 v12, 0x1

    cmp-long v3, v10, v12

    if-nez v3, :cond_2a6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zze:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    invoke-interface {v1, v3, v9, v9}, Lcom/google/android/gms/internal/ads/zzacf;->zzi([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zze:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzu()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzk:J

    goto :goto_2d1

    :cond_2a6
    cmp-long v3, v10, v6

    if-nez v3, :cond_2d1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzd()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_2c2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzahq;

    if-eqz v3, :cond_2c1

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->zza:J

    goto :goto_2c2

    :cond_2c1
    move-wide v5, v7

    :cond_2c2
    :goto_2c2
    cmp-long v3, v5, v7

    if-eqz v3, :cond_2d1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzk:J

    :cond_2d1
    :goto_2d1
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzk:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    int-to-long v7, v3

    cmp-long v10, v5, v7

    if-ltz v10, :cond_40e

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzj:I

    const v6, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v5, v6, :cond_3bc

    const v6, 0x7472616b

    if-eq v5, v6, :cond_3bc

    const v6, 0x6d646961

    if-eq v5, v6, :cond_3bc

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_3bc

    const v6, 0x7374626c

    if-eq v5, v6, :cond_3bc

    const v6, 0x65647473

    if-eq v5, v6, :cond_3bc

    if-ne v5, v7, :cond_301

    goto/16 :goto_3bc

    :cond_301
    const v6, 0x6d646864

    if-eq v5, v6, :cond_388

    const v6, 0x6d766864

    if-eq v5, v6, :cond_388

    const v6, 0x68646c72    # 4.3148E24f

    if-eq v5, v6, :cond_388

    const v6, 0x73747364

    if-eq v5, v6, :cond_388

    const v6, 0x73747473

    if-eq v5, v6, :cond_388

    const v6, 0x73747373

    if-eq v5, v6, :cond_388

    const v6, 0x63747473

    if-eq v5, v6, :cond_388

    const v6, 0x656c7374

    if-eq v5, v6, :cond_388

    const v6, 0x73747363

    if-eq v5, v6, :cond_388

    const v6, 0x7374737a

    if-eq v5, v6, :cond_388

    const v6, 0x73747a32

    if-eq v5, v6, :cond_388

    const v6, 0x7374636f

    if-eq v5, v6, :cond_388

    const v6, 0x636f3634

    if-eq v5, v6, :cond_388

    const v6, 0x746b6864

    if-eq v5, v6, :cond_388

    if-eq v5, v4, :cond_388

    const v4, 0x75647461

    if-eq v5, v4, :cond_388

    const v4, 0x6b657973

    if-eq v5, v4, :cond_388

    const v4, 0x696c7374

    if-ne v5, v4, :cond_359

    goto :goto_388

    :cond_359
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    int-to-long v5, v5

    sub-long v10, v3, v5

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzj:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_380

    add-long v14, v10, v5

    new-instance v3, Lcom/google/android/gms/internal/ads/zzago;

    const-wide/16 v8, 0x0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzail;->zzk:J

    sub-long v4, v12, v5

    move-object v7, v3

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v16, v4

    invoke-direct/range {v7 .. v17}, Lcom/google/android/gms/internal/ads/zzago;-><init>(JJJJJ)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzy:Lcom/google/android/gms/internal/ads/zzago;

    :cond_380
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzm:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzi:I

    goto/16 :goto_6

    :cond_388
    :goto_388
    if-ne v3, v9, :cond_38c

    const/4 v3, 0x1

    goto :goto_38d

    :cond_38c
    const/4 v3, 0x0

    :goto_38d
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzk:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_39b

    const/4 v3, 0x1

    goto :goto_39c

    :cond_39b
    const/4 v3, 0x0

    :goto_39c
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfj;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzail;->zzk:J

    long-to-int v5, v4

    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzail;->zze:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzm:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzail;->zzi:I

    goto/16 :goto_6

    :cond_3bc
    :goto_3bc
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzk:J

    add-long/2addr v3, v5

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    int-to-long v10, v8

    cmp-long v8, v5, v10

    if-eqz v8, :cond_3ee

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzj:I

    if-ne v5, v7, :cond_3ee

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6, v9}, Lcom/google/android/gms/internal/ads/zzacf;->zzh([BII)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaia;->zze(Lcom/google/android/gms/internal/ads/zzfj;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzacf;->zzk(I)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    :cond_3ee
    sub-long/2addr v3, v10

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzahq;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzail;->zzj:I

    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzail;->zzk:J

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_409

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzail;->zzl(J)V

    goto/16 :goto_6

    :cond_409
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzail;->zzk()V

    goto/16 :goto_6

    :cond_40e
    const-string v1, "Atom size less than header length (unsupported)."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzach;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzail;->zzs:Lcom/google/android/gms/internal/ads/zzach;

    return-void
.end method

.method public final zzd(JJ)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzl:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzail;->zzn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzq:I

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_1b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzail;->zzk()V

    return-void

    :cond_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzail;->zzt:[Lcom/google/android/gms/internal/ads/zzaik;

    array-length p2, p1

    :goto_1e
    if-ge v0, p2, :cond_3a

    aget-object v2, p1, v0

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzais;

    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzais;->zza(J)I

    move-result v4

    if-ne v4, v1, :cond_2e

    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzais;->zzb(J)I

    move-result v4

    :cond_2e
    iput v4, v2, Lcom/google/android/gms/internal/ads/zzaik;->zze:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaik;->zzd:Lcom/google/android/gms/internal/ads/zzadl;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzadl;->zzb()V

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3a
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacf;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaio;->zzb(Lcom/google/android/gms/internal/ads/zzacf;Z)Z

    move-result p1

    return p1
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzadc;
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->zzt:[Lcom/google/android/gms/internal/ads/zzaik;

    array-length v1, v0

    if-nez v1, :cond_e

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadc;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzadf;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzadc;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzadf;)V

    goto/16 :goto_91

    :cond_e
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzail;->zzv:I

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v2, :cond_53

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzais;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzail;->zzi(Lcom/google/android/gms/internal/ads/zzais;J)I

    move-result v1

    if-ne v1, v2, :cond_2d

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadc;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzadf;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzadc;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzadf;)V

    goto/16 :goto_91

    :cond_2d
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzais;->zzf:[J

    aget-wide v8, v7, v1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzais;->zzc:[J

    aget-wide v10, v7, v1

    cmp-long v7, v8, p1

    if-gez v7, :cond_50

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzais;->zzb:I

    add-int/2addr v7, v2

    if-ge v1, v7, :cond_50

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzais;->zzb(J)I

    move-result p1

    if-eq p1, v2, :cond_50

    if-eq p1, v1, :cond_50

    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzais;->zzf:[J

    aget-wide v1, p2, p1

    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzais;->zzc:[J

    aget-wide p1, p2, p1

    move-wide v3, p1

    goto :goto_51

    :cond_50
    move-wide v1, v5

    :goto_51
    move-wide p1, v8

    goto :goto_59

    :cond_53
    const-wide v10, 0x7fffffffffffffffL

    move-wide v1, v5

    :goto_59
    const/4 v0, 0x0

    :goto_5a
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzail;->zzt:[Lcom/google/android/gms/internal/ads/zzaik;

    array-length v8, v7

    if-ge v0, v8, :cond_77

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzail;->zzv:I

    if-eq v0, v8, :cond_74

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzais;

    invoke-static {v7, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/zzail;->zzj(Lcom/google/android/gms/internal/ads/zzais;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_73

    invoke-static {v7, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzail;->zzj(Lcom/google/android/gms/internal/ads/zzais;JJ)J

    move-result-wide v3

    :cond_73
    move-wide v10, v8

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_77
    new-instance v0, Lcom/google/android/gms/internal/ads/zzadf;

    invoke-direct {v0, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/zzadf;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_86

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadc;

    invoke-direct {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzadc;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzadf;)V

    goto :goto_91

    :cond_86
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadf;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzadf;-><init>(JJ)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzadc;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzadc;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzadf;)V

    move-object p1, p2

    :goto_91
    return-object p1
.end method

.method public final zzh()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
