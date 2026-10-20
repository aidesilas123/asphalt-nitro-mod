###### Class com.google.android.gms.internal.ads.zzebp (com.google.android.gms.internal.ads.zzebp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzebp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbom;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzebp;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzebp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzebp;->zza:Lcom/google/android/gms/internal/ads/zzebp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwd;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
