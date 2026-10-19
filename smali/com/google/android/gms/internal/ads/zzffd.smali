###### Class com.google.android.gms.internal.ads.zzffd (com.google.android.gms.internal.ads.zzffd)
.class public final Lcom/google/android/gms/internal/ads/zzffd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()V
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to Configure Aead. "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcaw;

    move-result-object v1

    const-string v2, "CryptoUtils.registerAead"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcaw;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static final zza()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgve;->zzt()Lcom/google/android/gms/internal/ads/zzgvb;

    move-result-object v0

    :try_start_4
    const-string v1, "AES128_GCM"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkq;->zzb()Lcom/google/android/gms/internal/ads/zzgkq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzgkq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgdd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgcs;->zza(Lcom/google/android/gms/internal/ads/zzgdd;)Lcom/google/android/gms/internal/ads/zzgdd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgcz;->zzc(Lcom/google/android/gms/internal/ads/zzgdd;)Lcom/google/android/gms/internal/ads/zzgcz;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgch;->zzb(Ljava/io/OutputStream;)Lcom/google/android/gms/internal/ads/zzgch;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgci;->zzb(Lcom/google/android/gms/internal/ads/zzgcz;Lcom/google/android/gms/internal/ads/zzgch;)V
    :try_end_1d
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_1d} :catch_20
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1d} :catch_1e

    goto :goto_37

    :catch_1e
    move-exception v1

    goto :goto_21

    :catch_20
    move-exception v1

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to generate key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcaw;

    move-result-object v2

    const-string v3, "CryptoUtils.generateKey"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzcaw;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvb;->zzb()Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgve;->zzA()[B

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvb;->zzc()V

    return-object v1
.end method

.method public static final zzb([B[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdtk;)Ljava/lang/String;
    .registers 7

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzffd;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgcz;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    const-class v1, Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgls;->zza()Lcom/google/android/gms/internal/ads/zzgls;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzgcz;->zze(Lcom/google/android/gms/internal/ads/zzgcj;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzgcf;->zza([B[B)[B

    move-result-object p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdtk;->zza()Ljava/util/Map;

    move-result-object p1

    const-string p2, "ds"

    const-string v1, "1"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2a
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_2a} :catch_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_2a} :catch_2b

    return-object p1

    :catch_2b
    move-exception p0

    goto :goto_2e

    :catch_2d
    move-exception p0

    :goto_2e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to decrypt "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcaw;

    move-result-object p1

    const-string p2, "CryptoUtils.decrypt"

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzcaw;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdtk;->zza()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "dsf"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgcz;
    .registers 3

    const/16 v0, 0xb

    :try_start_2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgcg;->zzb([B)Lcom/google/android/gms/internal/ads/zzgcg;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgci;->zza(Lcom/google/android/gms/internal/ads/zzgcg;)Lcom/google/android/gms/internal/ads/zzgcz;

    move-result-object p0
    :try_end_e
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_e} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_29

    :catch_f
    move-exception p0

    goto :goto_12

    :catch_11
    move-exception p0

    :goto_12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get keysethandle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcaw;

    move-result-object v0

    const-string v1, "CryptoUtils.getHandle"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcaw;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_29
    return-object p0
.end method
