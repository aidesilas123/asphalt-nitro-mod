###### Class com.google.android.gms.internal.ads.zzddq (com.google.android.gms.internal.ads.zzddq)
.class public final Lcom/google/android/gms/internal/ads/zzddq;
.super Lcom/google/android/gms/internal/ads/zzddv;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdds;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzddv;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzddp;->zza:Lcom/google/android/gms/internal/ads/zzddp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzddv;->zzt(Lcom/google/android/gms/internal/ads/zzddu;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzddp (com.google.android.gms.internal.ads.zzddp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzddp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddu;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzddp;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzddp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzddp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzddp;->zza:Lcom/google/android/gms/internal/ads/zzddp;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdds;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdds;->zza()V

    return-void
.end method
