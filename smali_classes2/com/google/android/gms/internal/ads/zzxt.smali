###### Class com.google.android.gms.internal.ads.zzxt (com.google.android.gms.internal.ads.zzxt)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzxt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzxt;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxt;->zza:Lcom/google/android/gms/internal/ads/zzxt;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxv;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzxv;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzxv;->zzd(Lcom/google/android/gms/internal/ads/zzxv;Lcom/google/android/gms/internal/ads/zzxv;)I

    move-result p1

    return p1
.end method
