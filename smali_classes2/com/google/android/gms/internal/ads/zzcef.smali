###### Class com.google.android.gms.internal.ads.zzcef (com.google.android.gms.internal.ads.zzcef)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzceo;

.field public final synthetic zzb:I

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzceo;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->zza:Lcom/google/android/gms/internal/ads/zzceo;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->zza:Lcom/google/android/gms/internal/ads/zzceo;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzc:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzceo;->zzO(II)V

    return-void
.end method
