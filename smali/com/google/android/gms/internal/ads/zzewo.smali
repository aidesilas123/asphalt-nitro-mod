###### Class com.google.android.gms.internal.ads.zzewo (com.google.android.gms.internal.ads.zzewo)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzewo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzewp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzewp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewo;->zza:Lcom/google/android/gms/internal/ads/zzewp;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzewq;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
