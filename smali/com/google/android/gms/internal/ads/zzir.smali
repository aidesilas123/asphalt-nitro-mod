###### Class com.google.android.gms.internal.ads.zzir (com.google.android.gms.internal.ads.zzir)
.class final Lcom/google/android/gms/internal/ads/zzir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzmg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zziq;

.field private zzc:Lcom/google/android/gms/internal/ads/zzlz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/ads/zzlb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zziq;Lcom/google/android/gms/internal/ads/zzeg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzb:Lcom/google/android/gms/internal/ads/zziq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzmg;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzmg;-><init>(Lcom/google/android/gms/internal/ads/zzeg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zze:Z

    return-void
.end method


# virtual methods
.method public final zza()J
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzb(Z)J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzc:Lcom/google/android/gms/internal/ads/zzlz;

    if-eqz v0, :cond_66

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlz;->zzU()Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzc:Lcom/google/android/gms/internal/ads/zzlz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlz;->zzV()Z

    move-result v0

    if-nez v0, :cond_1d

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzc:Lcom/google/android/gms/internal/ads/zzlz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlz;->zzO()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_66

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzd:Lcom/google/android/gms/internal/ads/zzlb;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlb;->zza()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzir;->zze:Z

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmg;->zza()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_3a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmg;->zze()V

    goto :goto_72

    :cond_3a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzir;->zze:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzir;->zzf:Z

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmg;->zzd()V

    :cond_46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzmg;->zzb(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlb;->zzc()Lcom/google/android/gms/internal/ads/zzcj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmg;->zzc()Lcom/google/android/gms/internal/ads/zzcj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzmg;->zzg(Lcom/google/android/gms/internal/ads/zzcj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzb:Lcom/google/android/gms/internal/ads/zziq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zziq;->zza(Lcom/google/android/gms/internal/ads/zzcj;)V

    goto :goto_72

    :cond_66
    :goto_66
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zze:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzf:Z

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmg;->zzd()V

    :cond_72
    :goto_72
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zze:Z

    if-eqz p1, :cond_7d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmg;->zza()J

    move-result-wide v0

    goto :goto_86

    :cond_7d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzd:Lcom/google/android/gms/internal/ads/zzlb;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlb;->zza()J

    move-result-wide v0

    :goto_86
    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzd:Lcom/google/android/gms/internal/ads/zzlb;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlb;->zzc()Lcom/google/android/gms/internal/ads/zzcj;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmg;->zzc()Lcom/google/android/gms/internal/ads/zzcj;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzlz;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzc:Lcom/google/android/gms/internal/ads/zzlz;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzd:Lcom/google/android/gms/internal/ads/zzlb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzc:Lcom/google/android/gms/internal/ads/zzlz;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zze:Z

    :cond_c
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzlz;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlz;->zzk()Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzd:Lcom/google/android/gms/internal/ads/zzlb;

    if-eq v0, v1, :cond_28

    if-nez v1, :cond_1a

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzd:Lcom/google/android/gms/internal/ads/zzlb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzc:Lcom/google/android/gms/internal/ads/zzlz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmg;->zzc()Lcom/google/android/gms/internal/ads/zzcj;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzlb;->zzg(Lcom/google/android/gms/internal/ads/zzcj;)V

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object p1

    throw p1

    :cond_28
    return-void
.end method

.method public final zzf(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmg;->zzb(J)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzcj;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzd:Lcom/google/android/gms/internal/ads/zzlb;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzlb;->zzg(Lcom/google/android/gms/internal/ads/zzcj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzd:Lcom/google/android/gms/internal/ads/zzlb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlb;->zzc()Lcom/google/android/gms/internal/ads/zzcj;

    move-result-object p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzmg;->zzg(Lcom/google/android/gms/internal/ads/zzcj;)V

    return-void
.end method

.method public final zzh()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmg;->zzd()V

    return-void
.end method

.method public final zzi()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmg;->zze()V

    return-void
.end method
