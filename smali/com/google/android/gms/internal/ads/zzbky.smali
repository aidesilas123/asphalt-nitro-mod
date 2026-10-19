###### Class com.google.android.gms.internal.ads.zzbky (com.google.android.gms.internal.ads.zzbky)
.class public final Lcom/google/android/gms/internal/ads/zzbky;
.super Lcom/google/android/gms/internal/ads/zzbla;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbla;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbky;->zza:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbky;->zza:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;->onH5AdsEvent(Ljava/lang/String;)V

    return-void
.end method
