###### Class com.google.android.gms.internal.ads.zzeni (com.google.android.gms.internal.ads.zzeni)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeni;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfay;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzeni;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeni;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeni;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeni;->zza:Lcom/google/android/gms/internal/ads/zzeni;

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

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzci;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzci;->zzf()V

    return-void
.end method
