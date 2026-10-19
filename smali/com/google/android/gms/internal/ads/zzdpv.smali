###### Class com.google.android.gms.internal.ads.zzdpv (com.google.android.gms.internal.ads.zzdpv)
.class public final Lcom/google/android/gms/internal/ads/zzdpv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkt;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzczo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbxc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzczo;Lcom/google/android/gms/internal/ads/zzfdu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zza:Lcom/google/android/gms/internal/ads/zzczo;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfdu;->zzm:Lcom/google/android/gms/internal/ads/zzbxc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzb:Lcom/google/android/gms/internal/ads/zzbxc;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfdu;->zzk:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzc:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfdu;->zzl:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbxc;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzb:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz v0, :cond_5

    move-object p1, v0

    :cond_5
    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbxc;->zza:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbxc;->zzb:I

    goto :goto_f

    :cond_c
    const/4 p1, 0x1

    const-string v0, ""

    :goto_f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwn;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzbwn;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zza:Lcom/google/android/gms/internal/ads/zzczo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzczo;->zzd(Lcom/google/android/gms/internal/ads/zzbwq;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zza:Lcom/google/android/gms/internal/ads/zzczo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczo;->zze()V

    return-void
.end method

.method public final zzc()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zza:Lcom/google/android/gms/internal/ads/zzczo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczo;->zzf()V

    return-void
.end method
