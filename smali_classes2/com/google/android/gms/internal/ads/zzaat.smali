###### Class com.google.android.gms.internal.ads.zzaat (com.google.android.gms.internal.ads.zzaat)
.class public final Lcom/google/android/gms/internal/ads/zzaat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaau;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaau;)V
    .registers 3
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzaau;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_6

    const/4 p1, 0x0

    :cond_6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->zza:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzb:Lcom/google/android/gms/internal/ads/zzaau;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;JJ)V
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_11

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaaj;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaaj;-><init>(Lcom/google/android/gms/internal/ads/zzaat;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaas;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaas;-><init>(Lcom/google/android/gms/internal/ads/zzaat;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzil;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_f

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaar;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaar;-><init>(Lcom/google/android/gms/internal/ads/zzaat;Lcom/google/android/gms/internal/ads/zzil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method public final zzd(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaal;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaal;-><init>(Lcom/google/android/gms/internal/ads/zzaat;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaap;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaap;-><init>(Lcom/google/android/gms/internal/ads/zzaat;Lcom/google/android/gms/internal/ads/zzil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzim;)V
    .registers 5
    .param p2    # Lcom/google/android/gms/internal/ads/zzim;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaq;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaq;-><init>(Lcom/google/android/gms/internal/ads/zzaat;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzim;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method final synthetic zzg(Ljava/lang/String;JJ)V
    .registers 13

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzb:Lcom/google/android/gms/internal/ads/zzaau;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaau;->zzp(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic zzh(Ljava/lang/String;)V
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzb:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzq(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzil;->zza()V

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzb:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzr(Lcom/google/android/gms/internal/ads/zzil;)V

    return-void
.end method

.method final synthetic zzj(IJ)V
    .registers 5

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzb:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaau;->zzl(IJ)V

    return-void
.end method

.method final synthetic zzk(Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzb:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzs(Lcom/google/android/gms/internal/ads/zzil;)V

    return-void
.end method

.method final synthetic zzl(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzim;)V
    .registers 4

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzb:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaau;->zzu(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzim;)V

    return-void
.end method

.method final synthetic zzm(Ljava/lang/Object;J)V
    .registers 5

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzb:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaau;->zzm(Ljava/lang/Object;J)V

    return-void
.end method

.method final synthetic zzn(JI)V
    .registers 5

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzb:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaau;->zzt(JI)V

    return-void
.end method

.method final synthetic zzo(Ljava/lang/Exception;)V
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzb:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzo(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic zzp(Lcom/google/android/gms/internal/ads/zzdu;)V
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zzb:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzv(Lcom/google/android/gms/internal/ads/zzdu;)V

    return-void
.end method

.method public final zzq(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaam;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaam;-><init>(Lcom/google/android/gms/internal/ads/zzaat;Ljava/lang/Object;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method public final zzr(JI)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaan;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaan;-><init>(Lcom/google/android/gms/internal/ads/zzaat;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public final zzs(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaao;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaao;-><init>(Lcom/google/android/gms/internal/ads/zzaat;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzdu;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaak;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(Lcom/google/android/gms/internal/ads/zzaat;Lcom/google/android/gms/internal/ads/zzdu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method
