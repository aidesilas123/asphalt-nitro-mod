###### Class com.google.android.gms.internal.ads.zzcxp (com.google.android.gms.internal.ads.zzcxp)
.class public final Lcom/google/android/gms/internal/ads/zzcxp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfeq;

.field private zzc:Landroid/os/Bundle;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfei;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzcxj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/ads/zzega;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzcxp;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzcxp;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zzc:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzcxp;)Lcom/google/android/gms/internal/ads/zzcxj;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zze:Lcom/google/android/gms/internal/ads/zzcxj;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzcxp;)Lcom/google/android/gms/internal/ads/zzega;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zzf:Lcom/google/android/gms/internal/ads/zzega;

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzcxp;)Lcom/google/android/gms/internal/ads/zzfei;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zzd:Lcom/google/android/gms/internal/ads/zzfei;

    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzcxp;)Lcom/google/android/gms/internal/ads/zzfeq;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzega;)Lcom/google/android/gms/internal/ads/zzcxp;
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzega;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zzf:Lcom/google/android/gms/internal/ads/zzega;

    return-object p0
.end method

.method public final zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcxp;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zza:Landroid/content/Context;

    return-object p0
.end method

.method public final zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcxp;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zzc:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzcxj;)Lcom/google/android/gms/internal/ads/zzcxp;
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzcxj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zze:Lcom/google/android/gms/internal/ads/zzcxj;

    return-object p0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzfei;)Lcom/google/android/gms/internal/ads/zzcxp;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zzd:Lcom/google/android/gms/internal/ads/zzfei;

    return-object p0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzfeq;)Lcom/google/android/gms/internal/ads/zzcxp;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxp;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzcxr;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcxr;-><init>(Lcom/google/android/gms/internal/ads/zzcxp;Lcom/google/android/gms/internal/ads/zzcxq;)V

    return-object v0
.end method
