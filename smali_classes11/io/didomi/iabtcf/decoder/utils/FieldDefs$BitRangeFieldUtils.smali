###### Class io.didomi.iabtcf.decoder.utils.FieldDefs.BitRangeFieldUtils (io.didomi.iabtcf.decoder.utils.FieldDefs$BitRangeFieldUtils)
.class Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;
.super Ljava/lang/Object;
.source "FieldDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/FieldDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitRangeFieldUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBitLength(Lio/didomi/iabtcf/decoder/utils/BitReader;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits16(I)I

    move-result p0

    return p0
.end method

.method public static calculateBitRangeLength(Lio/didomi/iabtcf/decoder/utils/BitReader;II)I
    .registers 4

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(I)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0, p2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;->calculateBitLength(Lio/didomi/iabtcf/decoder/utils/BitReader;I)I

    move-result p0

    return p0

    :cond_b
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;->calculateRangeLength(Lio/didomi/iabtcf/decoder/utils/BitReader;I)I

    move-result p0

    return p0
.end method

.method public static calculateRangeLength(Lio/didomi/iabtcf/decoder/utils/BitReader;I)I
    .registers 8

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(I)I

    move-result v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->NUM_ENTRIES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v1

    add-int/2addr v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_2f

    sget-object v4, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->IS_A_RANGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v4, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v4

    sget-object v5, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->START_OR_ONLY_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v5, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(I)Z

    move-result v5

    if-eqz v5, :cond_29

    sget-object v5, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->END_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v5, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v5

    goto :goto_2a

    :cond_29
    const/4 v5, 0x0

    :goto_2a
    add-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2f
    sub-int/2addr v1, p1

    return v1
.end method

.method public static lengthSupplier(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;
    .registers 3

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils$1;

    invoke-direct {v0, p0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils$1;-><init>(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    return-object v0
.end method

.method public static lengthSupplierV1()Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;
    .registers 1

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils$2;

    invoke-direct {v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils$2;-><init>()V

    return-object v0
.end method
