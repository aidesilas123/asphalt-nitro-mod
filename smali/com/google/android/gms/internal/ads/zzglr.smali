###### Class com.google.android.gms.internal.ads.zzglr (com.google.android.gms.internal.ads.zzglr)
.class public final Lcom/google/android/gms/internal/ads/zzglr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzglq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzglq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzglr;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic zza()Ljava/security/SecureRandom;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzglr;->zzc()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    return-object v0
.end method

.method public static zzb(I)[B
    .registers 2

    new-array p0, p0, [B

    sget-object v0, Lcom/google/android/gms/internal/ads/zzglr;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method private static zzc()Ljava/security/SecureRandom;
    .registers 5

    const-string v0, "SHA1PRNG"

    :try_start_2
    const-string v1, "GmsCore_OpenSSL"

    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    :try_start_9
    const-string v1, "AndroidOpenSSL"

    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_f
    .catch Ljava/security/GeneralSecurityException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    :try_start_10
    const-string v1, "Conscrypt"

    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_16
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    :try_start_17
    const-string v1, "org.conscrypt.Conscrypt"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newProvider"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_2f} :catch_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_2f} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_2f} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_2f} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_2f} :catch_34
    .catch Ljava/security/GeneralSecurityException; {:try_start_17 .. :try_end_2f} :catch_45

    :try_start_2f
    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0

    :catch_34
    move-exception v0

    goto :goto_3d

    :catch_36
    move-exception v0

    goto :goto_3d

    :catch_38
    move-exception v0

    goto :goto_3d

    :catch_3a
    move-exception v0

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Failed to get Conscrypt provider"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_45
    .catch Ljava/security/GeneralSecurityException; {:try_start_2f .. :try_end_45} :catch_45

    :catch_45
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method
