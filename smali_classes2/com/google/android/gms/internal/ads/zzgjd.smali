###### Class com.google.android.gms.internal.ads.zzgjd (com.google.android.gms.internal.ads.zzgjd)
.class abstract Lcom/google/android/gms/internal/ads/zzgjd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field zza:[I

.field private final zzb:I


# direct methods
.method public constructor <init>([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_11

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgiz;->zzd([B)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zza:[I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzb:I

    return-void

    :cond_11
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method abstract zza()I
.end method

.method abstract zzb([II)[I
.end method

.method final zzc([BI)Ljava/nio/ByteBuffer;
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgiz;->zzd([B)[I

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb([II)[I

    move-result-object p1

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgiz;->zzc([I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_13
    const/16 v2, 0x10

    if-ge v1, v2, :cond_21

    aget v2, p1, v1

    aget v3, p2, v1

    add-int/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    const/16 p2, 0x40

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-object p2
.end method

.method public final zzd([BLjava/nio/ByteBuffer;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zza()I

    move-result v2

    if-ne v1, v2, :cond_38

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    div-int/lit8 v2, v1, 0x40

    const/4 v3, 0x0

    :goto_16
    add-int/lit8 v4, v2, 0x1

    if-ge v3, v4, :cond_33

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzb:I

    add-int/2addr v5, v3

    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzgjd;->zzc([BI)Ljava/nio/ByteBuffer;

    move-result-object v5

    add-int/lit8 v4, v4, -0x1

    const/16 v6, 0x40

    if-ne v3, v4, :cond_2d

    rem-int/lit8 v4, v1, 0x40

    invoke-static {v0, p2, v5, v4}, Lcom/google/android/gms/internal/ads/zzgti;->zza(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_30

    :cond_2d
    invoke-static {v0, p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgti;->zza(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zza()I

    move-result p1

    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The nonce length (in bytes) must be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
