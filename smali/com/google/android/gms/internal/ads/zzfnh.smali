###### Class com.google.android.gms.internal.ads.zzfnh (com.google.android.gms.internal.ads.zzfnh)
.class public abstract Lcom/google/android/gms/internal/ads/zzfnh;
.super Landroid/os/AsyncTask;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzfni;

.field protected final zzd:Lcom/google/android/gms/internal/ads/zzfmz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfmz;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnh;->zzd:Lcom/google/android/gms/internal/ads/zzfmz;

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfnh;->zza(Ljava/lang/String;)V

    return-void
.end method

.method protected zza(Ljava/lang/String;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnh;->zza:Lcom/google/android/gms/internal/ads/zzfni;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfni;->zza(Lcom/google/android/gms/internal/ads/zzfnh;)V

    :cond_7
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfni;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnh;->zza:Lcom/google/android/gms/internal/ads/zzfni;

    return-void
.end method
