###### Class com.google.android.gms.internal.ads.zzoo (com.google.android.gms.internal.ads.zzoo)
.class final Lcom/google/android/gms/internal/ads/zzoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzop;

.field private final zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:J

.field private zze:Lcom/google/android/gms/internal/ads/zzuk;

.field private zzf:Z

.field private zzg:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzop;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzuk;)V
    .registers 5
    .param p3    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zza:Lcom/google/android/gms/internal/ads/zzop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzc:I

    if-nez p4, :cond_e

    const-wide/16 p1, -0x1

    goto :goto_10

    :cond_e
    iget-wide p1, p4, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    :goto_10
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzd:J

    if-eqz p4, :cond_1c

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1c

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Lcom/google/android/gms/internal/ads/zzuk;

    :cond_1c
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzoo;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzc:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzoo;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzd:J

    return-wide v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzoo;)Lcom/google/android/gms/internal/ads/zzuk;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Lcom/google/android/gms/internal/ads/zzuk;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzoo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzoo;Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzg:Z

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzoo;Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzf:Z

    return-void
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzoo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzg:Z

    return p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzoo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzf:Z

    return p0
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/ads/zzuk;)V
    .registers 8
    .param p2    # Lcom/google/android/gms/internal/ads/zzuk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzd:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzc:I

    if-ne p1, v0, :cond_1c

    if-eqz p2, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zza:Lcom/google/android/gms/internal/ads/zzop;

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzop;->zza(Lcom/google/android/gms/internal/ads/zzop;)J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1c

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzd:J

    :cond_1c
    return-void
.end method

.method public final zzj(ILcom/google/android/gms/internal/ads/zzuk;)Z
    .registers 10
    .param p2    # Lcom/google/android/gms/internal/ads/zzuk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_a

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzc:I

    if-ne p1, p2, :cond_9

    return v0

    :cond_9
    return v1

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Lcom/google/android/gms/internal/ads/zzuk;

    if-nez p1, :cond_1e

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzd:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1d

    return v0

    :cond_1d
    return v1

    :cond_1e
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_33

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    if-ne v2, v3, :cond_33

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    if-ne p2, p1, :cond_33

    return v0

    :cond_33
    return v1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzmk;)Z
    .registers 12

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzd:Lcom/google/android/gms/internal/ads/zzuk;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzc:I

    if-eq v0, p1, :cond_d

    return v1

    :cond_d
    return v2

    :cond_e
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzd:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_17

    return v2

    :cond_17
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_1e

    return v1

    :cond_1e
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Lcom/google/android/gms/internal/ads/zzuk;

    if-nez v3, :cond_23

    return v2

    :cond_23
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzb:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzd:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_71

    if-ge v0, v3, :cond_42

    goto :goto_71

    :cond_42
    if-le v0, v3, :cond_45

    return v1

    :cond_45
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzd:Lcom/google/android/gms/internal/ads/zzuk;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Lcom/google/android/gms/internal/ads/zzuk;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    if-gt v0, v4, :cond_60

    if-ne v0, v4, :cond_5f

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    if-le p1, v0, :cond_5e

    goto :goto_60

    :cond_5e
    return v2

    :cond_5f
    const/4 v1, 0x0

    :cond_60
    :goto_60
    return v1

    :cond_61
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzd:Lcom/google/android/gms/internal/ads/zzuk;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzuk;->zze:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_70

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Lcom/google/android/gms/internal/ads/zzuk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    if-le p1, v0, :cond_6f

    goto :goto_70

    :cond_6f
    return v2

    :cond_70
    :goto_70
    return v1

    :cond_71
    :goto_71
    return v2
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzda;)Z
    .registers 9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzda;->zzc()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-lt v0, v1, :cond_13

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzda;->zzc()I

    move-result p1

    if-ge v0, p1, :cond_11

    goto :goto_4a

    :cond_11
    const/4 v0, -0x1

    goto :goto_4a

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zza:Lcom/google/android/gms/internal/ads/zzop;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzop;->zzc(Lcom/google/android/gms/internal/ads/zzop;)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zza:Lcom/google/android/gms/internal/ads/zzop;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzop;->zzc(Lcom/google/android/gms/internal/ads/zzop;)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcz;->zzp:I

    :goto_26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zza:Lcom/google/android/gms/internal/ads/zzop;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzop;->zzc(Lcom/google/android/gms/internal/ads/zzop;)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzq:I

    if-gt v0, v1, :cond_11

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzda;->zzf(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_47

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zza:Lcom/google/android/gms/internal/ads/zzop;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzop;->zzb(Lcom/google/android/gms/internal/ads/zzop;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p1

    invoke-virtual {p2, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzda;->zzd(ILcom/google/android/gms/internal/ads/zzcx;Z)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    goto :goto_4a

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :goto_4a
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzc:I

    if-ne v0, v3, :cond_4f

    return v2

    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Lcom/google/android/gms/internal/ads/zzuk;

    const/4 v0, 0x1

    if-nez p1, :cond_55

    return v0

    :cond_55
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v3, :cond_5e

    return v0

    :cond_5e
    return v2
.end method
