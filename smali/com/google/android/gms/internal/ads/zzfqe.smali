###### Class com.google.android.gms.internal.ads.zzfqe (com.google.android.gms.internal.ads.zzfqe)
.class public abstract Lcom/google/android/gms/internal/ads/zzfqe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfqq;
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqq;-><init>()V

    return-object v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzfqp;)Lcom/google/android/gms/internal/ads/zzfqq;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfqc;-><init>(I)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfqd;->zza:Lcom/google/android/gms/internal/ads/zzfqd;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfqq;-><init>(Lcom/google/android/gms/internal/ads/zzfuo;Lcom/google/android/gms/internal/ads/zzfuo;Lcom/google/android/gms/internal/ads/zzfqp;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfuo;Lcom/google/android/gms/internal/ads/zzfuo;Lcom/google/android/gms/internal/ads/zzfqp;)Lcom/google/android/gms/internal/ads/zzfqq;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfuo<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfuo<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfqp;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfqq;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqq;-><init>(Lcom/google/android/gms/internal/ads/zzfuo;Lcom/google/android/gms/internal/ads/zzfuo;Lcom/google/android/gms/internal/ads/zzfqp;)V

    return-object v0
.end method

.method static synthetic zzd(I)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze()Ljava/lang/Integer;
    .registers 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzfqc (com.google.android.gms.internal.ads.zzfqc)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuo;


# instance fields
.field public final synthetic zza:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfqc;->zza:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfqc;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfqe;->zzd(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzfqd (com.google.android.gms.internal.ads.zzfqd)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfqd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuo;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzfqd;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zza:Lcom/google/android/gms/internal/ads/zzfqd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqe;->zze()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
