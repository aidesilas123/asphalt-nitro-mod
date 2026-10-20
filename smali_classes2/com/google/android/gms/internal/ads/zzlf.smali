###### Class com.google.android.gms.internal.ads.zzlf (com.google.android.gms.internal.ads.zzlf)
.class final Lcom/google/android/gms/internal/ads/zzlf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzmj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeq;

.field private zze:J

.field private zzf:I

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzlc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/ads/zzlc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/ads/zzlc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:I

.field private zzl:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzm:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzmj;Lcom/google/android/gms/internal/ads/zzeq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzc:Lcom/google/android/gms/internal/ads/zzmj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzd:Lcom/google/android/gms/internal/ads/zzeq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    return-void
.end method

.method private final zzA(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;)Z
    .registers 8

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzlf;->zzC(Lcom/google/android/gms/internal/ads/zzuk;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcz;->zzq:I

    if-ne p1, p2, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    return v1
.end method

.method private final zzB(Lcom/google/android/gms/internal/ads/zzda;)Z
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzf:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzg:Z

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzda;->zzi(ILcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzcz;IZ)I

    move-result v3

    :goto_1a
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzld;->zzg:Z

    if-nez v2, :cond_2e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v0

    goto :goto_1a

    :cond_2e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    if-nez v2, :cond_38

    goto :goto_43

    :cond_38
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_41

    goto :goto_43

    :cond_41
    move-object v0, v2

    goto :goto_d

    :cond_43
    :goto_43
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzlf;->zzm(Lcom/google/android/gms/internal/ads/zzlc;)Z

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzlf;->zzg(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzld;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    if-nez v2, :cond_52

    return v1

    :cond_52
    const/4 p1, 0x0

    return p1
.end method

.method private static final zzC(Lcom/google/android/gms/internal/ads/zzuk;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v0

    if-nez v0, :cond_d

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzuk;->zze:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;I)J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzcx;->zzi(I)J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzcx;->zzk(I)J

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private final zzt(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzlc;J)Lcom/google/android/gms/internal/ads/zzld;
    .registers 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzlc;->zze()J

    move-result-wide v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzld;->zze:J

    add-long/2addr v0, v2

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzld;->zzg:Z

    sub-long v6, v0, p3

    const/4 v12, -0x1

    if-eqz v2, :cond_d5

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v1

    iget v3, v9, Lcom/google/android/gms/internal/ads/zzlf;->zzf:I

    iget-boolean v2, v9, Lcom/google/android/gms/internal/ads/zzlf;->zzg:Z

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    move-object v5, v0

    move-object/from16 v0, p1

    move/from16 v16, v2

    move-object v2, v4

    move v4, v3

    move-object v3, v5

    const-wide/16 v13, 0x0

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzda;->zzi(ILcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzcz;IZ)I

    move-result v0

    if-ne v0, v12, :cond_3b

    :goto_38
    const/4 v13, 0x0

    goto/16 :goto_19c

    :cond_3b
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzda;->zzd(ILcom/google/android/gms/internal/ads/zzcx;Z)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcx;->zzc:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {v8, v3, v2, v13, v14}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcz;->zzp:I

    if-ne v2, v0, :cond_9c

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzda;->zzm(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzcx;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_6f

    goto :goto_38

    :cond_6f
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v0

    if-eqz v0, :cond_8e

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    goto :goto_95

    :cond_8e
    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/zzlf;->zze:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v9, Lcom/google/android/gms/internal/ads/zzlf;->zze:J

    :goto_95
    move-wide v15, v2

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_9d

    :cond_9c
    move-wide v15, v13

    :goto_9d
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    move-object/from16 v0, p1

    move-wide v2, v15

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzlf;->zzx(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzuk;

    move-result-object v2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v13, v0

    if-eqz v3, :cond_c9

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzld;->zzc:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_c9

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()I

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzg()I

    :cond_c9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v13

    move-wide v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzlf;->zzu(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;JJ)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v13

    goto/16 :goto_19c

    :cond_d5
    const-wide/16 v13, 0x0

    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v0

    if-eqz v0, :cond_154

    iget v3, v10, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcx;->zza(I)I

    move-result v0

    if-ne v0, v12, :cond_f2

    goto/16 :goto_38

    :cond_f2
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzcx;->zzf(II)I

    move-result v4

    if-gez v4, :cond_10d

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzld;->zzc:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzlf;->zzv(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v13

    goto/16 :goto_19c

    :cond_10d
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zzld;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_139

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzda;->zzm(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzcx;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_131

    goto/16 :goto_38

    :cond_131
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_139
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget v3, v10, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    invoke-direct {v9, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzlf;->zzs(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;I)J

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzld;->zzc:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzlf;->zzw(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v13

    goto :goto_19c

    :cond_154
    iget v0, v10, Lcom/google/android/gms/internal/ads/zzuk;->zze:I

    if-eq v0, v12, :cond_15d

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzm(I)Z

    :cond_15d
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzuk;->zze:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcx;->zze(I)I

    move-result v4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcx;->zzn(I)Z

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzuk;->zze:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcx;->zza(I)I

    move-result v0

    if-eq v4, v0, :cond_184

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget v3, v10, Lcom/google/android/gms/internal/ads/zzuk;->zze:I

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzld;->zze:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzlf;->zzv(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v13

    goto :goto_19c

    :cond_184
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzuk;->zze:I

    invoke-direct {v9, v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzlf;->zzs(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;I)J

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzld;->zze:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzlf;->zzw(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v13

    :goto_19c
    return-object v13
.end method

.method private final zzu(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;JJ)Lcom/google/android/gms/internal/ads/zzld;
    .registers 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzlf;->zzv(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v0

    return-object v0

    :cond_20
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzlf;->zzw(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v0

    return-object v0
.end method

.method private final zzv(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzld;
    .registers 27

    move-object/from16 v0, p0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzuk;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzuk;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcx;->zzh(II)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcx;->zze(I)I

    move-result v1

    move/from16 v2, p4

    if-ne v2, v1, :cond_33

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcx;->zzj()J

    :cond_33
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcx;->zzn(I)Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    cmp-long v5, v9, v1

    if-eqz v5, :cond_51

    cmp-long v1, v9, v3

    if-gtz v1, :cond_51

    const-wide/16 v1, -0x1

    add-long/2addr v1, v9

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    :cond_51
    new-instance v15, Lcom/google/android/gms/internal/ads/zzld;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v15

    move-object v2, v7

    move-wide/from16 v5, p5

    move-wide v7, v11

    move v11, v13

    move v12, v14

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzld;-><init>(Lcom/google/android/gms/internal/ads/zzuk;JJJJZZZZ)V

    return-object v15
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzld;
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzcx;->zzc(J)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1b

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzcx;->zzm(I)Z

    :cond_1b
    if-ne v5, v6, :cond_23

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()I

    goto :goto_28

    :cond_23
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzcx;->zzn(I)Z

    :goto_28
    new-instance v9, Lcom/google/android/gms/internal/ads/zzuk;

    move-wide/from16 v7, p7

    invoke-direct {v9, v2, v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzuk;-><init>(Ljava/lang/Object;JI)V

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzlf;->zzC(Lcom/google/android/gms/internal/ads/zzuk;)Z

    move-result v2

    invoke-direct {v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzlf;->zzA(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;)Z

    move-result v20

    invoke-direct {v0, v1, v9, v2}, Lcom/google/android/gms/internal/ads/zzlf;->zzz(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;Z)Z

    move-result v21

    if-eq v5, v6, :cond_42

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzcx;->zzn(I)Z

    :cond_42
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x0

    if-eq v5, v6, :cond_52

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzcx;->zzi(I)J

    move-wide v5, v10

    goto :goto_53

    :cond_52
    move-wide v5, v7

    :goto_53
    cmp-long v1, v5, v7

    if-eqz v1, :cond_5b

    move-wide v14, v10

    move-wide/from16 v16, v14

    goto :goto_62

    :cond_5b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/zzcx;->zze:J

    move-wide v14, v5

    move-wide/from16 v16, v12

    :goto_62
    cmp-long v1, v16, v7

    if-eqz v1, :cond_72

    cmp-long v1, v3, v16

    if-ltz v1, :cond_72

    const-wide/16 v3, -0x1

    add-long v3, v16, v3

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_72
    move-wide v10, v3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzld;

    const/16 v18, 0x0

    move-object v8, v1

    move-wide/from16 v12, p5

    move/from16 v19, v2

    invoke-direct/range {v8 .. v21}, Lcom/google/android/gms/internal/ads/zzld;-><init>(Lcom/google/android/gms/internal/ads/zzuk;JJJJZZZZ)V

    return-object v1
.end method

.method private static zzx(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzuk;
    .registers 17

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p7

    invoke-virtual {p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    const-wide/16 v6, 0x0

    move-object v8, p6

    invoke-virtual {p0, v5, p6, v6, v7}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()I

    invoke-virtual {p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v4, p2, p3}, Lcom/google/android/gms/internal/ads/zzcx;->zzd(J)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_2b

    invoke-virtual {v4, p2, p3}, Lcom/google/android/gms/internal/ads/zzcx;->zzc(J)I

    move-result v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzuk;

    move-wide v6, p4

    invoke-direct {v2, p1, p4, p5, v0}, Lcom/google/android/gms/internal/ads/zzuk;-><init>(Ljava/lang/Object;JI)V

    return-object v2

    :cond_2b
    move-wide v6, p4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcx;->zze(I)I

    move-result v3

    new-instance v8, Lcom/google/android/gms/internal/ads/zzuk;

    move-object v0, v8

    move-object v1, p1

    move v2, v5

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzuk;-><init>(Ljava/lang/Object;IIJ)V

    return-object v8
.end method

.method private final zzy()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwr;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    :goto_7
    if-eqz v1, :cond_15

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfwr;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    goto :goto_7

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1b
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    :goto_1f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzd:Lcom/google/android/gms/internal/ads/zzeq;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzle;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzle;-><init>(Lcom/google/android/gms/internal/ads/zzlf;Lcom/google/android/gms/internal/ads/zzfwr;Lcom/google/android/gms/internal/ads/zzuk;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzz(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;Z)Z
    .registers 11

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, p2, v6}, Lcom/google/android/gms/internal/ads/zzda;->zzd(ILcom/google/android/gms/internal/ads/zzcx;Z)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzcz;->zzj:Z

    if-nez p2, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzf:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzg:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzda;->zzi(ILcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzcz;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2f

    if-eqz p3, :cond_2f

    const/4 p1, 0x1

    return p1

    :cond_2f
    return v6
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzlc;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    if-ne v0, v2, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlc;->zzn()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzk:I

    if-nez v0, :cond_2b

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzl:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzm:J

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlf;->zzy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzlc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlf;->zzy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzlc;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzlc;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzlc;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    return-object v0
.end method

.method public final zzf(JLcom/google/android/gms/internal/ads/zzls;)Lcom/google/android/gms/internal/ads/zzld;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    if-nez v0, :cond_12

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v4, p3, Lcom/google/android/gms/internal/ads/zzls;->zzc:J

    iget-wide v6, p3, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzlf;->zzu(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;JJ)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object p1

    goto :goto_18

    :cond_12
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlf;->zzt(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzlc;J)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object p1

    :goto_18
    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzld;)Lcom/google/android/gms/internal/ads/zzld;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzlf;->zzC(Lcom/google/android/gms/internal/ads/zzuk;)Z

    move-result v12

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzlf;->zzA(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;)Z

    move-result v13

    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzlf;->zzz(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;Z)Z

    move-result v14

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v1

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_37

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzuk;->zze:I

    if-ne v1, v4, :cond_30

    goto :goto_37

    :cond_30
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzcx;->zzi(I)J

    move-wide v9, v5

    goto :goto_38

    :cond_37
    :goto_37
    move-wide v9, v7

    :goto_38
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzcx;->zzh(II)J

    move-result-wide v5

    :goto_48
    move-wide v7, v9

    move-wide v9, v5

    goto :goto_57

    :cond_4b
    cmp-long v1, v9, v7

    if-eqz v1, :cond_52

    move-wide v7, v5

    move-wide v9, v7

    goto :goto_57

    :cond_52
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzcx;->zze:J

    goto :goto_48

    :goto_57
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzcx;->zzn(I)Z

    goto :goto_6e

    :cond_65
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzuk;->zze:I

    if-eq v1, v4, :cond_6e

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzcx;->zzn(I)Z

    :cond_6e
    :goto_6e
    new-instance v15, Lcom/google/android/gms/internal/ads/zzld;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzld;->zzb:J

    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzld;->zzc:J

    const/4 v11, 0x0

    move-wide/from16 v16, v1

    move-object v1, v15

    move-object v2, v3

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzld;-><init>(Lcom/google/android/gms/internal/ads/zzuk;JJJJZZZZ)V

    return-object v15
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzuk;
    .registers 15

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzl:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_22

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v5, :cond_22

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {p1, v3, v6, v4}, Lcom/google/android/gms/internal/ads/zzda;->zzd(ILcom/google/android/gms/internal/ads/zzcx;Z)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    if-ne v3, v2, :cond_22

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzm:J

    :cond_20
    :goto_20
    move-wide v6, v2

    goto :goto_6c

    :cond_22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    :goto_24
    if-eqz v3, :cond_3a

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Ljava/lang/Object;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    goto :goto_20

    :cond_35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v3

    goto :goto_24

    :cond_3a
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    :goto_3c
    if-eqz v3, :cond_5c

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_57

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzda;->zzd(ILcom/google/android/gms/internal/ads/zzcx;Z)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    if-ne v6, v2, :cond_57

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    goto :goto_20

    :cond_57
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v3

    goto :goto_3c

    :cond_5c
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zze:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzlf;->zze:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    if-nez v4, :cond_20

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzl:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzm:J

    goto :goto_20

    :goto_6c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v2, v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v2

    move-object v1, p2

    :goto_81
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Lcom/google/android/gms/internal/ads/zzcz;

    iget v3, v8, Lcom/google/android/gms/internal/ads/zzcz;->zzp:I

    if-lt v2, v3, :cond_a6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzda;->zzd(ILcom/google/android/gms/internal/ads/zzcx;Z)Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzcx;->zze:J

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzcx;->zzd(J)I

    move-result v3

    if-eq v3, v5, :cond_a3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcx;->zzc:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a3
    add-int/lit8 v2, v2, -0x1

    goto :goto_81

    :cond_a6
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    move-object v0, p1

    move-wide v2, p3

    move-wide v4, v6

    move-object v6, v8

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzlf;->zzx(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzuk;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzk:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzl:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzm:J

    :goto_16
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlc;->zzn()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v0

    goto :goto_16

    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzk:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlf;->zzy()V

    return-void
.end method

.method final synthetic zzj(Lcom/google/android/gms/internal/ads/zzfwr;Lcom/google/android/gms/internal/ads/zzuk;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzc:Lcom/google/android/gms/internal/ads/zzmj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfwr;->zzi()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmj;->zzS(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzuk;)V

    return-void
.end method

.method public final zzk(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlc;->zzm(J)V

    :cond_7
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzui;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzui;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzlc;)Z
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    :goto_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzlc;->zzn()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzk:I

    goto :goto_f

    :cond_30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzlc;->zzo(Lcom/google/android/gms/internal/ads/zzlc;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlf;->zzy()V

    return v1
.end method

.method public final zzn()Z
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzld;->zzi:Z

    if-nez v3, :cond_29

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlc;->zzr()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzld;->zze:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzk:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_28

    goto :goto_2a

    :cond_28
    return v2

    :cond_29
    const/4 v1, 0x0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzda;JJ)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    const/4 v3, 0x0

    :goto_7
    const/4 v4, 0x1

    if-eqz v2, :cond_97

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    const/4 v6, 0x0

    if-nez v3, :cond_16

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzlf;->zzg(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzld;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v3

    move-wide/from16 v7, p2

    goto :goto_39

    :cond_16
    move-wide/from16 v7, p2

    invoke-direct {v0, v1, v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzlf;->zzt(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzlc;J)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v9

    if-nez v9, :cond_26

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzlf;->zzm(Lcom/google/android/gms/internal/ads/zzlc;)Z

    move-result v1

    if-nez v1, :cond_25

    return v4

    :cond_25
    return v6

    :cond_26
    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzld;->zzb:J

    iget-wide v12, v9, Lcom/google/android/gms/internal/ads/zzld;->zzb:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_8f

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzuk;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    move-object v3, v9

    :goto_39
    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/zzld;->zzc:J

    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzld;->zza(J)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/zzld;->zze:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v9, v11

    iget-wide v13, v3, Lcom/google/android/gms/internal/ads/zzld;->zze:J

    if-eqz v5, :cond_86

    cmp-long v5, v9, v13

    if-nez v5, :cond_53

    goto :goto_86

    :cond_53
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlc;->zzq()V

    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzld;->zze:J

    cmp-long v1, v7, v11

    if-nez v1, :cond_62

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_67

    :cond_62
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlc;->zze()J

    move-result-wide v9

    add-long/2addr v7, v9

    :goto_67
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    if-ne v2, v1, :cond_7b

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzld;->zzf:Z

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v1, p4, v9

    if-eqz v1, :cond_79

    cmp-long v1, p4, v7

    if-ltz v1, :cond_7b

    :cond_79
    const/4 v1, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v1, 0x0

    :goto_7c
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzlf;->zzm(Lcom/google/android/gms/internal/ads/zzlc;)Z

    move-result v2

    if-nez v2, :cond_85

    if-nez v1, :cond_85

    return v4

    :cond_85
    return v6

    :cond_86
    :goto_86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlc;->zzg()Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_7

    :cond_8f
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzlf;->zzm(Lcom/google/android/gms/internal/ads/zzlc;)Z

    move-result v1

    if-nez v1, :cond_96

    return v4

    :cond_96
    return v6

    :cond_97
    return v4
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzda;I)Z
    .registers 3

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzf:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzlf;->zzB(Lcom/google/android/gms/internal/ads/zzda;)Z

    move-result p1

    return p1
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzda;Z)Z
    .registers 3

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzg:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzlf;->zzB(Lcom/google/android/gms/internal/ads/zzda;)Z

    move-result p1

    return p1
.end method

.method public final zzr([Lcom/google/android/gms/internal/ads/zzmb;Lcom/google/android/gms/internal/ads/zzye;Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzlr;Lcom/google/android/gms/internal/ads/zzld;Lcom/google/android/gms/internal/ads/zzyf;)Lcom/google/android/gms/internal/ads/zzlc;
    .registers 20

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    if-nez v1, :cond_e

    const-wide v1, 0xe8d4a51000L

    move-wide v6, v1

    move-object/from16 v1, p5

    goto :goto_1d

    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzlc;->zze()J

    move-result-wide v2

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzld;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzld;->zze:J

    add-long/2addr v2, v4

    move-object/from16 v1, p5

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzld;->zzb:J

    sub-long/2addr v2, v4

    move-wide v6, v2

    :goto_1d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzlc;

    move-object v4, v2

    move-object v5, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzlc;-><init>([Lcom/google/android/gms/internal/ads/zzmb;JLcom/google/android/gms/internal/ads/zzye;Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzlr;Lcom/google/android/gms/internal/ads/zzld;Lcom/google/android/gms/internal/ads/zzyf;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    if-eqz v1, :cond_35

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzlc;->zzo(Lcom/google/android/gms/internal/ads/zzlc;)V

    goto :goto_39

    :cond_35
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzh:Lcom/google/android/gms/internal/ads/zzlc;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzi:Lcom/google/android/gms/internal/ads/zzlc;

    :goto_39
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzl:Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzj:Lcom/google/android/gms/internal/ads/zzlc;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzk:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlf;->zzy()V

    return-object v2
.end method
