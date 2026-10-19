###### Class com.google.android.gms.internal.ads.zzbyi (com.google.android.gms.internal.ads.zzbyi)
.class final Lcom/google/android/gms/internal/ads/zzbyi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgax;


# instance fields
.field final synthetic zza:Lcom/google/common/util/concurrent/h0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbyj;Lcom/google/common/util/concurrent/h0;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zza:Lcom/google/common/util/concurrent/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbyj;->zzc()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zza:Lcom/google/common/util/concurrent/h0;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/Void;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbyj;->zzc()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zza:Lcom/google/common/util/concurrent/h0;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
