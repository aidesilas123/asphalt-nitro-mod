###### Class com.google.android.gms.internal.ads.zzfti (com.google.android.gms.internal.ads.zzfti)
.class abstract Lcom/google/android/gms/internal/ads/zzfti;
.super Lcom/google/android/gms/internal/ads/zzftg;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzftg;-><init>()V

    const-string p1, "CharMatcher.none()"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfti;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfti;->zza:Ljava/lang/String;

    return-object v0
.end method
