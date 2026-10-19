###### Class com.google.android.gms.internal.ads.zzfzp.zzf (com.google.android.gms.internal.ads.zzfzp$zzf)
.class final Lcom/google/android/gms/internal/ads/zzfzp$zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzfzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfzp<",
            "TV;>;"
        }
    .end annotation
.end field

.field final zzb:Lcom/google/common/util/concurrent/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/common/util/concurrent/h0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zza:Lcom/google/android/gms/internal/ads/zzfzp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zzb:Lcom/google/common/util/concurrent/h0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zza:Lcom/google/android/gms/internal/ads/zzfzp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzj(Lcom/google/android/gms/internal/ads/zzfzp;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_9

    goto :goto_21

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zzb:Lcom/google/common/util/concurrent/h0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zza:Lcom/google/android/gms/internal/ads/zzfzp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzk(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzp;->zzg()Lcom/google/android/gms/internal/ads/zzfzp$zza;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zza:Lcom/google/android/gms/internal/ads/zzfzp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzp(Lcom/google/android/gms/internal/ads/zzfzp;Z)V

    :cond_21
    :goto_21
    return-void
.end method
