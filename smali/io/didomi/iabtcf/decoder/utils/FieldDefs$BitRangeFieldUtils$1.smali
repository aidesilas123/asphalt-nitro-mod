###### Class io.didomi.iabtcf.decoder.utils.FieldDefs.BitRangeFieldUtils.AnonymousClass1 (io.didomi.iabtcf.decoder.utils.FieldDefs$BitRangeFieldUtils$1)
.class final Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils$1;
.super Ljava/lang/Object;
.source "FieldDefs.java"

# interfaces
.implements Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;->lengthSupplier(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isRangeEncoding:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field final synthetic val$maxVendorId:Lio/didomi/iabtcf/decoder/utils/FieldDefs;


# direct methods
.method constructor <init>(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils$1;->val$isRangeEncoding:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    iput-object p2, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils$1;->val$maxVendorId:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/didomi/iabtcf/decoder/utils/BitReader;)Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils$1;->val$isRangeEncoding:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v0

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils$1;->val$maxVendorId:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;->calculateBitRangeLength(Lio/didomi/iabtcf/decoder/utils/BitReader;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils$1;->apply(Lio/didomi/iabtcf/decoder/utils/BitReader;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public isDynamic()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
