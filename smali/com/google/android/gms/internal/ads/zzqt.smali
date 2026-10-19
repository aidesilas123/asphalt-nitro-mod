###### Class com.google.android.gms.internal.ads.zzqt (com.google.android.gms.internal.ads.zzqt)
.class final Lcom/google/android/gms/internal/ads/zzqt;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzqw;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzqu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqu;Lcom/google/android/gms/internal/ads/zzqw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:Lcom/google/android/gms/internal/ads/zzqu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:Lcom/google/android/gms/internal/ads/zzqw;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .registers 3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqw;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzqw;->zzD(Lcom/google/android/gms/internal/ads/zzqw;)Landroid/media/AudioTrack;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_26

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzE(Lcom/google/android/gms/internal/ads/zzqw;)Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p2

    if-eqz p2, :cond_26

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzG(Lcom/google/android/gms/internal/ads/zzqw;)Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzE(Lcom/google/android/gms/internal/ads/zzqw;)Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzps;->zzb()V

    :cond_26
    :goto_26
    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqw;->zzD(Lcom/google/android/gms/internal/ads/zzqw;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_26

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzE(Lcom/google/android/gms/internal/ads/zzqw;)Lcom/google/android/gms/internal/ads/zzps;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzG(Lcom/google/android/gms/internal/ads/zzqw;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzE(Lcom/google/android/gms/internal/ads/zzqw;)Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzps;->zzb()V

    :cond_26
    :goto_26
    return-void
.end method
