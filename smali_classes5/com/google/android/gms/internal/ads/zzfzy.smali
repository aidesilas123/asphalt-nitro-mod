###### Class com.google.android.gms.internal.ads.zzfzy (com.google.android.gms.internal.ads.zzfzy)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgaa;

.field public final synthetic zzb:Lcom/google/common/util/concurrent/h0;

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgaa;Lcom/google/common/util/concurrent/h0;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zza:Lcom/google/android/gms/internal/ads/zzgaa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:Lcom/google/common/util/concurrent/h0;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zza:Lcom/google/android/gms/internal/ads/zzgaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:Lcom/google/common/util/concurrent/h0;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzc:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgaa;->zzw(Lcom/google/common/util/concurrent/h0;I)V

    return-void
.end method
