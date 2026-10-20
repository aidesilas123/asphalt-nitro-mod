###### Class com.google.android.gms.internal.drive.zzio (com.google.android.gms.internal.drive.zzio)
.class public final Lcom/google/android/gms/internal/drive/zzio;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private final zzmn:I

.field private final zzmo:I

.field private zzmp:I

.field private zzmq:I

.field private zzmr:I

.field private zzms:I

.field private zzmt:I

.field private zzmu:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzio;->zzms:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmt:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmu:I

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzio;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmn:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmp:I

    iput p3, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmo:I

    iput p2, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmq:I

    return-void
.end method

.method public static zza([BII)Lcom/google/android/gms/internal/drive/zzio;
    .registers 4

    new-instance p1, Lcom/google/android/gms/internal/drive/zzio;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/drive/zzio;-><init>([BII)V

    return-object p1
.end method

.method private final zzbg()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmq:I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmp:I

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzio;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmq:I

    aget-byte v0, v1, v0

    return v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/drive/zziw;->zzbk()Lcom/google/android/gms/internal/drive/zziw;

    move-result-object v0

    throw v0
.end method

.method private final zzl(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_21

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmq:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzio;->zzms:I

    if-gt v1, v2, :cond_18

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmp:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_13

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmq:I

    return-void

    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/drive/zziw;->zzbk()Lcom/google/android/gms/internal/drive/zziw;

    move-result-object p1

    throw p1

    :cond_18
    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/drive/zzio;->zzl(I)V

    invoke-static {}, Lcom/google/android/gms/internal/drive/zziw;->zzbk()Lcom/google/android/gms/internal/drive/zziw;

    move-result-object p1

    throw p1

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/drive/zziw;->zzbl()Lcom/google/android/gms/internal/drive/zziw;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final getPosition()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmq:I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmn:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbe()I

    move-result v0

    if-ltz v0, :cond_23

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmp:I

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmq:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzio;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmq:I

    sget-object v4, Lcom/google/android/gms/internal/drive/zziv;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmq:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmq:I

    return-object v1

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/drive/zziw;->zzbk()Lcom/google/android/gms/internal/drive/zziw;

    move-result-object v0

    throw v0

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/drive/zziw;->zzbl()Lcom/google/android/gms/internal/drive/zziw;

    move-result-object v0

    throw v0
.end method

.method public final zza(II)[B
    .registers 6

    if-nez p2, :cond_5

    sget-object p1, Lcom/google/android/gms/internal/drive/zzja;->zzns:[B

    return-object p1

    :cond_5
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmn:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzio;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final zzbd()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmq:I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmp:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmr:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbe()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmr:I

    if-eqz v0, :cond_13

    return v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/drive/zziw;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zziw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzbe()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    move-result v0

    if-ltz v0, :cond_7

    return v0

    :cond_7
    and-int/lit8 v0, v0, 0x7f

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    move-result v1

    if-ltz v1, :cond_13

    shl-int/lit8 v1, v1, 0x7

    :goto_11
    or-int/2addr v0, v1

    goto :goto_50

    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    move-result v1

    if-ltz v1, :cond_21

    shl-int/lit8 v1, v1, 0xe

    goto :goto_11

    :cond_21
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    move-result v1

    if-ltz v1, :cond_2f

    shl-int/lit8 v1, v1, 0x15

    goto :goto_11

    :cond_2f
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_50

    const/4 v1, 0x0

    :goto_3e
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4b

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    move-result v2

    if-ltz v2, :cond_48

    return v0

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/drive/zziw;->zzbm()Lcom/google/android/gms/internal/drive/zziw;

    move-result-object v0

    throw v0

    :cond_50
    :goto_50
    return v0
.end method

.method public final zzbf()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_18

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v1

    :cond_15
    add-int/lit8 v0, v0, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/drive/zziw;->zzbm()Lcom/google/android/gms/internal/drive/zziw;

    move-result-object v0

    throw v0
.end method

.method public final zzj(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/drive/zziw;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzio;->zzmr:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/drive/zziw;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/drive/zziw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzk(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_5e

    if-eq v0, v1, :cond_45

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3d

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2a

    if-eq v0, v2, :cond_28

    const/4 p1, 0x5

    if-ne v0, p1, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    return v1

    :cond_20
    new-instance p1, Lcom/google/android/gms/internal/drive/zziw;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/drive/zziw;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    const/4 p1, 0x0

    return p1

    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbd()I

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzio;->zzk(I)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_36
    ushr-int/2addr p1, v3

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzio;->zzj(I)V

    return v1

    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbe()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzio;->zzl(I)V

    return v1

    :cond_45
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbg()B

    return v1

    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzio;->zzbe()I

    return v1
.end method
