###### Class com.google.android.gms.internal.ads.zzbwg (com.google.android.gms.internal.ads.zzbwg)
.class final Lcom/google/android/gms/internal/ads/zzbwg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbwi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbwi;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzb:Lcom/google/android/gms/internal/ads/zzbwi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zza:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzb:Lcom/google/android/gms/internal/ads/zzbwi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbwi;->zza(Lcom/google/android/gms/internal/ads/zzbwi;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbwh;

    if-eqz v0, :cond_3a

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbel;->zza:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeh;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzbwh;->zza:J

    add-long/2addr v3, v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-gez v5, :cond_2c

    goto :goto_3a

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zza:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbwh;->zzb:Lcom/google/android/gms/internal/ads/zzbwf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbwe;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzbwe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbwf;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbwe;->zza()Lcom/google/android/gms/internal/ads/zzbwf;

    move-result-object v0

    goto :goto_45

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbwe;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbwe;->zza()Lcom/google/android/gms/internal/ads/zzbwf;

    move-result-object v0

    :goto_45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzb:Lcom/google/android/gms/internal/ads/zzbwi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zza:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbwi;->zza(Lcom/google/android/gms/internal/ads/zzbwi;)Ljava/util/WeakHashMap;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbwh;

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzbwh;-><init>(Lcom/google/android/gms/internal/ads/zzbwi;Lcom/google/android/gms/internal/ads/zzbwf;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
