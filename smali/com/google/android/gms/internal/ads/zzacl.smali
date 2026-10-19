###### Class com.google.android.gms.internal.ads.zzacl (com.google.android.gms.internal.ads.zzacl)
.class public interface abstract Lcom/google/android/gms/internal/ads/zzacl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/ads/zzacl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacj;->zza:Lcom/google/android/gms/internal/ads/zzacj;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacl;->zzb:Lcom/google/android/gms/internal/ads/zzacl;

    return-void
.end method


# virtual methods
.method public abstract zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzace;
.end method

###### Class com.google.android.gms.internal.ads.zzacj (com.google.android.gms.internal.ads.zzacj)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzacj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacl;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzacj;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzacj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzacj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacj;->zza:Lcom/google/android/gms/internal/ads/zzacj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzace;
    .registers 3

    sget p1, Lcom/google/android/gms/internal/ads/zzack;->zza:I

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzace;

    return-object p1
.end method
