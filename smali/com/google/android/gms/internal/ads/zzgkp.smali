###### Class com.google.android.gms.internal.ads.zzgkp (com.google.android.gms.internal.ads.zzgkp)
.class public final Lcom/google/android/gms/internal/ads/zzgkp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgkp;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgko;


# instance fields
.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgkp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkp;->zza:Lcom/google/android/gms/internal/ads/zzgkp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgko;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgko;-><init>(Lcom/google/android/gms/internal/ads/zzgkn;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkp;->zzb:Lcom/google/android/gms/internal/ads/zzgko;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkp;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgkp;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkp;->zza:Lcom/google/android/gms/internal/ads/zzgkp;

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzgor;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkp;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgor;

    if-nez v0, :cond_c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkp;->zzb:Lcom/google/android/gms/internal/ads/zzgko;

    :cond_c
    return-object v0
.end method
