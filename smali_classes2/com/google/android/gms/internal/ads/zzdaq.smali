###### Class com.google.android.gms.internal.ads.zzdaq (com.google.android.gms.internal.ads.zzdaq)
.class public final Lcom/google/android/gms/internal/ads/zzdaq;
.super Lcom/google/android/gms/internal/ads/zzddv;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczb;
.implements Lcom/google/android/gms/internal/ads/zzdag;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzfdu;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzfdu;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzddv;-><init>(Ljava/util/Set;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzb:Lcom/google/android/gms/internal/ads/zzfdu;

    return-void
.end method

.method private final zzb()V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdc;->zzhG:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzb:Lcom/google/android/gms/internal/ads/zzfdu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzaf:Lcom/google/android/gms/ads/internal/client/zzs;

    if-eqz v0, :cond_2f

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzs;->zza:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdap;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdap;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzddv;->zzt(Lcom/google/android/gms/internal/ads/zzddu;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdas;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzb:Lcom/google/android/gms/internal/ads/zzfdu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzaf:Lcom/google/android/gms/ads/internal/client/zzs;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdas;->zzh(Lcom/google/android/gms/ads/internal/client/zzs;)V

    return-void
.end method

.method public final zzg()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzb:Lcom/google/android/gms/internal/ads/zzfdu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzb()V

    :cond_a
    return-void
.end method

.method public final zzq()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzb:Lcom/google/android/gms/internal/ads/zzfdu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzb:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    const/4 v1, 0x7

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    return-void

    :cond_15
    :goto_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzb()V

    return-void
.end method
