###### Class com.google.android.gms.internal.ads.zzgth (com.google.android.gms.internal.ads.zzgth)
.class public final Lcom/google/android/gms/internal/ads/zzgth;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgjb;

.field private final zzb:[B


# direct methods
.method public constructor <init>([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzguk;->zzb([B)Lcom/google/android/gms/internal/ads/zzguk;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgjl;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgjb;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzgjb;-><init>([BZ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgth;->zza:Lcom/google/android/gms/internal/ads/zzgjb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguk;->zzc()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgth;->zzb:[B

    return-void

    :cond_20
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([B[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgth;->zzb:[B

    array-length v1, v0

    const/16 v2, 0xc

    if-nez v1, :cond_12

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgth;->zza:Lcom/google/android/gms/internal/ads/zzgjb;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgjb;->zza([B[B[B)[B

    move-result-object p1

    return-object p1

    :cond_12
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgmd;->zza:Ljava/nio/charset/Charset;

    array-length v3, p1

    if-lt v3, v1, :cond_37

    const/4 v1, 0x0

    :goto_18
    array-length v3, v0

    if-ge v1, v3, :cond_24

    aget-byte v3, p1, v1

    aget-byte v4, v0, v1

    if-ne v3, v4, :cond_37

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgth;->zzb:[B

    array-length v1, p1

    array-length v0, v0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgth;->zza:Lcom/google/android/gms/internal/ads/zzgjb;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgjb;->zza([B[B[B)[B

    move-result-object p1

    return-object p1

    :cond_37
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
