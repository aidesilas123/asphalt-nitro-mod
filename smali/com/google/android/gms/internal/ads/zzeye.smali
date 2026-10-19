###### Class com.google.android.gms.internal.ads.zzeye (com.google.android.gms.internal.ads.zzeye)
.class public final Lcom/google/android/gms/internal/ads/zzeye;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzexz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzexz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeye;->zza:Lcom/google/android/gms/internal/ads/zzexz;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzexz;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzexz;->zzi()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeye;->zza:Lcom/google/android/gms/internal/ads/zzexz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzexz;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeye;->zza()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
