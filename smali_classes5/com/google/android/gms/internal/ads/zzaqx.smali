###### Class com.google.android.gms.internal.ads.zzaqx (com.google.android.gms.internal.ads.zzaqx)
.class final Lcom/google/android/gms/internal/ads/zzaqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field static zza:Z

.field static final zzb:Ljava/util/concurrent/CountDownLatch;

.field public static final synthetic zzc:I

.field private static zzd:Ljava/security/MessageDigest;

.field private static final zze:Ljava/lang/Object;

.field private static final zzf:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqx;->zze:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzf:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzb:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static zza([BLjava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzb([BI)Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_4b

    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaqq;->zza()Lcom/google/android/gms/internal/ads/zzaqp;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v3, :cond_32

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6, p1, v4}, Lcom/google/android/gms/internal/ads/zzaqx;->zzg([BLjava/lang/String;Z)[B

    move-result-object v6

    const/16 v7, 0x100

    invoke-static {v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzgve;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Lcom/google/android/gms/internal/ads/zzgve;)Lcom/google/android/gms/internal/ads/zzaqp;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_32
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zze([B)[B

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgve;->zzb:Lcom/google/android/gms/internal/ads/zzgve;

    array-length p1, p0

    invoke-static {p0, v4, p1}, Lcom/google/android/gms/internal/ads/zzgve;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzaqp;->zzb(Lcom/google/android/gms/internal/ads/zzgve;)Lcom/google/android/gms/internal/ads/zzaqp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwi;->zzal()Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaqq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgun;->zzax()[B

    move-result-object p0

    goto :goto_59

    :cond_4b
    :goto_4b
    const/16 p0, 0x1000

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzf(I)Lcom/google/android/gms/internal/ads/zzaqd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgun;->zzax()[B

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zzg([BLjava/lang/String;Z)[B

    move-result-object p0

    :goto_59
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaqt;->zza([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zzb([BI)Ljava/util/Vector;
    .registers 9

    array-length p1, p0

    const/4 v0, 0x0

    if-gtz p1, :cond_5

    return-object v0

    :cond_5
    add-int/lit16 p1, p1, 0xfe

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    :goto_d
    const/16 v3, 0xff

    div-int/lit16 v4, p1, 0xff

    if-ge v2, v4, :cond_27

    mul-int/lit16 v4, v2, 0xff

    :try_start_15
    array-length v5, p0

    sub-int v6, v5, v4

    if-le v6, v3, :cond_1c

    add-int/lit16 v5, v4, 0xff

    :cond_1c
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_23} :catch_26

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catch_26
    return-object v0

    :cond_27
    return-object v1
.end method

.method static bridge synthetic zzc(Ljava/security/MessageDigest;)V
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzd:Ljava/security/MessageDigest;

    return-void
.end method

.method static zzd()V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaqx;->zza:Z

    if-nez v1, :cond_18

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzaqx;->zza:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaqw;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzaqw;-><init>(Lcom/google/android/gms/internal/ads/zzaqv;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static zze([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqx;->zze:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaqx;->zzd()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_34

    const/4 v1, 0x0

    :try_start_7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaqx;->zzb:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_11} :catch_1b
    .catchall {:try_start_7 .. :try_end_11} :catchall_34

    if-nez v2, :cond_14

    goto :goto_1c

    :cond_14
    :try_start_14
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaqx;->zzd:Ljava/security/MessageDigest;

    if-nez v2, :cond_19

    goto :goto_1c

    :cond_19
    move-object v1, v2

    goto :goto_1c

    :catch_1b
    nop

    :goto_1c
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzd:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2c
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Cannot compute hash"

    invoke-direct {p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_34

    throw p0
.end method

.method static zzf(I)Lcom/google/android/gms/internal/ads/zzaqd;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaqd;->zza()Lcom/google/android/gms/internal/ads/zzapg;

    move-result-object p0

    const-wide/16 v0, 0x1000

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzapg;->zzD(J)Lcom/google/android/gms/internal/ads/zzapg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzal()Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaqd;

    return-object p0
.end method

.method private static zzg([BLjava/lang/String;Z)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v1, p2, :cond_7

    const/16 v1, 0xff

    goto :goto_9

    :cond_7
    const/16 v1, 0xef

    :goto_9
    if-le v0, v1, :cond_15

    const/16 p0, 0x1000

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzf(I)Lcom/google/android/gms/internal/ads/zzaqd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgun;->zzax()[B

    move-result-object p0

    :cond_15
    add-int/lit8 v0, v1, 0x1

    array-length v2, p0

    int-to-byte v3, v2

    if-ge v2, v1, :cond_3b

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    goto :goto_4b

    :cond_3b
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    :goto_4b
    const/16 v0, 0x100

    if-eqz p2, :cond_63

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zze([B)[B

    move-result-object p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    :cond_63
    new-array p2, v0, [B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzarx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzarx;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzarx;->zzcG:[Lcom/google/android/gms/internal/ads/zzaqy;

    array-length v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6f
    const/16 v3, 0xc

    if-ge v2, v3, :cond_7b

    aget-object v3, v0, v2

    invoke-interface {v3, p0, p2}, Lcom/google/android/gms/internal/ads/zzaqy;->zza([B[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    :cond_7b
    if-eqz p1, :cond_9d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_9d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_8f

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_8f
    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzaqr;-><init>([B)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zza([B)V

    :cond_9d
    return-object p2
.end method
