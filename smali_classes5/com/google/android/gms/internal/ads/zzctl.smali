###### Class com.google.android.gms.internal.ads.zzctl (com.google.android.gms.internal.ads.zzctl)
.class public final Lcom/google/android/gms/internal/ads/zzctl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzctj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzctj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctl;->zza:Lcom/google/android/gms/internal/ads/zzctj;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zza:Lcom/google/android/gms/internal/ads/zzctj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctj;->zzb()Lcom/google/android/gms/internal/ads/zzddd;

    move-result-object v0

    return-object v0
.end method
