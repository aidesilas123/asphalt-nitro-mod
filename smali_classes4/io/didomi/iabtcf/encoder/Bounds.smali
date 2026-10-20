###### Class io.didomi.iabtcf.encoder.Bounds (io.didomi.iabtcf.encoder.Bounds)
.class Lio/didomi/iabtcf/encoder/Bounds;
.super Ljava/lang/Object;
.source "Bounds.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBounds(ILio/didomi/iabtcf/decoder/utils/FieldDefs;)I
    .registers 6

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_13

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    return p0

    :cond_13
    new-instance p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;

    const-wide/16 v0, 0x20

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;-><init>(JJ)V

    throw p0
.end method

.method private static checkBounds(JJLio/didomi/iabtcf/decoder/utils/FieldDefs;)J
    .registers 12

    invoke-static {p0, p1, p2, p3}, Lio/didomi/iabtcf/encoder/a;->a(JJ)I

    move-result v0

    if-gtz v0, :cond_7

    return-wide p0

    :cond_7
    new-instance v0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;-><init>(JJLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    throw v0
.end method

.method public static checkBounds(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)J
    .registers 8

    invoke-virtual {p2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_15

    if-ne v0, v1, :cond_b

    return-wide p0

    :cond_b
    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    invoke-static {p0, p1, v3, v4, p2}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(JJLio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    move-result-wide p0

    return-wide p0

    :cond_15
    new-instance p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;

    const-wide/16 p1, 0x40

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;-><init>(JJ)V

    throw p0
.end method

.method public static checkBounds(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 9

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->max()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength()I

    move-result v2

    const-wide/16 v3, 0x1

    shl-long v5, v3, v2

    sub-long/2addr v5, v3

    invoke-static {v0, v1, v5, v6, p1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(JJLio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    return-object p0
.end method

.method public static checkBounds(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_NUM_PUB_RESTRICTION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength()I

    move-result v3

    const-wide/16 v4, 0x1

    shl-long v6, v4, v3

    sub-long/2addr v6, v4

    invoke-static {v0, v1, v6, v7, v2}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(JJLio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    return-object p0
.end method

.method public static checkBoundsBits(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 6

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->max()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3, p1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(JJLio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    return-object p0
.end method
