###### Class io.didomi.iabtcf.encoder.BitWriter (io.didomi.iabtcf.encoder.BitWriter)
.class Lio/didomi/iabtcf/encoder/BitWriter;
.super Ljava/lang/Object;
.source "BitWriter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LONG_MASKS:[J


# instance fields
.field private bitsRemaining:I

.field private final buffer:Lio/didomi/iabtcf/encoder/OfLongIterable;

.field private pending:J

.field private precision:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x41

    new-array v0, v0, [J

    sput-object v0, Lio/didomi/iabtcf/encoder/BitWriter;->LONG_MASKS:[J

    const/4 v0, 0x0

    :goto_7
    const/16 v1, 0x40

    if-ge v0, v1, :cond_17

    sget-object v1, Lio/didomi/iabtcf/encoder/BitWriter;->LONG_MASKS:[J

    const-wide/16 v2, 0x1

    shl-long v4, v2, v0

    sub-long/2addr v4, v2

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    sget-object v0, Lio/didomi/iabtcf/encoder/BitWriter;->LONG_MASKS:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/encoder/BitWriter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/didomi/iabtcf/encoder/OfLongIterable;

    invoke-direct {v0}, Lio/didomi/iabtcf/encoder/OfLongIterable;-><init>()V

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/BitWriter;->buffer:Lio/didomi/iabtcf/encoder/OfLongIterable;

    const/16 v0, 0x40

    iput v0, p0, Lio/didomi/iabtcf/encoder/BitWriter;->bitsRemaining:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/didomi/iabtcf/encoder/BitWriter;->pending:J

    const/4 v0, 0x0

    iput v0, p0, Lio/didomi/iabtcf/encoder/BitWriter;->precision:I

    if-ltz p1, :cond_1a

    iput p1, p0, Lio/didomi/iabtcf/encoder/BitWriter;->precision:I

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "precision must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enforcePrecision()V
    .registers 2

    iget v0, p0, Lio/didomi/iabtcf/encoder/BitWriter;->precision:I

    invoke-virtual {p0, v0}, Lio/didomi/iabtcf/encoder/BitWriter;->enforcePrecision(I)V

    const/4 v0, 0x0

    iput v0, p0, Lio/didomi/iabtcf/encoder/BitWriter;->precision:I

    return-void
.end method


# virtual methods
.method protected enforcePrecision(I)V
    .registers 7

    if-gtz p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_4
    div-int/lit8 v1, p1, 0x40

    const-wide/16 v2, 0x0

    const/16 v4, 0x40

    if-ge v0, v1, :cond_12

    invoke-virtual {p0, v2, v3, v4}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    rem-int/2addr p1, v4

    invoke-virtual {p0, v2, v3, p1}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JI)V

    return-void
.end method

.method public length()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/BitWriter;->buffer:Lio/didomi/iabtcf/encoder/OfLongIterable;

    invoke-virtual {v0}, Lio/didomi/iabtcf/encoder/OfLongIterable;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x40

    iget v1, p0, Lio/didomi/iabtcf/encoder/BitWriter;->bitsRemaining:I

    rsub-int/lit8 v1, v1, 0x40

    add-int/2addr v0, v1

    iget v1, p0, Lio/didomi/iabtcf/encoder/BitWriter;->precision:I

    if-ltz v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    return v0
.end method

.method public toBase64()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Base64;->getUrlEncoder()Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->withoutPadding()Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    move-result-object v0

    invoke-virtual {p0}, Lio/didomi/iabtcf/encoder/BitWriter;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 7

    invoke-direct {p0}, Lio/didomi/iabtcf/encoder/BitWriter;->enforcePrecision()V

    iget v0, p0, Lio/didomi/iabtcf/encoder/BitWriter;->bitsRemaining:I

    rsub-int/lit8 v0, v0, 0x47

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/BitWriter;->buffer:Lio/didomi/iabtcf/encoder/OfLongIterable;

    invoke-virtual {v1}, Lio/didomi/iabtcf/encoder/OfLongIterable;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/iabtcf/encoder/BitWriter;->buffer:Lio/didomi/iabtcf/encoder/OfLongIterable;

    invoke-virtual {v2}, Lio/didomi/iabtcf/encoder/OfLongIterable;->longIterator()Lio/didomi/iabtcf/utils/PrimitiveIterator$OfLong;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Lio/didomi/iabtcf/utils/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_1c

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v0, :cond_3c

    iget-wide v3, p0, Lio/didomi/iabtcf/encoder/BitWriter;->pending:J

    mul-int/lit8 v5, v2, 0x8

    rsub-int/lit8 v5, v5, 0x38

    ushr-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_3c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public write(JI)V
    .registers 10

    if-nez p3, :cond_3

    return-void

    :cond_3
    if-ltz p3, :cond_3b

    const/16 v0, 0x40

    if-gt p3, v0, :cond_3b

    sget-object v1, Lio/didomi/iabtcf/encoder/BitWriter;->LONG_MASKS:[J

    aget-wide v2, v1, p3

    and-long/2addr p1, v2

    iget v1, p0, Lio/didomi/iabtcf/encoder/BitWriter;->bitsRemaining:I

    sub-int/2addr v1, p3

    iput v1, p0, Lio/didomi/iabtcf/encoder/BitWriter;->bitsRemaining:I

    iget v2, p0, Lio/didomi/iabtcf/encoder/BitWriter;->precision:I

    sub-int/2addr v2, p3

    iput v2, p0, Lio/didomi/iabtcf/encoder/BitWriter;->precision:I

    if-lez v1, :cond_21

    iget-wide v2, p0, Lio/didomi/iabtcf/encoder/BitWriter;->pending:J

    shl-long/2addr p1, v1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lio/didomi/iabtcf/encoder/BitWriter;->pending:J

    goto :goto_3a

    :cond_21
    iget-object p3, p0, Lio/didomi/iabtcf/encoder/BitWriter;->buffer:Lio/didomi/iabtcf/encoder/OfLongIterable;

    iget-wide v2, p0, Lio/didomi/iabtcf/encoder/BitWriter;->pending:J

    neg-int v1, v1

    ushr-long v4, p1, v1

    or-long v1, v2, v4

    invoke-virtual {p3, v1, v2}, Lio/didomi/iabtcf/encoder/OfLongIterable;->add(J)V

    iget p3, p0, Lio/didomi/iabtcf/encoder/BitWriter;->bitsRemaining:I

    add-int/2addr p3, v0

    iput p3, p0, Lio/didomi/iabtcf/encoder/BitWriter;->bitsRemaining:I

    if-ne p3, v0, :cond_37

    const-wide/16 p1, 0x0

    goto :goto_38

    :cond_37
    shl-long/2addr p1, p3

    :goto_38
    iput-wide p1, p0, Lio/didomi/iabtcf/encoder/BitWriter;->pending:J

    :goto_3a
    return-void

    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "length is invalid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V
    .registers 4

    invoke-virtual {p3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JI)V

    return-void
.end method

.method public write(Lio/didomi/iabtcf/decoder/utils/IntIterable;I)V
    .registers 6

    if-ltz p2, :cond_4d

    new-instance v0, Lio/didomi/iabtcf/encoder/BitWriter;

    invoke-direct {v0, p2}, Lio/didomi/iabtcf/encoder/BitWriter;-><init>(I)V

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/utils/IntIterable;->intIterator()Lio/didomi/iabtcf/decoder/utils/IntIterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/utils/OfInt;->nextInt()I

    move-result v2

    if-lez v2, :cond_25

    if-le v2, p2, :cond_1f

    goto :goto_10

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_10

    :cond_25
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    const/4 p1, 0x0

    :goto_3d
    if-ge p1, p2, :cond_49

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3d

    :cond_49
    invoke-virtual {p0, v0}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/encoder/BitWriter;)V

    return-void

    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lio/didomi/iabtcf/decoder/utils/IntIterable;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V
    .registers 3

    invoke-virtual {p2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/decoder/utils/IntIterable;I)V

    return-void
.end method

.method public write(Lio/didomi/iabtcf/encoder/BitWriter;)V
    .registers 7

    iget-object v0, p1, Lio/didomi/iabtcf/encoder/BitWriter;->buffer:Lio/didomi/iabtcf/encoder/OfLongIterable;

    invoke-virtual {v0}, Lio/didomi/iabtcf/encoder/OfLongIterable;->longIterator()Lio/didomi/iabtcf/utils/PrimitiveIterator$OfLong;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x40

    if-eqz v1, :cond_16

    invoke-interface {v0}, Lio/didomi/iabtcf/utils/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JI)V

    goto :goto_6

    :cond_16
    iget-wide v0, p1, Lio/didomi/iabtcf/encoder/BitWriter;->pending:J

    iget v3, p1, Lio/didomi/iabtcf/encoder/BitWriter;->bitsRemaining:I

    ushr-long/2addr v0, v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JI)V

    iget p1, p1, Lio/didomi/iabtcf/encoder/BitWriter;->precision:I

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/encoder/BitWriter;->enforcePrecision(I)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, -0x41

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CHAR:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {p0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->writeV(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public write(Ljava/lang/String;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V
    .registers 3

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/util/Date;)V
    .registers 3

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->TIMESTAMP:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {p0, p1, v0}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Ljava/util/Date;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    return-void
.end method

.method public write(Ljava/util/Date;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V
    .registers 7

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    return-void
.end method

.method public write(Z)V
    .registers 4

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JI)V

    return-void
.end method

.method public write(ZLio/didomi/iabtcf/decoder/utils/FieldDefs;)V
    .registers 3

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Z)V

    return-void
.end method

.method public writeV(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V
    .registers 4

    invoke-static {p1, p2, p3}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    return-void
.end method
