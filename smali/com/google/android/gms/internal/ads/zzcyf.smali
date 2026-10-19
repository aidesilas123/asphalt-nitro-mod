###### Class com.google.android.gms.internal.ads.zzcyf (com.google.android.gms.internal.ads.zzcyf)
.class public final Lcom/google/android/gms/internal/ads/zzcyf;
.super Lcom/google/android/gms/internal/ads/zzddv;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zza;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzddv;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcye;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzddv;->zzt(Lcom/google/android/gms/internal/ads/zzddu;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcye (com.google.android.gms.internal.ads.zzcye)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcye;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddu;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcye;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcye;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcye;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcye;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zza;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    return-void
.end method
