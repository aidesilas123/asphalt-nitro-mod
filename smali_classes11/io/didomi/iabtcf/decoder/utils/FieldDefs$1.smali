###### Class io.didomi.iabtcf.decoder.utils.FieldDefs.AnonymousClass1 (io.didomi.iabtcf.decoder.utils.FieldDefs$1)
.class final Lio/didomi/iabtcf/decoder/utils/FieldDefs$1;
.super Ljava/lang/Object;
.source "FieldDefs.java"

# interfaces
.implements Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/FieldDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/didomi/iabtcf/decoder/utils/BitReader;)Ljava/lang/Integer;
    .registers 3

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_NUM_CUSTOM_PURPOSES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v0

    invoke-virtual {p1, v0}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(I)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$1;->apply(Lio/didomi/iabtcf/decoder/utils/BitReader;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public isDynamic()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
