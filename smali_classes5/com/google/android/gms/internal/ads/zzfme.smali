###### Class com.google.android.gms.internal.ads.zzfme (com.google.android.gms.internal.ads.zzfme)
.class public final Lcom/google/android/gms/internal/ads/zzfme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfly;


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzfme;


# instance fields
.field private zzb:F

.field private final zzc:Lcom/google/android/gms/internal/ads/zzflu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfls;

.field private zze:Lcom/google/android/gms/internal/ads/zzflt;

.field private zzf:Lcom/google/android/gms/internal/ads/zzflx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzflu;Lcom/google/android/gms/internal/ads/zzfls;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzb:F

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzc:Lcom/google/android/gms/internal/ads/zzflu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzd:Lcom/google/android/gms/internal/ads/zzfls;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzfme;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfme;->zza:Lcom/google/android/gms/internal/ads/zzfme;

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfls;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfls;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzflu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzflu;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfme;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfme;-><init>(Lcom/google/android/gms/internal/ads/zzflu;Lcom/google/android/gms/internal/ads/zzfls;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfme;->zza:Lcom/google/android/gms/internal/ads/zzfme;

    :cond_15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfme;->zza:Lcom/google/android/gms/internal/ads/zzfme;

    return-object v0
.end method


# virtual methods
.method public final zza()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzb:F

    return v0
.end method

.method public final zzc(Z)V
    .registers 2

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnf;->zzd()Lcom/google/android/gms/internal/ads/zzfnf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnf;->zzi()V

    return-void

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnf;->zzd()Lcom/google/android/gms/internal/ads/zzfnf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnf;->zzh()V

    return-void
.end method

.method public final zzd(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzflr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzflr;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzflt;

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzflt;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzfme;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfme;->zze:Lcom/google/android/gms/internal/ads/zzflt;

    return-void
.end method

.method public final zze(F)V
    .registers 4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzb:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzf:Lcom/google/android/gms/internal/ads/zzflx;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflx;->zza()Lcom/google/android/gms/internal/ads/zzflx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzf:Lcom/google/android/gms/internal/ads/zzflx;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzf:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflx;->zzb()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzflj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflj;->zzg()Lcom/google/android/gms/internal/ads/zzfmk;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfmk;->zzi(F)V

    goto :goto_16

    :cond_2a
    return-void
.end method

.method public final zzf()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflw;->zza()Lcom/google/android/gms/internal/ads/zzflw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzflz;->zze(Lcom/google/android/gms/internal/ads/zzfly;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflw;->zza()Lcom/google/android/gms/internal/ads/zzflw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflz;->zzf()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnf;->zzd()Lcom/google/android/gms/internal/ads/zzfnf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnf;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zze:Lcom/google/android/gms/internal/ads/zzflt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflt;->zza()V

    return-void
.end method

.method public final zzg()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnf;->zzd()Lcom/google/android/gms/internal/ads/zzfnf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnf;->zzj()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflw;->zza()Lcom/google/android/gms/internal/ads/zzflw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflz;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zze:Lcom/google/android/gms/internal/ads/zzflt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflt;->zzb()V

    return-void
.end method
