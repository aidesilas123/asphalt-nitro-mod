###### Class com.google.android.gms.internal.ads.zzvg (com.google.android.gms.internal.ads.zzvg)
.class final Lcom/google/android/gms/internal/ads/zzvg;
.super Lcom/google/android/gms/internal/ads/zzact;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzvm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvm;Lcom/google/android/gms/internal/ads/zzade;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zza:Lcom/google/android/gms/internal/ads/zzvm;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzact;-><init>(Lcom/google/android/gms/internal/ads/zzade;)V

    return-void
.end method


# virtual methods
.method public final zza()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zza:Lcom/google/android/gms/internal/ads/zzvm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvm;->zzq(Lcom/google/android/gms/internal/ads/zzvm;)J

    move-result-wide v0

    return-wide v0
.end method
