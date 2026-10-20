###### Class com.google.android.gms.internal.ads.zzgof (com.google.android.gms.internal.ads.zzgof)
.class public final Lcom/google/android/gms/internal/ads/zzgof;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgmh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgmh;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgjl;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgof;->zza:Lcom/google/android/gms/internal/ads/zzgmh;

    return-void

    :cond_d
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-CMAC in FIPS-mode."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
