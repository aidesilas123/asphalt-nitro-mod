###### Class io.didomi.iabtcf.decoder.utils.FieldDefs.PublisherRestrictionUtils (io.didomi.iabtcf.decoder.utils.FieldDefs$PublisherRestrictionUtils)
.class Lio/didomi/iabtcf/decoder/utils/FieldDefs$PublisherRestrictionUtils;
.super Ljava/lang/Object;
.source "FieldDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/FieldDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublisherRestrictionUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBitRangelength(Lio/didomi/iabtcf/decoder/utils/BitReader;I)I
    .registers 7

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(I)I

    move-result v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_NUM_PUB_RESTRICTION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v1

    add-int/2addr v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_24

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PURPOSE_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v3, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v3

    sget-object v4, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->RESTRICTION_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v4, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-static {p0, v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;->calculateRangeLength(Lio/didomi/iabtcf/decoder/utils/BitReader;I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_24
    sub-int/2addr v1, p1

    return v1
.end method

.method public static lengthSupplier(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$PublisherRestrictionUtils$1;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$PublisherRestrictionUtils$1;-><init>(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    return-object v0
.end method
