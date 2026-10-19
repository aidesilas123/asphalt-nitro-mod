###### Class com.google.android.gms.internal.ads.zzdgg (com.google.android.gms.internal.ads.zzdgg)
.class public final Lcom/google/android/gms/internal/ads/zzdgg;
.super Lcom/google/android/gms/internal/ads/zzddv;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzddv;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zza:Lcom/google/android/gms/internal/ads/zzdgf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzddv;->zzt(Lcom/google/android/gms/internal/ads/zzddu;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzdgf (com.google.android.gms.internal.ads.zzdgf)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdgf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddu;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzdgf;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdgf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zza:Lcom/google/android/gms/internal/ads/zzdgf;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgi;->zza()V

    return-void
.end method
