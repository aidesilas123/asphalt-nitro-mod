###### Class com.google.android.gms.internal.ads.zzdz (com.google.android.gms.internal.ads.zzdz)
.class public abstract Lcom/google/android/gms/internal/ads/zzdz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdy;


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/ads/zzdw;

.field protected zzc:Lcom/google/android/gms/internal/ads/zzdw;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdw;

.field private zze:Lcom/google/android/gms/internal/ads/zzdw;

.field private zzf:Ljava/nio/ByteBuffer;

.field private zzg:Ljava/nio/ByteBuffer;

.field private zzh:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzf:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzg:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zze:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzb:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzc:Lcom/google/android/gms/internal/ads/zzdw;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdw;)Lcom/google/android/gms/internal/ads/zzdw;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdx;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdz;->zzi(Lcom/google/android/gms/internal/ads/zzdw;)Lcom/google/android/gms/internal/ads/zzdw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdz;->zze:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdz;->zzg()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdz;->zze:Lcom/google/android/gms/internal/ads/zzdw;

    goto :goto_13

    :cond_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdw;

    :goto_13
    return-object p1
.end method

.method public zzb()Ljava/nio/ByteBuffer;
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzg:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdy;->zza:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzg:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzc()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzg:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzb:Lcom/google/android/gms/internal/ads/zzdw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zze:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzc:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdz;->zzk()V

    return-void
.end method

.method public final zzd()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzh:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdz;->zzl()V

    return-void
.end method

.method public final zzf()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdz;->zzc()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzf:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zze:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzb:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzc:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdz;->zzm()V

    return-void
.end method

.method public zzg()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zze:Lcom/google/android/gms/internal/ads/zzdw;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdw;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public zzh()Z
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzh:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzg:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdy;->zza:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected zzi(Lcom/google/android/gms/internal/ads/zzdw;)Lcom/google/android/gms/internal/ads/zzdw;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdx;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected final zzj(I)Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_17

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzf:Ljava/nio/ByteBuffer;

    goto :goto_1c

    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzf:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzg:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method protected zzk()V
    .registers 1

    return-void
.end method

.method protected zzl()V
    .registers 1

    return-void
.end method

.method protected zzm()V
    .registers 1

    return-void
.end method

.method protected final zzn()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzg:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method
