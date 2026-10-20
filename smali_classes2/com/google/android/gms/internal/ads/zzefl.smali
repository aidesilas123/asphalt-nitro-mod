###### Class com.google.android.gms.internal.ads.zzefl (com.google.android.gms.internal.ads.zzefl)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzefl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzflf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzflf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefl;->zza:Lcom/google/android/gms/internal/ads/zzflf;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdc;->zzeT:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfld;->zzb()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1e

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefl;->zza:Lcom/google/android/gms/internal/ads/zzflf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflf;->zzc()V

    :cond_1e
    :goto_1e
    return-void
.end method
