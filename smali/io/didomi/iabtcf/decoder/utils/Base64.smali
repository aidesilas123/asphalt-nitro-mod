###### Class io.didomi.iabtcf.decoder.utils.Base64 (io.didomi.iabtcf.decoder.utils.Base64)
.class public Lio/didomi/iabtcf/decoder/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;,
        Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;,
        Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;,
        Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoder()Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->RFC4648:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    return-object v0
.end method

.method public static getEncoder()Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->RFC4648:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeDecoder()Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->RFC2045:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    return-object v0
.end method

.method public static getMimeEncoder()Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->RFC2045:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeEncoder(I[B)Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
    .registers 9

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->access$000()[I

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_34

    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xff

    aget v4, v0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal base64 line separator character 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-static {v3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    if-gtz p0, :cond_39

    sget-object p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->RFC4648:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    return-object p0

    :cond_39
    new-instance v6, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    const/4 v1, 0x0

    shr-int/lit8 p0, p0, 0x2

    shl-int/lit8 v3, p0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;-><init>(Z[BIZLio/didomi/iabtcf/decoder/utils/Base64$1;)V

    return-object v6
.end method

.method public static getUrlDecoder()Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->RFC4648_URLSAFE:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    return-object v0
.end method

.method public static getUrlEncoder()Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->RFC4648_URLSAFE:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    return-object v0
.end method

###### Class io.didomi.iabtcf.decoder.utils.Base64.AnonymousClass1 (io.didomi.iabtcf.decoder.utils.Base64$1)
.class synthetic Lio/didomi/iabtcf/decoder/utils/Base64$1;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.didomi.iabtcf.decoder.utils.Base64.DecInputStream (io.didomi.iabtcf.decoder.utils.Base64$DecInputStream)
.class Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;
.super Ljava/io/InputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecInputStream"
.end annotation


# instance fields
.field private final base64:[I

.field private bits:I

.field private closed:Z

.field private eof:Z

.field private final is:Ljava/io/InputStream;

.field private final isMIME:Z

.field private nextin:I

.field private nextout:I

.field private sbBuf:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;[IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    const/16 v1, 0x12

    iput v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    const/4 v1, -0x8

    iput v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->eof:Z

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->closed:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->sbBuf:[B

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->is:Ljava/io/InputStream;

    iput-object p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->base64:[I

    iput-boolean p3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->isMIME:Z

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->closed:Z

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->sbBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->sbBuf:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_12
    return v2
.end method

.method public read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_131

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    if-gez v0, :cond_e

    return v1

    :cond_e
    if-ltz p2, :cond_12b

    if-ltz p3, :cond_12b

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_12b

    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    const/4 v2, 0x0

    if-ltz v0, :cond_37

    move v0, p2

    :goto_1c
    if-nez p3, :cond_20

    sub-int/2addr v0, p2

    return v0

    :cond_20
    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    iget v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v5, v5, -0x8

    iput v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    if-gez v5, :cond_35

    iput v2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    goto :goto_38

    :cond_35
    move v0, v3

    goto :goto_1c

    :cond_37
    move v3, p2

    :goto_38
    if-lez p3, :cond_129

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v4, 0xc

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-ne v0, v1, :cond_7b

    iput-boolean v6, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->eof:Z

    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    if-eq v0, v5, :cond_76

    if-eq v0, v4, :cond_6e

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    shr-int/lit8 v6, v5, 0x10

    int-to-byte v6, v6

    aput-byte v6, p1, v3

    add-int/2addr p3, v1

    if-nez v0, :cond_6c

    if-nez p3, :cond_64

    shr-int/lit8 p1, v5, 0x8

    iput p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    iput v2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    goto :goto_6c

    :cond_64
    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 p3, v5, 0x8

    int-to-byte p3, p3

    aput-byte p3, p1, v4

    goto :goto_76

    :cond_6c
    :goto_6c
    move v3, v4

    goto :goto_76

    :cond_6e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Base64 stream has one un-decoded dangling byte."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_76
    :goto_76
    if-ne v3, p2, :cond_79

    return v1

    :cond_79
    sub-int/2addr v3, p2

    return v3

    :cond_7b
    const/16 v7, 0x3d

    if-ne v0, v7, :cond_ce

    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    if-eq v0, v5, :cond_b5

    if-eq v0, v4, :cond_b5

    const/4 v4, 0x6

    if-ne v0, v4, :cond_90

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v7, :cond_b5

    :cond_90
    add-int/lit8 v0, v3, 0x1

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    shr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    add-int/2addr p3, v1

    iget v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    if-nez v1, :cond_b0

    if-nez p3, :cond_a7

    shr-int/lit8 p1, v4, 0x8

    iput p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    iput v2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    goto :goto_b0

    :cond_a7
    add-int/lit8 p3, v0, 0x1

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    move v3, p3

    goto :goto_b1

    :cond_b0
    :goto_b0
    move v3, v0

    :goto_b1
    iput-boolean v6, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->eof:Z

    goto/16 :goto_129

    :cond_b5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal base64 ending sequence:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ce
    iget-object v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->base64:[I

    aget v0, v4, v0

    const/16 v4, 0x10

    if-ne v0, v1, :cond_f7

    iget-boolean v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->isMIME:Z

    if-eqz v5, :cond_dc

    goto/16 :goto_38

    :cond_dc
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal base64 character "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f7
    iget v6, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    iget v7, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    shl-int/2addr v0, v7

    or-int/2addr v0, v6

    iput v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    if-nez v7, :cond_123

    iput v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    iput v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    :goto_105
    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    if-ltz v0, :cond_11f

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    shr-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    if-nez p3, :cond_11d

    if-ltz v0, :cond_11d

    sub-int/2addr v4, p2

    return v4

    :cond_11d
    move v3, v4

    goto :goto_105

    :cond_11f
    iput v2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    goto/16 :goto_38

    :cond_123
    add-int/lit8 v7, v7, -0x6

    iput v7, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    goto/16 :goto_38

    :cond_129
    :goto_129
    sub-int/2addr v3, p2

    return v3

    :cond_12b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_131
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.didomi.iabtcf.decoder.utils.Base64.Decoder (io.didomi.iabtcf.decoder.utils.Base64$Decoder)
.class public Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field private static final FROM_BASE_64:[I

.field private static final FROM_BASE_64_URL:[I

.field static final RFC2045:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

.field static final RFC4648:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

.field static final RFC4648_URLSAFE:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;


# instance fields
.field private final isMIME:Z

.field private final isURL:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_c
    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->access$200()[C

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_20

    sget-object v4, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64:[I

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->access$200()[C

    move-result-object v5

    aget-char v5, v5, v3

    aput v3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_20
    sget-object v3, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64:[I

    const/16 v4, 0x3d

    const/4 v5, -0x2

    aput v5, v3, v4

    new-array v0, v0, [I

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64_URL:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    :goto_2f
    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->access$300()[C

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_43

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64_URL:[I

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->access$300()[C

    move-result-object v3

    aget-char v3, v3, v0

    aput v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_43
    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64_URL:[I

    aput v5, v0, v4

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    invoke-direct {v0, v1, v1}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->RFC4648:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->RFC4648_URLSAFE:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    invoke-direct {v0, v1, v2}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->RFC2045:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->isURL:Z

    iput-boolean p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->isMIME:Z

    return-void
.end method

.method static synthetic access$000()[I
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64:[I

    return-object v0
.end method

.method private decode0([BII[B)I
    .registers 15

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_7

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64_URL:[I

    goto :goto_9

    :cond_7
    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64:[I

    :goto_9
    const/16 v1, 0x12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x12

    const/4 v5, 0x0

    :goto_10
    const/4 v6, 0x6

    const/16 v7, 0x10

    if-ge p2, p3, :cond_7f

    add-int/lit8 v8, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    aget p2, v0, p2

    if-gez p2, :cond_5f

    const/4 v9, -0x2

    if-ne p2, v9, :cond_3b

    if-ne v4, v6, :cond_2f

    if-eq v8, p3, :cond_33

    add-int/lit8 p2, v8, 0x1

    aget-byte v2, p1, v8

    const/16 v8, 0x3d

    if-ne v2, v8, :cond_33

    goto :goto_30

    :cond_2f
    move p2, v8

    :goto_30
    if-eq v4, v1, :cond_33

    goto :goto_7f

    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input byte array has wrong 4-byte ending unit"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-boolean p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->isMIME:Z

    if-eqz p2, :cond_40

    goto :goto_7d

    :cond_40
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal base64 character "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    aget-byte p1, p1, v8

    invoke-static {p1, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5f
    shl-int/2addr p2, v4

    or-int/2addr p2, v3

    add-int/lit8 v4, v4, -0x6

    if-gez v4, :cond_7c

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v4, p2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p4, v5

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, p2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v3

    add-int/lit8 v5, v4, 0x1

    int-to-byte p2, p2

    aput-byte p2, p4, v4

    const/4 v3, 0x0

    const/16 v4, 0x12

    goto :goto_7d

    :cond_7c
    move v3, p2

    :goto_7d
    move p2, v8

    goto :goto_10

    :cond_7f
    :goto_7f
    if-ne v4, v6, :cond_8a

    add-int/lit8 v1, v5, 0x1

    shr-int/lit8 v2, v3, 0x10

    int-to-byte v2, v2

    aput-byte v2, p4, v5

    move v5, v1

    goto :goto_9f

    :cond_8a
    if-nez v4, :cond_9b

    add-int/lit8 v1, v5, 0x1

    shr-int/lit8 v2, v3, 0x10

    int-to-byte v2, v2

    aput-byte v2, p4, v5

    add-int/lit8 v5, v1, 0x1

    shr-int/lit8 v2, v3, 0x8

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    goto :goto_9f

    :cond_9b
    const/16 p4, 0xc

    if-eq v4, p4, :cond_c8

    :goto_9f
    if-ge p2, p3, :cond_c7

    iget-boolean p4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->isMIME:Z

    if-eqz p4, :cond_b0

    add-int/lit8 p4, p2, 0x1

    aget-byte p2, p1, p2

    aget p2, v0, p2

    if-gez p2, :cond_af

    move p2, p4

    goto :goto_9f

    :cond_af
    move p2, p4

    :cond_b0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Input byte array has incorrect ending byte at "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c7
    return v5

    :cond_c8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Last unit does not have enough valid bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private outLength([BII)I
    .registers 12

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_7

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64_URL:[I

    goto :goto_9

    :cond_7
    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64:[I

    :goto_9
    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-nez v1, :cond_f

    return v2

    :cond_f
    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_24

    iget-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->isMIME:Z

    if-eqz p1, :cond_1c

    aget p1, v0, v2

    if-ne p1, v3, :cond_1c

    return v2

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input byte[] should at least have 2 bytes for base64 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    iget-boolean v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->isMIME:Z

    const/16 v6, 0x3d

    const/4 v7, 0x1

    if-eqz v5, :cond_44

    const/4 v4, 0x0

    :goto_2c
    if-ge p2, p3, :cond_42

    add-int/lit8 v5, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    if-ne p2, v6, :cond_3a

    sub-int/2addr p3, v5

    add-int/2addr p3, v7

    sub-int/2addr v1, p3

    goto :goto_42

    :cond_3a
    aget p2, v0, p2

    if-ne p2, v3, :cond_40

    add-int/lit8 v4, v4, 0x1

    :cond_40
    move p2, v5

    goto :goto_2c

    :cond_42
    :goto_42
    sub-int/2addr v1, v4

    goto :goto_52

    :cond_44
    add-int/lit8 p2, p3, -0x1

    aget-byte p2, p1, p2

    if-ne p2, v6, :cond_52

    sub-int/2addr p3, v4

    aget-byte p1, p1, p3

    if-ne p1, v6, :cond_51

    const/4 v2, 0x2

    goto :goto_52

    :cond_51
    const/4 v2, 0x1

    :cond_52
    :goto_52
    if-nez v2, :cond_5a

    and-int/lit8 p1, v1, 0x3

    if-eqz p1, :cond_5a

    rsub-int/lit8 v2, p1, 0x4

    :cond_5a
    add-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public decode([B[B)I
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->outLength([BII)I

    move-result v0

    array-length v2, p2

    if-lt v2, v0, :cond_f

    array-length v0, p1

    invoke-direct {p0, p1, v1, v0, p2}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->decode0([BII[B)I

    move-result p1

    return p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output byte array is too small for decoding all input bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_33

    :cond_29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    :goto_33
    invoke-direct {p0, v1, v3, v4}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->outLength([BII)I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {p0, v1, v3, v4, v5}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    invoke-static {v5, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_41} :catch_42

    return-object p1

    :catch_42
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
.end method

.method public decode(Ljava/lang/String;)[B
    .registers 3

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->decode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public decode([B)[B
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->outLength([BII)I

    move-result v0

    new-array v2, v0, [B

    array-length v3, p1

    invoke-direct {p0, p1, v1, v3, v2}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->decode0([BII[B)I

    move-result p1

    if-eq p1, v0, :cond_13

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    :cond_13
    return-object v2
.end method

.method public wrap(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;

    iget-boolean v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->isURL:Z

    if-eqz v1, :cond_c

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64_URL:[I

    goto :goto_e

    :cond_c
    sget-object v1, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->FROM_BASE_64:[I

    :goto_e
    iget-boolean v2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->isMIME:Z

    invoke-direct {v0, p1, v1, v2}, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;-><init>(Ljava/io/InputStream;[IZ)V

    return-object v0
.end method

###### Class io.didomi.iabtcf.decoder.utils.Base64.EncOutputStream (io.didomi.iabtcf.decoder.utils.Base64$EncOutputStream)
.class Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncOutputStream"
.end annotation


# instance fields
.field private b0:I

.field private b1:I

.field private b2:I

.field private final base64:[C

.field private closed:Z

.field private final doPadding:Z

.field private leftover:I

.field private final linemax:I

.field private linepos:I

.field private final newline:[B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;[C[BIZ)V
    .registers 6

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->leftover:I

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->closed:Z

    iput p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->linepos:I

    iput-object p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    iput-object p3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->newline:[B

    iput p4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->linemax:I

    iput-boolean p5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->doPadding:Z

    return-void
.end method

.method private checkNewline()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->linepos:I

    iget v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->linemax:I

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->linepos:I

    :cond_10
    return-void
.end method


# virtual methods
.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_81

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->closed:Z

    iget v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->leftover:I

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-ne v1, v0, :cond_3c

    invoke-direct {p0}, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->checkNewline()V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v3, v4, 0x2

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    iget v3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_79

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_79

    :cond_3c
    if-ne v1, v3, :cond_79

    invoke-direct {p0}, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->checkNewline()V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b0:I

    shr-int/2addr v4, v3

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b1:I

    shl-int/lit8 v3, v4, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_79

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_79
    :goto_79
    const/4 v0, 0x0

    iput v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->leftover:I

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_81
    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_100

    if-ltz p2, :cond_fa

    if-ltz p3, :cond_fa

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_fa

    if-nez p3, :cond_10

    return-void

    :cond_10
    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->leftover:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_7d

    if-ne v0, v2, :cond_29

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b1:I

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_28

    add-int/2addr v0, v2

    iput v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->leftover:I

    return-void

    :cond_28
    move p2, v3

    :cond_29
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b2:I

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p0}, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->checkNewline()V

    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b0:I

    shr-int/2addr v4, v1

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b1:I

    shl-int/2addr v4, v1

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b2:I

    shr-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b2:I

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    iget p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->linepos:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->linepos:I

    move p2, v0

    :cond_7d
    div-int/lit8 v0, p3, 0x3

    mul-int/lit8 v3, v0, 0x3

    sub-int/2addr p3, v3

    iput p3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->leftover:I

    :goto_84
    add-int/lit8 p3, v0, -0x1

    if-lez v0, :cond_de

    invoke-direct {p0}, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->checkNewline()V

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr p2, v3

    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v5, p2, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v5, p2, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v5, p2, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->base64:[C

    and-int/lit8 p2, p2, 0x3f

    aget-char p2, v4, p2

    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write(I)V

    iget p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->linepos:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->linepos:I

    move p2, v0

    move v0, p3

    goto :goto_84

    :cond_de
    iget p3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->leftover:I

    if-ne p3, v2, :cond_e9

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b0:I

    goto :goto_f9

    :cond_e9
    if-ne p3, v1, :cond_f9

    add-int/lit8 p3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b0:I

    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;->b1:I

    :cond_f9
    :goto_f9
    return-void

    :cond_fa
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_100
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.didomi.iabtcf.decoder.utils.Base64.Encoder (io.didomi.iabtcf.decoder.utils.Base64$Encoder)
.class public Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# static fields
.field private static final CRLF:[B

.field private static final MIMELINEMAX:I = 0x4c

.field static final RFC2045:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

.field static final RFC4648:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

.field static final RFC4648_URLSAFE:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

.field private static final TO_BASE_64:[C

.field private static final TO_BASE_64_URL:[C


# instance fields
.field private final doPadding:Z

.field private final isURL:Z

.field private final linemax:I

.field private final newline:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x40

    new-array v1, v0, [C

    fill-array-data v1, :array_34

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->TO_BASE_64:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_78

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->TO_BASE_64_URL:[C

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_bc

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->CRLF:[B

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->RFC4648:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    invoke-direct {v1, v5, v3, v4, v5}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->RFC4648_URLSAFE:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    const/16 v3, 0x4c

    invoke-direct {v1, v2, v0, v3, v5}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->RFC2045:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    return-void

    :array_34
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_78
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data

    :array_bc
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->isURL:Z

    iput-object p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->newline:[B

    iput p3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->linemax:I

    iput-boolean p4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->doPadding:Z

    return-void
.end method

.method synthetic constructor <init>(Z[BIZLio/didomi/iabtcf/decoder/utils/Base64$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;-><init>(Z[BIZ)V

    return-void
.end method

.method static synthetic access$200()[C
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->TO_BASE_64:[C

    return-object v0
.end method

.method static synthetic access$300()[C
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->TO_BASE_64_URL:[C

    return-object v0
.end method

.method private encode0([BII[B)I
    .registers 16

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->isURL:Z

    if-eqz v0, :cond_7

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->TO_BASE_64_URL:[C

    goto :goto_9

    :cond_7
    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->TO_BASE_64:[C

    :goto_9
    sub-int v1, p3, p2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int v2, p2, v1

    iget v3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->linemax:I

    if-lez v3, :cond_1f

    div-int/lit8 v4, v3, 0x4

    mul-int/lit8 v4, v4, 0x3

    if-le v1, v4, :cond_1f

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v1, v3, 0x3

    :cond_1f
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_21
    if-ge p2, v2, :cond_90

    add-int v5, p2, v1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, p2

    move v7, v4

    :goto_2b
    if-ge v6, v5, :cond_71

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v6, v9

    add-int/lit8 v9, v7, 0x1

    ushr-int/lit8 v10, v6, 0x12

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, p4, v7

    add-int/lit8 v7, v9, 0x1

    ushr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, p4, v9

    add-int/lit8 v9, v7, 0x1

    ushr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, p4, v7

    add-int/lit8 v7, v9, 0x1

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v0, v6

    int-to-byte v6, v6

    aput-byte v6, p4, v9

    move v6, v8

    goto :goto_2b

    :cond_71
    sub-int p2, v5, p2

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr v4, p2

    iget v6, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->linemax:I

    if-ne p2, v6, :cond_8e

    if-ge v5, p3, :cond_8e

    iget-object p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->newline:[B

    array-length v6, p2

    const/4 v7, 0x0

    :goto_82
    if-ge v7, v6, :cond_8e

    aget-byte v8, p2, v7

    add-int/lit8 v9, v4, 0x1

    aput-byte v8, p4, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_82

    :cond_8e
    move p2, v5

    goto :goto_21

    :cond_90
    if-ge p2, p3, :cond_e3

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v3, p2, 0x2

    aget-char v3, v0, v3

    int-to-byte v3, v3

    aput-byte v3, p4, v4

    const/16 v3, 0x3d

    if-ne v1, p3, :cond_bd

    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 p1, p2, 0x4

    and-int/lit8 p1, p1, 0x3f

    aget-char p1, v0, p1

    int-to-byte p1, p1

    aput-byte p1, p4, v2

    iget-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->doPadding:Z

    if-eqz p1, :cond_e3

    add-int/lit8 p1, v4, 0x1

    aput-byte v3, p4, v4

    add-int/lit8 v4, p1, 0x1

    aput-byte v3, p4, p1

    goto :goto_e3

    :cond_bd
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p3, v2, 0x1

    shl-int/lit8 p2, p2, 0x4

    and-int/lit8 p2, p2, 0x3f

    shr-int/lit8 v1, p1, 0x4

    or-int/2addr p2, v1

    aget-char p2, v0, p2

    int-to-byte p2, p2

    aput-byte p2, p4, v2

    add-int/lit8 v4, p3, 0x1

    shl-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0x3f

    aget-char p1, v0, p1

    int-to-byte p1, p1

    aput-byte p1, p4, p3

    iget-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->doPadding:Z

    if-eqz p1, :cond_e3

    add-int/lit8 p1, v4, 0x1

    aput-byte v3, p4, v4

    move v4, p1

    :cond_e3
    :goto_e3
    return v4
.end method

.method private final outLength(I)I
    .registers 4

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->doPadding:Z

    if-eqz v0, :cond_b

    add-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    goto :goto_18

    :cond_b
    rem-int/lit8 v0, p1, 0x3

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_17

    :cond_15
    add-int/lit8 v0, v0, 0x1

    :goto_17
    add-int/2addr p1, v0

    :goto_18
    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->linemax:I

    if-lez v0, :cond_25

    add-int/lit8 v1, p1, -0x1

    div-int/2addr v1, v0

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->newline:[B

    array-length v0, v0

    mul-int v1, v1, v0

    add-int/2addr p1, v1

    :cond_25
    return p1
.end method


# virtual methods
.method public encode([B[B)I
    .registers 5

    array-length v0, p1

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->outLength(I)I

    move-result v0

    array-length v1, p2

    if-lt v1, v0, :cond_f

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->encode0([BII[B)I

    move-result p1

    return p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output byte array is too small for encoding all input bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->outLength(I)I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v2, v3, v4, v1}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_40

    :cond_32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    invoke-direct {p0, v3, p1, v2, v1}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    :goto_40
    if-eq v2, v0, :cond_46

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_46
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public encode([B)[B
    .registers 6

    array-length v0, p1

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->outLength(I)I

    move-result v0

    new-array v1, v0, [B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, v1}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->encode0([BII[B)I

    move-result p1

    if-eq p1, v0, :cond_14

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    :cond_14
    return-object v1
.end method

.method public encodeToString([B)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->encode([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v2, v1}, Ljava/lang/String;-><init>([BIII)V

    return-object v0
.end method

.method public withoutPadding()Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
    .registers 6

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->doPadding:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    iget-boolean v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->isURL:Z

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->newline:[B

    iget v3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->linemax:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;-><init>(Z[BIZ)V

    return-object v0
.end method

.method public wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 9

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->isURL:Z

    if-eqz v0, :cond_c

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->TO_BASE_64_URL:[C

    goto :goto_e

    :cond_c
    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->TO_BASE_64:[C

    :goto_e
    move-object v2, v0

    iget-object v3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->newline:[B

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->linemax:I

    iget-boolean v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->doPadding:Z

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;-><init>(Ljava/io/OutputStream;[C[BIZ)V

    return-object v6
.end method
