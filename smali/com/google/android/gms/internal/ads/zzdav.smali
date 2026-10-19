###### Class com.google.android.gms.internal.ads.zzdav (com.google.android.gms.internal.ads.zzdav)
.class final Lcom/google/android/gms/internal/ads/zzdav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Ljava/lang/ref/WeakReference;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdaw;Lcom/google/android/gms/internal/ads/zzdau;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdav;->zza:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdav;->zza:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdaw;

    if-eqz v0, :cond_f

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdat;->zza:Lcom/google/android/gms/internal/ads/zzdat;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddv;->zzt(Lcom/google/android/gms/internal/ads/zzddu;)V

    :cond_f
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdat (com.google.android.gms.internal.ads.zzdat)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddu;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzdat;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdat;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdat;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdat;->zza:Lcom/google/android/gms/internal/ads/zzdat;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdax;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdax;->zza()V

    return-void
.end method
