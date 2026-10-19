###### Class com.facebook.ads.redexgen.X.C3E (com.facebook.ads.redexgen.X.3E)
.class public abstract Lcom/facebook/ads/redexgen/X/3E;
.super Lcom/facebook/ads/redexgen/X/Dl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/mediacodec/MediaCodecRenderer$AdaptationWorkaroundMode;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/mediacodec/MediaCodecRenderer$ReinitializationState;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/mediacodec/MediaCodecRenderer$ReconfigurationState;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/mediacodec/MediaCodecRenderer$KeepCodecResult;,
        Lcom/facebook/ads/redexgen/X/D0;
    }
.end annotation


# static fields
.field public static A0d:[B

.field public static A0e:[Ljava/lang/String;

.field public static final A0f:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:Landroid/media/MediaCodec;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A08:Lcom/facebook/ads/redexgen/X/BJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BJ<",
            "Lcom/facebook/ads/redexgen/X/X6;",
            ">;"
        }
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/redexgen/X/BJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BJ<",
            "Lcom/facebook/ads/redexgen/X/X6;",
            ">;"
        }
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/Cy;

.field public A0B:Ljava/nio/ByteBuffer;

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:Z

.field public A0O:Z

.field public A0P:Z

.field public A0Q:Z

.field public A0R:Z

.field public A0S:[Ljava/nio/ByteBuffer;

.field public A0T:[Ljava/nio/ByteBuffer;

.field public A0U:Lcom/facebook/ads/redexgen/X/Au;

.field public final A0V:Landroid/media/MediaCodec$BufferInfo;

.field public final A0W:Lcom/facebook/ads/redexgen/X/9X;

.field public final A0X:Lcom/facebook/ads/redexgen/X/XE;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/XE;

.field public final A0Z:Lcom/facebook/ads/redexgen/X/BK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BK<",
            "Lcom/facebook/ads/redexgen/X/X6;",
            ">;"
        }
    .end annotation
.end field

.field public final A0a:Lcom/facebook/ads/redexgen/X/D4;

.field public final A0b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final A0c:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "el1NIdjJdnQk8rQ7yI3DLJMJGUNGpsaL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cMnDkAErKs2M6cVzDcwdPqTaRDuVL2G6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3Ljz1yFix4teFI07gFBJ1ZVJZ4Elk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rfweshkfyu7YGNu9gmTN5aJbUxr0jD44"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UwDJ5OwzyxxJZbvw2og9SG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kELoxR7DFwuexd5ZjpenISH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LMGopoJZLCWwOw1IQPtLBjMdbqq8sxxW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3E;->A0j()V

    const/16 v2, 0x3b

    const/16 v1, 0x4c

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0h(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3E;->A0f:[B

    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/BK;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/D4;",
            "Lcom/facebook/ads/redexgen/X/BK<",
            "Lcom/facebook/ads/redexgen/X/X6;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dl;-><init>(I)V

    sget v2, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-lt v2, v0, :cond_41

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D4;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0a:Lcom/facebook/ads/redexgen/X/D4;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/3E;->A0c:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/XE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/XE;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XE;->A02()Lcom/facebook/ads/redexgen/X/XE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Y:Lcom/facebook/ads/redexgen/X/XE;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9X;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9X;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0W:Lcom/facebook/ads/redexgen/X/9X;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0b:Ljava/util/List;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A02:I

    return-void

    :cond_41
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private A0W(Ljava/lang/String;)I
    .registers 6

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x19

    if-gt v1, v0, :cond_5c

    const/16 v2, 0x107

    const/16 v1, 0x19

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    const/16 v2, 0x271

    const/4 v1, 0x7

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    const/16 v2, 0x255

    const/4 v1, 0x7

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    const/16 v2, 0x25c

    const/4 v1, 0x7

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    const/16 v2, 0x26a

    const/4 v1, 0x7

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_5a
    const/4 v0, 0x2

    return v0

    :cond_5c
    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_ca

    const/16 v2, 0x152

    const/16 v1, 0x16

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const/16 v2, 0x168

    const/16 v1, 0x1d

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_82
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x2ab

    const/16 v1, 0x8

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x2b3

    const/16 v1, 0xc

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x2bf

    const/4 v1, 0x7

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x2dc

    const/4 v1, 0x7

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_c8
    const/4 v0, 0x1

    return v0

    :cond_ca
    const/4 v0, 0x0

    return v0
.end method

.method private final A0X()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static A0Y(Lcom/facebook/ads/redexgen/X/XE;I)Landroid/media/MediaCodec$CryptoInfo;
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XE;->A02:Lcom/facebook/ads/redexgen/X/As;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/As;->A02()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    if-nez p1, :cond_9

    return-object p0

    :cond_9
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_12
    iget-object v5, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v4, 0x0

    aget v3, v5, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_33

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "NOzrMPRB76F8DdbUb3OPVPb4rTNpEGvY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "IDmZDsJhwqXuUzopfYWLVElAjmr2DtdU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/2addr v3, p1

    aput v3, v5, v4

    return-object p0

    :cond_33
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0Z(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0d:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_9
    array-length v0, p1

    if-ge p0, v0, :cond_31

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v3, v0, 0x39

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2b

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "GT4OiQXgMfCUtJ1QRZ1mZZkQ0KPtv7dD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0a(I)Ljava/nio/ByteBuffer;
    .registers 6

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0S:[Ljava/nio/ByteBuffer;

    aget-object v3, v0, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_30

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "akmimywpCQzy2zgGqC6e1Zi0HtFx9MqZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "4g16x1WFaX1F1Ai56lyJAgpz1Kjl0dDQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0b(I)Ljava/nio/ByteBuffer;
    .registers 4

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0T:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private A0c()V
    .registers 5

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0S:[Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2b

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "BQUwUvW99pDNY9ExELsrhPAvhUrne6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0T:[Ljava/nio/ByteBuffer;

    :cond_2a
    return-void

    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0d()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_c

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1G()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1I()V

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0N:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1H()V

    goto :goto_b
.end method

.method private A0e()V
    .registers 3

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0T:[Ljava/nio/ByteBuffer;

    :cond_e
    return-void
.end method

.method private A0f()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A00:I

    const/4 v5, 0x1

    if-eqz v0, :cond_2e

    const/16 v2, 0x2e3

    const/4 v1, 0x5

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2e

    const/16 v2, 0x2cc

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2e

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/3E;->A0O:Z

    return-void

    :cond_2e
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0I:Z

    if-eqz v0, :cond_3f

    const/16 v2, 0x278

    const/16 v1, 0xd

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/3E;->A1K(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private A0g()V
    .registers 3

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_b

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0S:[Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0T:[Ljava/nio/ByteBuffer;

    :cond_b
    return-void
.end method

.method private A0h()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A03:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/XE;->A01:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private A0i()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A04:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0B:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static A0j()V
    .registers 1

    const/16 v0, 0x2e8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/3E;->A0d:[B

    return-void

    :array_a
    .array-data 1
        0x55t
        0x59t
        0x1bt
        0xct
        0xdt
        0x59t
        0x17t
        0x16t
        0x59t
        0xat
        0x1ct
        0x1at
        0xct
        0xbt
        0x1ct
        0x59t
        0x1dt
        0x1ct
        0x1at
        0x16t
        0x1dt
        0x1ct
        0xbt
        0x59t
        0x18t
        0xft
        0x18t
        0x10t
        0x15t
        0x18t
        0x1bt
        0x15t
        0x1ct
        0x57t
        0x59t
        0x2dt
        0xbt
        0x0t
        0x10t
        0x17t
        0x1et
        0x59t
        0xdt
        0x16t
        0x59t
        0x9t
        0xbt
        0x16t
        0x1at
        0x1ct
        0x1ct
        0x1dt
        0x59t
        0xet
        0x10t
        0xdt
        0x11t
        0x59t
        0x13t
        0x6at
        0x6at
        0x6at
        0x6at
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x68t
        0x19t
        0x6at
        0x6at
        0x18t
        0x1et
        0x1bt
        0x68t
        0x6ft
        0x63t
        0x6at
        0x6at
        0x6at
        0x6at
        0x6at
        0x6at
        0x6bt
        0x6ct
        0x62t
        0x19t
        0x1ft
        0x6at
        0x1ct
        0x6bt
        0x69t
        0x68t
        0x6at
        0x6at
        0x6at
        0x6at
        0x6at
        0x6at
        0x6bt
        0x6ct
        0x6ft
        0x62t
        0x62t
        0x62t
        0x6et
        0x6at
        0x1et
        0x19t
        0x1ft
        0x6dt
        0x6bt
        0x6bt
        0x62t
        0x1bt
        0x6at
        0x6at
        0x6at
        0x68t
        0x1ct
        0x18t
        0x1ct
        0x6bt
        0x19t
        0x69t
        0x6bt
        0x19t
        0x69t
        0x68t
        0x6dt
        0x6ft
        0x1et
        0x6dt
        0x62t
        0x6bt
        0x6ct
        0x7et
        0x68t
        0x3t
        0x4t
        0x16t
        0xft
        0x58t
        0x5ft
        0x4dt
        0x4at
        0x17t
        0x3bt
        0x37t
        0x2ct
        0x39t
        0x38t
        0x0t
        0x36t
        0x29t
        0x64t
        0x37t
        0x21t
        0x37t
        0x37t
        0x2dt
        0x2bt
        0x2at
        0x64t
        0x36t
        0x21t
        0x35t
        0x31t
        0x2dt
        0x36t
        0x21t
        0x37t
        0x64t
        0x37t
        0x21t
        0x27t
        0x31t
        0x36t
        0x21t
        0x64t
        0x20t
        0x21t
        0x27t
        0x2bt
        0x20t
        0x21t
        0x36t
        0x64t
        0x22t
        0x2bt
        0x36t
        0x64t
        0x47t
        0x6ft
        0x6et
        0x63t
        0x6bt
        0x2at
        0x78t
        0x6ft
        0x7bt
        0x7ft
        0x63t
        0x78t
        0x6ft
        0x79t
        0x2at
        0x6bt
        0x2at
        0x4et
        0x78t
        0x67t
        0x59t
        0x6ft
        0x79t
        0x79t
        0x63t
        0x65t
        0x64t
        0x47t
        0x6bt
        0x64t
        0x6bt
        0x6dt
        0x6ft
        0x78t
        0x22t
        0xat
        0xbt
        0x6t
        0xet
        0x2ct
        0x0t
        0xbt
        0xat
        0xct
        0x3dt
        0xat
        0x1t
        0xbt
        0xat
        0x1dt
        0xat
        0x1dt
        0x2at
        0x28t
        0x3dt
        0x4bt
        0x20t
        0x1dt
        0x1ct
        0xbt
        0xat
        0x16t
        0x4bt
        0x4t
        0x13t
        0x6t
        0x4bt
        0x1t
        0x0t
        0x6t
        0x50t
        0x52t
        0x47t
        0x31t
        0x5at
        0x67t
        0x66t
        0x71t
        0x70t
        0x6ct
        0x31t
        0x7et
        0x69t
        0x7ct
        0x31t
        0x7bt
        0x7at
        0x7ct
        0x31t
        0x6ct
        0x7at
        0x7ct
        0x6at
        0x6dt
        0x7at
        0x24t
        0x26t
        0x33t
        0x45t
        0x26t
        0x3ft
        0x20t
        0x45t
        0x2at
        0x3et
        0x2ft
        0x22t
        0x24t
        0x45t
        0x2ft
        0x2et
        0x28t
        0x24t
        0x2ft
        0x2et
        0x39t
        0x45t
        0x26t
        0x3bt
        0x58t
        0x3ft
        0x3dt
        0x28t
        0x5et
        0x3dt
        0x24t
        0x3bt
        0x5et
        0x26t
        0x39t
        0x34t
        0x35t
        0x3ft
        0x5et
        0x34t
        0x35t
        0x33t
        0x3ft
        0x34t
        0x35t
        0x22t
        0x5et
        0x31t
        0x26t
        0x33t
        0xet
        0xct
        0x19t
        0x6ft
        0xft
        0x37t
        0x28t
        0x25t
        0x28t
        0x20t
        0x6ft
        0x29t
        0x73t
        0x77t
        0x75t
        0x6ft
        0x25t
        0x24t
        0x22t
        0x2et
        0x25t
        0x24t
        0x4t
        0x6t
        0x13t
        0x65t
        0x5t
        0x3dt
        0x22t
        0x2ft
        0x22t
        0x2at
        0x65t
        0x23t
        0x79t
        0x7dt
        0x7ft
        0x65t
        0x2ft
        0x2et
        0x28t
        0x24t
        0x2ft
        0x2et
        0x65t
        0x38t
        0x2et
        0x28t
        0x3et
        0x39t
        0x2et
        0x4t
        0x6t
        0x13t
        0x65t
        0x18t
        0xet
        0x8t
        0x65t
        0x2at
        0x3dt
        0x28t
        0x65t
        0x2ft
        0x2et
        0x28t
        0x4bt
        0x49t
        0x5ct
        0x2at
        0x57t
        0x41t
        0x47t
        0x2at
        0x65t
        0x72t
        0x67t
        0x2at
        0x60t
        0x61t
        0x67t
        0x2at
        0x77t
        0x61t
        0x67t
        0x71t
        0x76t
        0x61t
        0x6et
        0x6ct
        0x79t
        0xft
        0x40t
        0x4dt
        0x4dt
        0x56t
        0x48t
        0x4ft
        0x4ft
        0x44t
        0x53t
        0xft
        0x57t
        0x48t
        0x45t
        0x44t
        0x4et
        0xft
        0x45t
        0x44t
        0x42t
        0x4et
        0x45t
        0x44t
        0x53t
        0xft
        0x40t
        0x57t
        0x42t
        0x57t
        0x55t
        0x40t
        0x36t
        0x79t
        0x75t
        0x74t
        0x77t
        0x7ft
        0x71t
        0x7bt
        0x36t
        0x79t
        0x6et
        0x7bt
        0x36t
        0x7ct
        0x7dt
        0x7bt
        0x77t
        0x7ct
        0x7dt
        0x6at
        0x36t
        0x79t
        0x6ft
        0x7dt
        0x6bt
        0x77t
        0x75t
        0x7dt
        0x72t
        0x70t
        0x65t
        0x13t
        0x5ct
        0x50t
        0x51t
        0x52t
        0x5at
        0x54t
        0x5et
        0x13t
        0x5ct
        0x4bt
        0x5et
        0x13t
        0x59t
        0x58t
        0x5et
        0x52t
        0x59t
        0x58t
        0x4ft
        0x13t
        0x5ct
        0x4at
        0x58t
        0x4et
        0x52t
        0x50t
        0x58t
        0x13t
        0x4et
        0x58t
        0x5et
        0x48t
        0x4ft
        0x58t
        0x7bt
        0x79t
        0x6ct
        0x1at
        0x53t
        0x5bt
        0x5bt
        0x53t
        0x58t
        0x51t
        0x1at
        0x55t
        0x55t
        0x57t
        0x1at
        0x50t
        0x51t
        0x57t
        0x5bt
        0x50t
        0x51t
        0x46t
        0x5ft
        0x5dt
        0x48t
        0x3et
        0x77t
        0x7ft
        0x7ft
        0x77t
        0x7ct
        0x75t
        0x3et
        0x66t
        0x7ft
        0x62t
        0x72t
        0x79t
        0x63t
        0x3et
        0x74t
        0x75t
        0x73t
        0x7ft
        0x74t
        0x75t
        0x62t
        0x26t
        0x24t
        0x31t
        0x47t
        0x1bt
        0x2t
        0x47t
        0x1ft
        0x0t
        0xdt
        0xct
        0x6t
        0x36t
        0xdt
        0xct
        0xat
        0x6t
        0xdt
        0xct
        0x1bt
        0x47t
        0x8t
        0x1ft
        0xat
        0x39t
        0x27t
        0x47t
        0x2bt
        0x5ft
        0x5bt
        0x5at
        0xbt
        0x15t
        0x75t
        0x19t
        0x6dt
        0x6at
        0x68t
        0x69t
        0x77t
        0x17t
        0x7dt
        0x2t
        0xat
        0xat
        0x5at
        0x44t
        0x24t
        0x43t
        0x3et
        0x39t
        0x39t
        0x4ct
        0x52t
        0x32t
        0x4bt
        0x2at
        0x27t
        0x2at
        0xbt
        0x0t
        0x9t
        0x6t
        0x6t
        0xdt
        0x4t
        0x45t
        0xbt
        0x7t
        0x1dt
        0x6t
        0x1ct
        0x4t
        0x8t
        0x9t
        0x1t
        0xet
        0x0t
        0x12t
        0x15t
        0x2t
        0x24t
        0x8t
        0x3t
        0x2t
        0x4t
        0x7dt
        0x6ct
        0x7bt
        0x7ft
        0x6at
        0x7bt
        0x5dt
        0x71t
        0x7at
        0x7bt
        0x7dt
        0x24t
        0x1ct
        0xat
        0x19t
        0x11t
        0x16t
        0x39t
        0x16t
        0x1ct
        0x3et
        0x1dt
        0x1dt
        0x1ct
        0x39t
        0x33t
        0x30t
        0x2at
        0x31t
        0x3bt
        0x3at
        0x2dt
        0x6at
        0x60t
        0x63t
        0x79t
        0x62t
        0x68t
        0x69t
        0x7et
        0x53t
        0x60t
        0x78t
        0x69t
        0x1t
        0x14t
        0x9t
        0x13t
        0x16t
        0x3t
        0x14t
        0x40t
        0x4at
        0x1at
        0x18t
        0x18t
        0x18t
        0x3et
        0x33t
        0x3ft
        0x31t
        0x3et
        0x22t
        0x7dt
        0x7at
        0x6ft
        0x7ct
        0x7at
        0x4dt
        0x61t
        0x6at
        0x6bt
        0x6dt
        0x42t
        0x5ft
        0x5at
        0x57t
        0x46t
        0x5ft
        0x57t
        0x33t
        0x2dt
        0x20t
        0x30t
        0x2ct
    .end array-data
.end method

.method private A0k(Lcom/facebook/ads/redexgen/X/D0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0
.end method

.method private A0l()Z
    .registers 5

    const/16 v2, 0x93

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    const/16 v2, 0x8b

    const/4 v1, 0x4

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    const/16 v2, 0x87

    const/4 v1, 0x4

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_33
    const/4 v0, 0x1

    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private A0m()Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    move-object v0, p0

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v5, :cond_f

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A02:I

    const/4 v6, 0x2

    if-eq v1, v6, :cond_f

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A0M:Z

    if-eqz v1, :cond_10

    :cond_f
    return v2

    :cond_10
    iget v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A03:I

    if-gez v1, :cond_2c

    const-wide/16 v3, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A03:I

    if-gez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3E;->A0a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/XE;->A01:Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/XE;->A07()V

    :cond_2c
    iget v7, v0, Lcom/facebook/ads/redexgen/X/3E;->A02:I

    const/4 v1, 0x1

    sget-object v4, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x1

    if-eq v4, v3, :cond_238

    sget-object v5, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v4, "BGv06lkWwG6z0hSmECPMwAj0xiUhKKMm"

    const/4 v3, 0x0

    aput-object v4, v5, v3

    if-ne v7, v1, :cond_5d

    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0G:Z

    if-eqz v3, :cond_4b

    :goto_48
    iput v6, v0, Lcom/facebook/ads/redexgen/X/3E;->A02:I

    return v2

    :cond_4b
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A0K:Z

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/3E;->A03:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x4

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0h()V

    goto :goto_48

    :cond_5d
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0C:Z

    if-eqz v3, :cond_7e

    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/3E;->A0C:Z

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/XE;->A01:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0f:[B

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3E;->A03:I

    const/4 v5, 0x0

    array-length v6, v2

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0h()V

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A0J:Z

    return v1

    :cond_7e
    const/4 v5, 0x0

    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0R:Z

    if-eqz v3, :cond_9b

    const/4 v8, -0x4

    sget-object v4, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x1

    if-eq v4, v3, :cond_232

    sget-object v7, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v4, "cWcFMDoxN8Aku4bywP95fMqNRICNv17K"

    const/4 v3, 0x0

    aput-object v4, v7, v3

    :goto_97
    const/4 v3, -0x3

    if-ne v8, v3, :cond_fd

    return v2

    :cond_9b
    iget v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    if-ne v3, v1, :cond_c0

    const/4 v5, 0x0

    :goto_a0
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v3, v3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0P:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_be

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v3, v3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0P:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/XE;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    :cond_be
    iput v6, v0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    :cond_c0
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/XE;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/3E;->A0W:Lcom/facebook/ads/redexgen/X/9X;

    sget-object v4, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x14

    if-eq v4, v3, :cond_ea

    sget-object v7, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v4, "GMhmsEJxFGP4UGYwyrNMJ7ABPSyH92Wb"

    const/4 v3, 0x7

    aput-object v4, v7, v3

    const-string v4, "9vGc1NAfm636mRfTzlbxXXygjN4bGT7w"

    const/4 v3, 0x3

    aput-object v4, v7, v3

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v0, v8, v3, v2}, Lcom/facebook/ads/redexgen/X/Dl;->A10(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;Z)I

    move-result v8

    goto :goto_97

    :cond_ea
    sget-object v7, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v4, "jZbWd1eO6yZY8R9xWwlVER"

    const/4 v3, 0x4

    aput-object v4, v7, v3

    const-string v4, "QWk96bCMj56V6fYDRZTqXno"

    const/4 v3, 0x6

    aput-object v4, v7, v3

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v0, v8, v3, v2}, Lcom/facebook/ads/redexgen/X/Dl;->A10(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;Z)I

    move-result v8

    goto :goto_97

    :cond_fd
    const/4 v3, -0x5

    if-ne v8, v3, :cond_113

    iget v2, v0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    if-ne v2, v6, :cond_10b

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/XE;->A07()V

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    :cond_10b
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3E;->A0W:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3E;->A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    return v1

    :cond_113
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v3

    if-eqz v3, :cond_16a

    iget v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    if-ne v3, v6, :cond_126

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/XE;->A07()V

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    :cond_126
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A0M:Z

    iget-boolean v6, v0, Lcom/facebook/ads/redexgen/X/3E;->A0J:Z

    sget-object v4, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, v4, v3

    const/16 v3, 0x12

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x77

    if-eq v4, v3, :cond_13f

    if-nez v6, :cond_149

    :goto_13b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0d()V

    return v2

    :cond_13f
    sget-object v5, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v4, "IK13ew4"

    const/4 v3, 0x5

    aput-object v4, v5, v3

    if-nez v6, :cond_149

    goto :goto_13b

    :cond_149
    :try_start_149
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0G:Z

    if-eqz v3, :cond_14e

    goto :goto_15f

    :cond_14e
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A0K:Z

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3E;->A03:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0h()V

    :goto_15f
    return v2
    :try_end_160
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_149 .. :try_end_160} :catch_160

    :catch_160
    move-exception v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0

    :cond_16a
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0Q:Z

    if-eqz v3, :cond_1ab

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    sget-object v4, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v4, v3

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x73

    if-eq v4, v3, :cond_198

    sget-object v7, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v4, "ywBWkcBFyHyOTxmikBGNQ7ElC4JSn47y"

    const/4 v3, 0x0

    aput-object v4, v7, v3

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Ap;->A05()Z

    move-result v3

    if-nez v3, :cond_1ab

    :goto_18c
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/XE;->A07()V

    iget v2, v0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    if-ne v2, v6, :cond_197

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    :cond_197
    return v1

    :cond_198
    sget-object v7, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v4, "uqwAh7OiLzrqYCdIK7FE27Aq9dnmjoOb"

    const/4 v3, 0x7

    aput-object v4, v7, v3

    const-string v4, "CGhJEeUUTBGplB6hh3d6N38sXeZGKtI8"

    const/4 v3, 0x3

    aput-object v4, v7, v3

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Ap;->A05()Z

    move-result v3

    if-nez v3, :cond_1ab

    goto :goto_18c

    :cond_1ab
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/3E;->A0Q:Z

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/XE;->A0A()Z

    move-result v6

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/3E;->A0w(Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0R:Z

    if-eqz v3, :cond_1bc

    return v2

    :cond_1bc
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0D:Z

    if-eqz v3, :cond_1d6

    if-nez v6, :cond_1d6

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/XE;->A01:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hd;->A0A(Ljava/nio/ByteBuffer;)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/XE;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_1d4

    return v1

    :cond_1d4
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/3E;->A0D:Z

    :cond_1d6
    :try_start_1d6
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ap;->A03()Z

    move-result v3

    if-eqz v3, :cond_1eb

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/3E;->A0b:Ljava/util/List;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1eb
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/XE;->A08()V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3E;->A1M(Lcom/facebook/ads/redexgen/X/XE;)V

    if-eqz v6, :cond_1f8

    goto :goto_20a

    :cond_1f8
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3E;->A03:I

    const/4 v6, 0x0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/XE;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_219

    :goto_20a
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3E;->A0X:Lcom/facebook/ads/redexgen/X/XE;

    invoke-static {v3, v5}, Lcom/facebook/ads/redexgen/X/3E;->A0Y(Lcom/facebook/ads/redexgen/X/XE;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v7

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3E;->A03:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    :goto_219
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0h()V

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3E;->A0J:Z

    iput v2, v0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Au;->A04:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Au;->A04:I

    return v1
    :try_end_228
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1d6 .. :try_end_228} :catch_228

    :catch_228
    move-exception v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0

    :cond_232
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_238
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0n()Z
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A04:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private A0o(J)Z
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v4, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_36

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_36
    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "GAQPkPxILqrNxqRn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x1

    return v0

    :cond_3f
    const/4 v0, 0x0

    return v0
.end method

.method private A0p(JJ)Z
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    move-object/from16 v5, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A0n()Z

    move-result v0

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11c

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0F:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0K:Z

    if-eqz v0, :cond_2a

    :try_start_12
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A0X()J

    move-result-wide v0

    invoke-virtual {v4, v3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    goto :goto_36
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_1f} :catch_1f

    :catch_1f
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A0d()V

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0N:Z

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A1G()V

    :cond_29
    return v2

    :cond_2a
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A0X()J

    move-result-wide v0

    invoke-virtual {v4, v3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    :goto_36
    if-ltz v6, :cond_56

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0O:Z

    if-eqz v0, :cond_44

    iput-boolean v2, v5, Lcom/facebook/ads/redexgen/X/3E;->A0O:Z

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, v6, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v7

    :cond_44
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_db

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_db

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A0d()V

    return v2

    :cond_56
    const/4 v4, -0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_18a

    sget-object v3, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "HT1pBWWLOYy8PEf8scwcSavywhmMK5P3"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    if-ne v6, v4, :cond_8b

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A0f()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8a

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "todLl0dSZi0vPTtgICo1ottwNzErViL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v7

    :cond_8a
    return v7

    :cond_8b
    const/4 v4, -0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_d5

    sget-object v3, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "4PVEqwR"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    if-ne v6, v4, :cond_a8

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A0e()V

    return v7

    :cond_a8
    iget-boolean v4, v5, Lcom/facebook/ads/redexgen/X/3E;->A0G:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_cf

    sget-object v3, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "oPTnjsm2EBoNSW7B2QwBvulptlCCgQiW"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    if-eqz v4, :cond_ce

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0M:Z

    if-nez v0, :cond_cb

    iget v1, v5, Lcom/facebook/ads/redexgen/X/3E;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_ce

    :cond_cb
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A0d()V

    :cond_ce
    return v2

    :cond_cf
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_db
    iput v6, v5, Lcom/facebook/ads/redexgen/X/3E;->A04:I

    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/3E;->A0b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v5, Lcom/facebook/ads/redexgen/X/3E;->A0B:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_112

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/3E;->A0B:Ljava/nio/ByteBuffer;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_18a

    sget-object v3, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "FaJE2XiArfhYqeNyfkTyaQ"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const-string v1, "HvmGKe0EFE5f200jghUPQNW"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_112
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/3E;->A0o(J)Z

    move-result v0

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0P:Z

    :cond_11c
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0F:Z

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    if-eqz v0, :cond_150

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0K:Z

    if-eqz v0, :cond_150

    :try_start_128
    iget-object v13, v5, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget-object v14, v5, Lcom/facebook/ads/redexgen/X/3E;->A0B:Ljava/nio/ByteBuffer;

    iget v15, v5, Lcom/facebook/ads/redexgen/X/3E;->A04:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v3, v5, Lcom/facebook/ads/redexgen/X/3E;->A0P:Z

    move-object/from16 v8, p0

    move/from16 v16, v4

    move-wide/from16 v17, v0

    move/from16 v19, v3

    invoke-virtual/range {v8 .. v19}, Lcom/facebook/ads/redexgen/X/3E;->A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    goto :goto_16c
    :try_end_145
    .catch Ljava/lang/IllegalStateException; {:try_start_128 .. :try_end_145} :catch_145

    :catch_145
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A0d()V

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0N:Z

    if-eqz v0, :cond_14f

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A1G()V

    :cond_14f
    return v2

    :cond_150
    iget-object v13, v5, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget-object v14, v5, Lcom/facebook/ads/redexgen/X/3E;->A0B:Ljava/nio/ByteBuffer;

    iget v15, v5, Lcom/facebook/ads/redexgen/X/3E;->A04:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0P:Z

    move-object/from16 v8, p0

    move/from16 v16, v1

    move-wide/from16 v17, v3

    move/from16 v19, v0

    invoke-virtual/range {v8 .. v19}, Lcom/facebook/ads/redexgen/X/3E;->A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    :goto_16c
    if-eqz v0, :cond_189

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/3E;->A1J(J)V

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3E;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_184

    const/4 v0, 0x1

    :goto_17e
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A0i()V

    if-nez v0, :cond_186

    return v7

    :cond_184
    const/4 v0, 0x0

    goto :goto_17e

    :cond_186
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3E;->A0d()V

    :cond_189
    return v2

    :cond_18a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0q(Lcom/facebook/ads/redexgen/X/Cy;)Z
    .registers 5

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Cy;->A02:Ljava/lang/String;

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x11

    if-gt v1, v0, :cond_28

    const/16 v2, 0x23d

    const/16 v1, 0x18

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const/16 v2, 0x1aa

    const/16 v1, 0x1f

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    :cond_28
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A05:Ljava/lang/String;

    const/16 v2, 0x93

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/16 v2, 0x8f

    const/4 v1, 0x4

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_6b

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "ta8dfTbq5GbSxrQo9R7BCH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "TLzt7USKw6C8aMs6TrECz9n"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A05:Z

    if-eqz v0, :cond_69

    :cond_67
    const/4 v0, 0x1

    :goto_68
    return v0

    :cond_69
    const/4 v0, 0x0

    goto :goto_68

    :cond_6b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0r(Ljava/lang/String;)Z
    .registers 5

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_16

    const/16 v2, 0x224

    const/16 v1, 0x19

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_16
    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x13

    if-gt v1, v0, :cond_4e

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x2c6

    const/4 v1, 0x6

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/16 v2, 0x1c9

    const/16 v1, 0x1f

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const/16 v2, 0x1e8

    const/16 v1, 0x26

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4c
    const/4 v0, 0x1

    :goto_4d
    return v0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method public static A0s(Ljava/lang/String;)Z
    .registers 4

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-ne v1, v0, :cond_18

    const/16 v2, 0x20e

    const/16 v1, 0x16

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static A0t(Ljava/lang/String;)Z
    .registers 5

    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_60

    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    if-ne v0, v1, :cond_2a

    const/16 v2, 0x185

    const/16 v1, 0xf

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const/16 v2, 0x194

    const/16 v1, 0x16

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    :cond_2a
    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x13

    if-ne v1, v0, :cond_62

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    const/16 v2, 0x263

    const/4 v1, 0x7

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    const/16 v2, 0xf5

    const/16 v1, 0x12

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const/16 v2, 0x107

    const/16 v1, 0x19

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_60
    const/4 v0, 0x1

    :goto_61
    return v0

    :cond_62
    const/4 v0, 0x0

    goto :goto_61
.end method

.method public static A0u(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z
    .registers 5

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_20

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v2, 0x139

    const/16 v1, 0x19

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static A0v(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z
    .registers 6

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x12

    if-gt v1, v0, :cond_1c

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1c

    const/16 v2, 0x120

    const/16 v1, 0x19

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_1b
    return v3

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method private A0w(Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0c:Z

    if-eqz v0, :cond_c

    :cond_b
    return v2

    :cond_c
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/BJ;->A7t()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_18

    const/4 v0, 0x4

    if-eq v1, v0, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2

    :cond_18
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BJ;->A6q()Lcom/facebook/ads/redexgen/X/BH;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public A12()V
    .registers 5

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    :try_start_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1G()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_40

    :try_start_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BK;->AEU(Lcom/facebook/ads/redexgen/X/BJ;)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_27

    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    if-eq v1, v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BK;->AEU(Lcom/facebook/ads/redexgen/X/BJ;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    :cond_1c
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    return-void

    :catchall_21
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    throw v0

    :catchall_27
    move-exception v2

    :try_start_28
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v1, :cond_35

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    if-eq v1, v0, :cond_35

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BK;->AEU(Lcom/facebook/ads/redexgen/X/BJ;)V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_3a

    :cond_35
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    throw v2

    :catchall_3a
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    throw v0

    :catchall_40
    move-exception v2

    :try_start_41
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v0, :cond_4c

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BK;->AEU(Lcom/facebook/ads/redexgen/X/BJ;)V
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_64

    :cond_4c
    :try_start_4c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v1, :cond_59

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    if-eq v1, v0, :cond_59

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BK;->AEU(Lcom/facebook/ads/redexgen/X/BJ;)V
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_5e

    :cond_59
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    throw v2

    :catchall_5e
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    throw v0

    :catchall_64
    move-exception v2

    :try_start_65
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v1, :cond_72

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    if-eq v1, v0, :cond_72

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BK;->AEU(Lcom/facebook/ads/redexgen/X/BJ;)V
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_77

    :cond_72
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    throw v2

    :catchall_77
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    throw v0
.end method

.method public A13()V
    .registers 1

    return-void
.end method

.method public A14()V
    .registers 1

    return-void
.end method

.method public A15(JZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0M:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0N:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1F()V

    :cond_c
    return-void
.end method

.method public A16(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    new-instance v0, Lcom/facebook/ads/redexgen/X/Au;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Au;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    return-void
.end method

.method public A1A(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public abstract A1B(Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/BK;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/D4;",
            "Lcom/facebook/ads/redexgen/X/BK<",
            "Lcom/facebook/ads/redexgen/X/X6;",
            ">;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation
.end method

.method public final A1C()Landroid/media/MediaCodec;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public final A1D()Lcom/facebook/ads/redexgen/X/Cy;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    return-object v0
.end method

.method public A1E(Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Z)Lcom/facebook/ads/redexgen/X/Cy;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation

    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lcom/facebook/ads/redexgen/X/D4;->A6f(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v0

    return-object v0
.end method

.method public A1F()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A05:J

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0h()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0i()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Q:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0R:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0P:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0C:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0O:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0H:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0E:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0K:Z

    if-eqz v0, :cond_3b

    :cond_2a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1G()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1I()V

    :goto_30
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0L:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    if-eqz v0, :cond_3a

    iput v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    :cond_3a
    return-void

    :cond_3b
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A02:I

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1G()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1I()V

    goto :goto_30

    :cond_46
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0J:Z

    goto :goto_30
.end method

.method public A1G()V
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A05:J

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0h()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0i()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0R:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0P:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0g()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0L:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0J:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0D:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0H:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A00:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0G:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0E:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0I:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0C:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0O:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0K:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_e9

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A01:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A01:I

    :try_start_43
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_96

    :try_start_48
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_62

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v1, :cond_e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    if-eq v0, v1, :cond_e9

    :try_start_57
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BK;->AEU(Lcom/facebook/ads/redexgen/X/BJ;)V

    goto/16 :goto_e7
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v0

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    throw v0

    :catchall_62
    move-exception v4

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_7c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7c
    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "xSjaYNEZ4qh1ZPx8xTwjTufaVWwElX5P"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_95

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    if-eq v0, v3, :cond_95

    :try_start_89
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/BK;->AEU(Lcom/facebook/ads/redexgen/X/BJ;)V

    goto :goto_93
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception v0

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    throw v0

    :goto_93
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    :cond_95
    throw v4

    :catchall_96
    move-exception v2

    :try_start_97
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_b3

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v1, :cond_b2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    if-eq v0, v1, :cond_b2

    :try_start_a6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BK;->AEU(Lcom/facebook/ads/redexgen/X/BJ;)V

    goto :goto_b0
    :try_end_ac
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_ac

    :catchall_ac
    move-exception v0

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    throw v0

    :goto_b0
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    :cond_b2
    throw v2

    :catchall_b3
    move-exception v5

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v4, :cond_e6

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_d1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "vD6SaWSNQpnT2etBhelIXAl4LKAzAMEb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq v3, v4, :cond_e6

    :try_start_da
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/BK;->AEU(Lcom/facebook/ads/redexgen/X/BJ;)V

    goto :goto_e4
    :try_end_e0
    .catchall {:try_start_da .. :try_end_e0} :catchall_e0

    :catchall_e0
    move-exception v0

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    throw v0

    :goto_e4
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    :cond_e6
    throw v5

    :goto_e7
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    :cond_e9
    return-void
.end method

.method public A1H()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    return-void
.end method

.method public final A1I()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    if-nez v1, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    iget-object v8, v1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1ee

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "pTVSxclXptnWdkcsOldSnbHbt080oNsP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "3A2dqVKC7anzB9bdQIqtLGHUlM9PHMrl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    const/4 v4, 0x1

    if-eqz v0, :cond_71

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BJ;->A7G()Lcom/facebook/ads/redexgen/X/BL;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/X6;

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BJ;->A6q()Lcom/facebook/ads/redexgen/X/BH;

    move-result-object v0

    if-eqz v0, :cond_70

    :goto_46
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0l()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BJ;->A7t()I

    move-result v1

    if-eq v1, v4, :cond_61

    const/4 v0, 0x4

    if-eq v1, v0, :cond_71

    return-void

    :cond_58
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/X6;->A00()Landroid/media/MediaCrypto;

    move-result-object v5

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/X6;->A01(Ljava/lang/String;)Z

    move-result v3

    goto :goto_46

    :cond_61
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BJ;->A6q()Lcom/facebook/ads/redexgen/X/BH;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0

    :cond_70
    return-void

    :cond_71
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1e8

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "oPP6wTkKkwktIyM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v6, :cond_113

    :try_start_8e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0a:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/3E;->A1E(Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Z)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    if-nez v0, :cond_101

    if-eqz v3, :cond_101

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A0a:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A1E(Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Z)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    if-eqz v0, :cond_101

    const/16 v2, 0xe3

    const/16 v1, 0x12

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x99

    const/16 v1, 0x28

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v2, 0x0

    const/16 v1, 0x3a

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cy;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x3a

    const/4 v1, 0x1

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101
    :try_end_f3
    .catch Lcom/facebook/ads/redexgen/X/D7; {:try_start_8e .. :try_end_f3} :catch_f3

    :catch_f3
    move-exception v6

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const v1, -0xc34e

    new-instance v0, Lcom/facebook/ads/redexgen/X/D0;

    invoke-direct {v0, v2, v6, v3, v1}, Lcom/facebook/ads/redexgen/X/D0;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0k(Lcom/facebook/ads/redexgen/X/D0;)V

    :cond_101
    :goto_101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    if-nez v0, :cond_113

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const/4 v2, 0x0

    const v1, -0xc34f

    new-instance v0, Lcom/facebook/ads/redexgen/X/D0;

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/D0;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0k(Lcom/facebook/ads/redexgen/X/D0;)V

    :cond_113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3E;->A1Q(Lcom/facebook/ads/redexgen/X/Cy;)Z

    move-result v0

    if-nez v0, :cond_11c

    return-void

    :cond_11c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Cy;->A02:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/3E;->A0W(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0u(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0D:Z

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/3E;->A0t(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0H:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3E;->A0q(Lcom/facebook/ads/redexgen/X/Cy;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0G:Z

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/3E;->A0r(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0E:Z

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/3E;->A0s(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0F:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0v(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0I:Z

    :try_start_150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x293

    const/16 v1, 0xc

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hu;->A02(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hu;->A00()V

    const/16 v2, 0x285

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hu;->A02(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p0, v2, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/3E;->A1N(Lcom/facebook/ads/redexgen/X/Cy;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Landroid/media/MediaCrypto;)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hu;->A00()V

    const/16 v2, 0x2d2

    const/16 v1, 0xa

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hu;->A02(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hu;->A00()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v12, v10, v7

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/3E;->A1O(Ljava/lang/String;JJ)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0c()V

    goto :goto_1c2
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_1b7} :catch_1b7

    :catch_1b7
    move-exception v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    new-instance v0, Lcom/facebook/ads/redexgen/X/D0;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/facebook/ads/redexgen/X/D0;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0k(Lcom/facebook/ads/redexgen/X/D0;)V

    :goto_1c2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A7t()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1e2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    add-long/2addr v2, v0

    :goto_1d0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A05:J

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0h()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0i()V

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Q:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A00:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A00:I

    return-void

    :cond_1e2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1d0

    :cond_1e8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1ee
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1J(J)V
    .registers 3

    return-void
.end method

.method public A1K(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    return-void
.end method

.method public A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v2, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    const/4 v1, 0x0

    if-nez v4, :cond_52

    move-object v0, v1

    :goto_a
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    if-eqz v0, :cond_4f

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    if-eqz v2, :cond_88

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BK;->A2X(Landroid/os/Looper;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/redexgen/X/BJ;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    if-ne v1, v0, :cond_33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BK;->AEU(Lcom/facebook/ads/redexgen/X/BJ;)V

    :cond_33
    :goto_33
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A08:Lcom/facebook/ads/redexgen/X/BJ;

    if-ne v1, v0, :cond_76

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    if-eqz v2, :cond_76

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0A:Lcom/facebook/ads/redexgen/X/Cy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p0, v2, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/3E;->A1A(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    packed-switch v0, :pswitch_data_a0

    :pswitch_49
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4f
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A09:Lcom/facebook/ads/redexgen/X/BJ;

    goto :goto_33

    :cond_52
    iget-object v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    goto :goto_a

    :pswitch_55
    const/4 v5, 0x1

    goto :goto_76

    :pswitch_57
    const/4 v5, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A0L:Z

    iput v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_73

    if-ne v1, v3, :cond_86

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    if-ne v1, v0, :cond_86

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    if-ne v1, v0, :cond_86

    :cond_73
    const/4 v0, 0x1

    :goto_74
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0C:Z

    :cond_76
    :goto_76
    :pswitch_76
    if-nez v5, :cond_7e

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0J:Z

    if-eqz v0, :cond_7f

    iput v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A02:I

    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1G()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1I()V

    goto :goto_7e

    :cond_86
    const/4 v0, 0x0

    goto :goto_74

    :cond_88
    const/16 v2, 0xc1

    const/16 v1, 0x22

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_76
        :pswitch_55
        :pswitch_49
        :pswitch_57
    .end packed-switch
.end method

.method public A1M(Lcom/facebook/ads/redexgen/X/XE;)V
    .registers 2

    return-void
.end method

.method public abstract A1N(Lcom/facebook/ads/redexgen/X/Cy;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation
.end method

.method public A1O(Ljava/lang/String;JJ)V
    .registers 6

    return-void
.end method

.method public abstract A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation
.end method

.method public A1Q(Lcom/facebook/ads/redexgen/X/Cy;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public A8q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0N:Z

    return v0
.end method

.method public A90()Z
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0R:Z

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A18()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0n()Z

    move-result v0

    if-nez v0, :cond_29

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A05:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A05:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_2b

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public final AEb(JJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0N:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1H()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_21

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "lwFTUI1opuqPhbxVYngJAvB4EigDaO53"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_27
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const/4 v5, -0x4

    const/4 v4, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Y:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XE;->A07()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0W:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Y:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Dl;->A10(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;Z)I

    move-result v0

    if-ne v0, v4, :cond_c8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0W:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3E;->A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    :cond_44
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1I()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_78

    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "eroLcdOpjUP85EYGmYhVy7jJ6XqjjMHN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_8b

    :goto_64
    const/16 v2, 0x29f

    const/16 v1, 0xc

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hu;->A02(Ljava/lang/String;)V

    :goto_71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/3E;->A0p(JJ)Z

    move-result v0

    if-eqz v0, :cond_84

    goto :goto_71

    :cond_78
    sget-object v2, Lcom/facebook/ads/redexgen/X/3E;->A0e:[Ljava/lang/String;

    const-string v1, "qeXDyPBokWYcVwHFGawdRvPvaKboAA5h"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_8b

    goto :goto_64

    :cond_84
    :goto_84
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0m()Z

    move-result v0

    if-eqz v0, :cond_bf

    goto :goto_84

    :cond_8b
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Au;->A07:I

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dl;->A0z(J)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Au;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Y:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XE;->A07()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A0W:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Y:Lcom/facebook/ads/redexgen/X/XE;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dl;->A10(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;Z)I

    move-result v0

    if-ne v0, v4, :cond_ae

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0W:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3E;->A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    goto :goto_c2

    :cond_ae
    if-ne v0, v5, :cond_c2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Y:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A0M:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0d()V

    goto :goto_c2

    :cond_bf
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hu;->A00()V

    :cond_c2
    :goto_c2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Au;->A00()V

    return-void

    :cond_c8
    if-ne v0, v5, :cond_d9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Y:Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3E;->A0M:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3E;->A0d()V

    return-void

    :cond_d9
    return-void
.end method

.method public final AFt(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0a:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0Z:Lcom/facebook/ads/redexgen/X/BK;

    invoke-virtual {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/3E;->A1B(Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/BK;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    return v0
    :try_end_9
    .catch Lcom/facebook/ads/redexgen/X/D7; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    move-exception v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0
.end method

.method public final AFv()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method
