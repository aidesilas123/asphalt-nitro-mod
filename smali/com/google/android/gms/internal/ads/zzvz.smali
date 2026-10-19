###### Class com.google.android.gms.internal.ads.zzvz (com.google.android.gms.internal.ads.zzvz)
.class public final Lcom/google/android/gms/internal/ads/zzvz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadk;


# instance fields
.field private zzA:Z

.field private zzB:Z

.field private zzC:Lcom/google/android/gms/internal/ads/zzrs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zza:Lcom/google/android/gms/internal/ads/zzvt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzvv;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzwg;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzrr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzrl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/ads/zzvy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:I

.field private zzi:[J

.field private zzj:[J

.field private zzk:[I

.field private zzl:[I

.field private zzm:[J

.field private zzn:[Lcom/google/android/gms/internal/ads/zzadj;

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:Z

.field private zzw:Z

.field private zzx:Z

.field private zzy:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzz:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzrr;Lcom/google/android/gms/internal/ads/zzrl;)V
    .registers 4
    .param p2    # Lcom/google/android/gms/internal/ads/zzrr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzrl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzd:Lcom/google/android/gms/internal/ads/zzrr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zze:Lcom/google/android/gms/internal/ads/zzrl;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Lcom/google/android/gms/internal/ads/zzyn;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zza:Lcom/google/android/gms/internal/ads/zzvt;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzvv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzvv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzb:Lcom/google/android/gms/internal/ads/zzvv;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzh:I

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzi:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzj:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzl:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzk:[I

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzadj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzn:[Lcom/google/android/gms/internal/ads/zzadj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzwg;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzvu;->zza:Lcom/google/android/gms/internal/ads/zzvu;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzwg;-><init>(Lcom/google/android/gms/internal/ads/zzej;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzs:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzt:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzu:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzx:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzw:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzA:Z

    return-void
.end method

.method private final zzB(IIJZ)I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p2, :cond_25

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_25

    if-eqz p5, :cond_17

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzl:[I

    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1b

    :cond_17
    move v1, v2

    if-nez v3, :cond_1b

    goto :goto_25

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzh:I

    if-ne p1, v3, :cond_22

    const/4 p1, 0x0

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_25
    :goto_25
    return v1
.end method

.method private final zzC(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzh:I

    if-ge v0, p1, :cond_8

    return v0

    :cond_8
    sub-int/2addr v0, p1

    return v0
.end method

.method private final declared-synchronized zzD(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzib;ZZLcom/google/android/gms/internal/ads/zzvv;)I
    .registers 12

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzib;->zzd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvz;->zzL()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_2f

    if-nez p4, :cond_25

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzv:Z

    if-eqz p4, :cond_14

    goto :goto_25

    :cond_14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    if-eqz p2, :cond_23

    if-nez p3, :cond_1e

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    if-eq p2, p3, :cond_23

    :cond_1e
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzvz;->zzI(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzkv;)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_9a

    monitor-exit p0

    return v1

    :cond_23
    monitor-exit p0

    return v2

    :cond_25
    :goto_25
    const/4 p1, 0x4

    :try_start_26
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhv;->zzc(I)V

    const-wide/high16 p3, -0x8000000000000000L

    iput-wide p3, p2, Lcom/google/android/gms/internal/ads/zzib;->zze:J
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_9a

    monitor-exit p0

    return v3

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzp:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzwg;->zza(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzam;

    if-nez p3, :cond_95

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    if-eq v0, p3, :cond_45

    goto :goto_95

    :cond_45
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvz;->zzC(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvz;->zzM(I)Z

    move-result p3

    if-nez p3, :cond_56

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzib;->zzd:Z
    :try_end_54
    .catchall {:try_start_2f .. :try_end_54} :catchall_9a

    monitor-exit p0

    return v2

    :cond_56
    :try_start_56
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzl:[I

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzhv;->zzc(I)V

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_70

    if-nez p4, :cond_6b

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzv:Z

    if-eqz p3, :cond_70

    :cond_6b
    const/high16 p3, 0x20000000

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzhv;->zza(I)V

    :cond_70
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzib;->zze:J

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzs:J

    cmp-long v2, v0, p3

    if-gez v2, :cond_81

    const/high16 p3, -0x80000000

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzhv;->zza(I)V

    :cond_81
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzk:[I

    aget p2, p2, p1

    iput p2, p5, Lcom/google/android/gms/internal/ads/zzvv;->zza:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzj:[J

    aget-wide p3, p2, p1

    iput-wide p3, p5, Lcom/google/android/gms/internal/ads/zzvv;->zzb:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzn:[Lcom/google/android/gms/internal/ads/zzadj;

    aget-object p1, p2, p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzvv;->zzc:Lcom/google/android/gms/internal/ads/zzadj;
    :try_end_93
    .catchall {:try_start_56 .. :try_end_93} :catchall_9a

    monitor-exit p0

    return v3

    :cond_95
    :goto_95
    :try_start_95
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzvz;->zzI(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzkv;)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_9a

    monitor-exit p0

    return v1

    :catchall_9a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzE(JZZ)J
    .registers 12

    monitor-enter p0

    :try_start_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    if-eqz p3, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_10

    goto :goto_29

    :cond_10
    if-eqz p4, :cond_18

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    if-eq p4, p3, :cond_18

    add-int/lit8 p3, p4, 0x1

    :cond_18
    move v3, p3

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvz;->zzB(IIJZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_29

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvz;->zzG(I)J

    move-result-wide p1
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2d

    monitor-exit p0

    return-wide p1

    :cond_29
    :goto_29
    const-wide/16 p1, -0x1

    monitor-exit p0

    return-wide p1

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzF()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    :cond_9
    :try_start_9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzvz;->zzG(I)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzG(I)J
    .registers 13
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzt:J

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez p1, :cond_9

    goto :goto_2d

    :cond_9
    add-int/lit8 v6, p1, -0x1

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzvz;->zzC(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_10
    if-ge v7, p1, :cond_2d

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    aget-wide v9, v8, v6

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzl:[I

    aget v8, v8, v6

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_23

    goto :goto_2d

    :cond_23
    add-int/lit8 v6, v6, -0x1

    if-ne v6, v5, :cond_2a

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzh:I

    add-int/2addr v6, v5

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_2d
    :goto_2d
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzt:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzp:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzh:I

    if-lt v1, v2, :cond_49

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    :cond_49
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    if-gez v1, :cond_52

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    :cond_52
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwg;->zze(I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    if-nez p1, :cond_6d

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    if-nez p1, :cond_61

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzh:I

    :cond_61
    add-int/2addr p1, v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzj:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzk:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_6d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzj:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private final declared-synchronized zzH(JIJILcom/google/android/gms/internal/ads/zzadj;)V
    .registers 16
    .param p7    # Lcom/google/android/gms/internal/ads/zzadj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_21

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzvz;->zzC(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzj:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzk:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    :cond_21
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzv:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzu:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzu:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzvz;->zzC(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    aput-wide p1, v3, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzj:[J

    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzk:[I

    aput p6, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzl:[I

    aput p3, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzn:[Lcom/google/android/gms/internal/ads/zzadj;

    aput-object p7, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzi:[J

    const-wide/16 p2, 0x0

    aput-wide p2, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwg;->zzf()Z

    move-result p1

    if-nez p1, :cond_6d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwg;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzam;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    :cond_6d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzz:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_fa

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_72
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzrq;->zzb:Lcom/google/android/gms/internal/ads/zzrq;

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzp:I

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    add-int/2addr p4, p5

    new-instance p5, Lcom/google/android/gms/internal/ads/zzvx;

    const/4 p6, 0x0

    invoke-direct {p5, p1, p3, p6}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzrq;Lcom/google/android/gms/internal/ads/zzvw;)V

    invoke-virtual {p2, p4, p5}, Lcom/google/android/gms/internal/ads/zzwg;->zzc(ILjava/lang/Object;)V

    :cond_84
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzh:I

    if-ne p1, p2, :cond_f8

    add-int/lit16 p1, p2, 0x3e8

    new-array p3, p1, [J

    new-array p4, p1, [J

    new-array p5, p1, [J

    new-array p6, p1, [I

    new-array p7, p1, [I

    new-array v0, p1, [Lcom/google/android/gms/internal/ads/zzadj;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    sub-int/2addr p2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzj:[J

    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzl:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzk:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzn:[Lcom/google/android/gms/internal/ads/zzadj;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzi:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzj:[J

    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzl:[I

    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzk:[I

    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzn:[Lcom/google/android/gms/internal/ads/zzadj;

    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzi:[J

    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzj:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzl:[I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzk:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzn:[Lcom/google/android/gms/internal/ads/zzadj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzi:[J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzh:I
    :try_end_f6
    .catchall {:try_start_72 .. :try_end_f6} :catchall_fa

    monitor-exit p0

    return-void

    :cond_f8
    monitor-exit p0

    return-void

    :catchall_fa
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zzI(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzkv;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v2, v1

    goto :goto_9

    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzam;->zzp:Lcom/google/android/gms/internal/ads/zzad;

    :goto_9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzam;->zzp:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzd:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzrr;->zza(Lcom/google/android/gms/internal/ads/zzam;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzam;->zzc(I)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v4

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzC:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzkv;->zzb:Lcom/google/android/gms/internal/ads/zzrs;

    if-eqz v0, :cond_27

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_27

    :cond_26
    return-void

    :cond_27
    :goto_27
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzp:Lcom/google/android/gms/internal/ads/zzad;

    if-nez p1, :cond_2c

    goto :goto_3e

    :cond_2c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzrs;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzru;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzru;-><init>(I)V

    const/16 v2, 0x1771

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzrj;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzrs;-><init>(Lcom/google/android/gms/internal/ads/zzrj;)V

    :goto_3e
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzC:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/zzkv;->zzb:Lcom/google/android/gms/internal/ads/zzrs;

    return-void
.end method

.method private final zzJ()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzC:Lcom/google/android/gms/internal/ads/zzrs;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzC:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    :cond_9
    return-void
.end method

.method private final declared-synchronized zzK()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zza:Lcom/google/android/gms/internal/ads/zzvt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvt;->zzg()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzL()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private final zzM(I)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzC:Lcom/google/android/gms/internal/ads/zzrs;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzl:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    return v1

    :cond_10
    const/4 v1, 0x1

    :goto_11
    return v1
.end method

.method private final declared-synchronized zzN(Lcom/google/android/gms/internal/ads/zzam;)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzx:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_49

    if-eqz v1, :cond_e

    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zzf()Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzam;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwg;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    goto :goto_35

    :cond_33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    :goto_35
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzA:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzce;->zze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzA:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzB:Z
    :try_end_46
    .catchall {:try_start_e .. :try_end_46} :catchall_49

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzvx;)V
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:Lcom/google/android/gms/internal/ads/zzrq;

    sget p0, Lcom/google/android/gms/internal/ads/zzrp;->zza:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzA(JZ)Z
    .registers 14

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvz;->zzK()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzvz;->zzC(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvz;->zzL()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_5e

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzu:J

    const/4 v8, 0x1

    cmp-long v1, p1, v3

    if-lez v1, :cond_23

    if-eqz p3, :cond_5e

    const/4 p3, 0x1

    :cond_23
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzA:Z

    const/4 v9, -0x1

    if-eqz v1, :cond_47

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v1, :cond_42

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, p1

    if-gez v3, :cond_40

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzh:I

    if-ne v2, v3, :cond_3d

    const/4 v2, 0x0

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_40
    move v1, v0

    goto :goto_52

    :cond_42
    if-eqz p3, :cond_45

    goto :goto_52

    :cond_45
    const/4 v1, -0x1

    goto :goto_52

    :cond_47
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvz;->zzB(IIJZ)I

    move-result v1

    :goto_52
    if-ne v1, v9, :cond_55

    goto :goto_5e

    :cond_55
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzs:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_60

    monitor-exit p0

    return v8

    :cond_5e
    :goto_5e
    monitor-exit p0

    return v7

    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzp:I

    return v0
.end method

.method public final zzb()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized zzc(JZ)I
    .registers 12

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzvz;->zzC(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvz;->zzL()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzm:[J

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-gez v1, :cond_17

    goto :goto_36

    :cond_17
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzu:J

    cmp-long v1, p1, v3

    if-lez v1, :cond_25

    if-nez p3, :cond_20

    goto :goto_25

    :cond_20
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_38

    sub-int/2addr p1, v0

    monitor-exit p0

    return p1

    :cond_25
    :goto_25
    :try_start_25
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvz;->zzB(IIJZ)I

    move-result p1
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_38

    const/4 p2, -0x1

    monitor-exit p0

    if-ne p1, p2, :cond_35

    return v7

    :cond_35
    return p1

    :cond_36
    :goto_36
    monitor-exit p0

    return v7

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzd()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzib;IZ)I
    .registers 13
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v5, 0x1

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_9
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzb:Lcom/google/android/gms/internal/ads/zzvv;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzvz;->zzD(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzib;ZZLcom/google/android/gms/internal/ads/zzvv;)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_3e

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhv;->zzf()Z

    move-result p1

    if-nez p1, :cond_3d

    and-int/lit8 p1, p3, 0x1

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_34

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zza:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzb:Lcom/google/android/gms/internal/ads/zzvv;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzvt;->zzd(Lcom/google/android/gms/internal/ads/zzib;Lcom/google/android/gms/internal/ads/zzvv;)V

    goto :goto_3d

    :cond_2c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zza:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzb:Lcom/google/android/gms/internal/ads/zzvv;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzvt;->zze(Lcom/google/android/gms/internal/ads/zzib;Lcom/google/android/gms/internal/ads/zzvv;)V

    goto :goto_37

    :cond_34
    if-eqz p1, :cond_37

    goto :goto_3d

    :cond_37
    :goto_37
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    return p4

    :cond_3d
    :goto_3d
    const/4 p1, -0x4

    :cond_3e
    return p1
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzt;IZ)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzadi;->zza(Lcom/google/android/gms/internal/ads/zzadk;Lcom/google/android/gms/internal/ads/zzt;IZ)I

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzt;IZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzvz;->zza:Lcom/google/android/gms/internal/ads/zzvt;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzvt;->zza(Lcom/google/android/gms/internal/ads/zzt;IZ)I

    move-result p1

    return p1
.end method

.method public final declared-synchronized zzh()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzu:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzi()Lcom/google/android/gms/internal/ads/zzam;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzx:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzz:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzj(JZZ)V
    .registers 6

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zza:Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/ads/zzvz;->zzE(JZZ)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzvt;->zzc(J)V

    return-void
.end method

.method public final zzk()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zza:Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvz;->zzF()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzvt;->zzc(J)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzam;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzy:Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvz;->zzN(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzf:Lcom/google/android/gms/internal/ads/zzvy;

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzvy;->zzM(Lcom/google/android/gms/internal/ads/zzam;)V

    :cond_f
    return-void
.end method

.method public final zzn()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzC:Lcom/google/android/gms/internal/ads/zzrs;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrs;->zza()Lcom/google/android/gms/internal/ads/zzrj;

    move-result-object v0

    throw v0
.end method

.method public final zzo()V
    .registers 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvz;->zzk()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvz;->zzJ()V

    return-void
.end method

.method public final zzp()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzvz;->zzq(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvz;->zzJ()V

    return-void
.end method

.method public final zzq(Z)V
    .registers 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zza:Lcom/google/android/gms/internal/ads/zzvt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvt;->zzf()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzw:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzs:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzt:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzu:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwg;->zzd()V

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzy:Lcom/google/android/gms/internal/ads/zzam;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzA:Z

    :cond_2b
    return-void
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzfj;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzadi;->zzb(Lcom/google/android/gms/internal/ads/zzadk;Lcom/google/android/gms/internal/ads/zzfj;I)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzfj;II)V
    .registers 4

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zza:Lcom/google/android/gms/internal/ads/zzvt;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzvt;->zzh(Lcom/google/android/gms/internal/ads/zzfj;I)V

    return-void
.end method

.method public final zzt(JIIILcom/google/android/gms/internal/ads/zzadj;)V
    .registers 15
    .param p6    # Lcom/google/android/gms/internal/ads/zzadj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzw:Z

    if-eqz v0, :cond_c

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_9

    goto :goto_35

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzw:Z

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzA:Z

    if-eqz v0, :cond_36

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzs:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_35

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzB:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SampleQueue"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzB:Z

    :cond_32
    or-int/lit8 p3, p3, 0x1

    goto :goto_36

    :cond_35
    :goto_35
    return-void

    :cond_36
    :goto_36
    move v3, p3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvz;->zza:Lcom/google/android/gms/internal/ads/zzvt;

    int-to-long v0, p4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzvt;->zzb()J

    move-result-wide v4

    sub-long/2addr v4, v0

    int-to-long v0, p5

    sub-long/2addr v4, v0

    move-object v0, p0

    move-wide v1, p1

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzvz;->zzH(JIJILcom/google/android/gms/internal/ads/zzadj;)V

    return-void
.end method

.method public final zzu(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzs:J

    return-void
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzvy;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzvy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzf:Lcom/google/android/gms/internal/ads/zzvy;

    return-void
.end method

.method public final declared-synchronized zzw(I)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    if-ltz p1, :cond_f

    :try_start_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    if-gt v1, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_19

    :cond_f
    :goto_f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_d

    monitor-exit p0

    return-void

    :goto_19
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzx()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzv:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzy(Z)Z
    .registers 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvz;->zzL()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzv:Z

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    if-eqz p1, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzg:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_3e

    if-eq p1, v2, :cond_18

    goto :goto_1b

    :cond_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_1b
    monitor-exit p0

    return v1

    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzp:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwg;->zza(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzg:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_3e

    if-eq p1, v0, :cond_32

    monitor-exit p0

    return v1

    :cond_32
    :try_start_32
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvz;->zzC(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvz;->zzM(I)Z

    move-result p1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return p1

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzz(I)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvz;->zzK()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzp:I

    if-lt p1, v0, :cond_18

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzo:I

    add-int/2addr v1, v0

    if-le p1, v1, :cond_e

    goto :goto_18

    :cond_e
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzs:J

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvz;->zzr:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    const/4 p1, 0x1

    :goto_16
    monitor-exit p0

    return p1

    :cond_18
    :goto_18
    const/4 p1, 0x0

    goto :goto_16

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
