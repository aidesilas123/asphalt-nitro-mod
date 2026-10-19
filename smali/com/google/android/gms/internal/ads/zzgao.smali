###### Class com.google.android.gms.internal.ads.zzgao (com.google.android.gms.internal.ads.zzgao)
.class final Lcom/google/android/gms/internal/ads/zzgao;
.super Lcom/google/android/gms/internal/ads/zzgaa;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzgan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfwp;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgaa;-><init>(Lcom/google/android/gms/internal/ads/zzfwp;ZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgam;

    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/zzgam;-><init>(Lcom/google/android/gms/internal/ads/zzgao;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgao;->zza:Lcom/google/android/gms/internal/ads/zzgan;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgaa;->zzv()V

    return-void
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/internal/ads/zzgao;Lcom/google/android/gms/internal/ads/zzgan;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgao;->zza:Lcom/google/android/gms/internal/ads/zzgan;

    return-void
.end method


# virtual methods
.method final zzf(ILjava/lang/Object;)V
    .registers 3

    return-void
.end method

.method protected final zzq()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgao;->zza:Lcom/google/android/gms/internal/ads/zzgan;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbk;->zzh()V

    :cond_7
    return-void
.end method

.method final zzu()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgao;->zza:Lcom/google/android/gms/internal/ads/zzgan;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgan;->zzf()V

    :cond_7
    return-void
.end method

.method final zzy(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzy(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgao;->zza:Lcom/google/android/gms/internal/ads/zzgan;

    :cond_9
    return-void
.end method
