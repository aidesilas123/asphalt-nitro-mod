###### Class com.google.android.gms.internal.ads.zzcuf (com.google.android.gms.internal.ads.zzcuf)
.class final Lcom/google/android/gms/internal/ads/zzcuf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgax;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgax;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcug;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcug;Lcom/google/android/gms/internal/ads/zzgax;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzb:Lcom/google/android/gms/internal/ads/zzcug;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zza:Lcom/google/android/gms/internal/ads/zzgax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzb:Lcom/google/android/gms/internal/ads/zzcug;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcug;->zzc(Lcom/google/android/gms/internal/ads/zzcug;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zza:Lcom/google/android/gms/internal/ads/zzgax;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgax;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzb:Lcom/google/android/gms/internal/ads/zzcug;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzctr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcug;->zzc(Lcom/google/android/gms/internal/ads/zzcug;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zza:Lcom/google/android/gms/internal/ads/zzgax;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgax;->zzb(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcua (com.google.android.gms.internal.ads.zzcua)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcua;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcug;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcug;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zza:Lcom/google/android/gms/internal/ads/zzcug;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zza:Lcom/google/android/gms/internal/ads/zzcug;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcug;->zzd()V

    return-void
.end method
