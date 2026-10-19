###### Class com.google.android.gms.internal.ads.zzcdp (com.google.android.gms.internal.ads.zzcdp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcdb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcdb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdp;->zza:Lcom/google/android/gms/internal/ads/zzcdb;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdp;->zza:Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcdb;->zzk()V

    return-void
.end method
