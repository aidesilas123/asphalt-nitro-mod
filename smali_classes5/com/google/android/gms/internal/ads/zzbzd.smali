###### Class com.google.android.gms.internal.ads.zzbzd (com.google.android.gms.internal.ads.zzbzd)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzq;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzbzd;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbzd;->zza:Lcom/google/android/gms/internal/ads/zzbzd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcim;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcim;->zzh()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcim;->zzg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_10

    :cond_d
    const-string p1, ""

    return-object p1

    :cond_10
    :goto_10
    return-object v0
.end method
