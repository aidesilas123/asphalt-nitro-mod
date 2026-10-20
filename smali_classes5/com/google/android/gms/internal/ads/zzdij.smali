###### Class com.google.android.gms.internal.ads.zzdij (com.google.android.gms.internal.ads.zzdij)
.class public final Lcom/google/android/gms/internal/ads/zzdij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzczg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzczg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdij;->zza:Lcom/google/android/gms/internal/ads/zzczg;

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdij;->zza:Lcom/google/android/gms/internal/ads/zzczg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzczg;->zza(Landroid/content/Context;)V

    return-void
.end method

.method public final zzb()V
    .registers 1

    return-void
.end method
