###### Class com.google.android.gms.internal.ads.zzauz (com.google.android.gms.internal.ads.zzauz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzauz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Landroid/content/pm/PackageManager$OnChecksumsReadyListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgbt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgbt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauz;->zza:Lcom/google/android/gms/internal/ads/zzgbt;

    return-void
.end method


# virtual methods
.method public final onChecksumsReady(Ljava/util/List;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauz;->zza:Lcom/google/android/gms/internal/ads/zzgbt;

    const/4 v1, 0x0

    if-nez p1, :cond_9

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgbt;->zzc(Ljava/lang/Object;)Z

    return-void

    :cond_9
    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_2d

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApkChecksum;

    invoke-virtual {v4}, Landroid/content/pm/ApkChecksum;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2a

    invoke-virtual {v4}, Landroid/content/pm/ApkChecksum;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzatm;->zzb([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbt;->zzc(Ljava/lang/Object;)Z

    return-void

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2d
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgbt;->zzc(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgbt;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
