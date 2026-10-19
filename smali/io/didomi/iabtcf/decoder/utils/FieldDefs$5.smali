###### Class io.didomi.iabtcf.decoder.utils.FieldDefs.AnonymousClass5 (io.didomi.iabtcf.decoder.utils.FieldDefs$5)
.class final Lio/didomi/iabtcf/decoder/utils/FieldDefs$5;
.super Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;
.source "FieldDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offsetSupplierFrom(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$thisEnum:Lio/didomi/iabtcf/decoder/utils/FieldDefs;


# direct methods
.method constructor <init>(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$5;->val$thisEnum:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;-><init>(Lio/didomi/iabtcf/decoder/utils/FieldDefs$1;)V

    return-void
.end method


# virtual methods
.method public doCompute(Lio/didomi/iabtcf/decoder/utils/BitReader;)Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$5;->val$thisEnum:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v0

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$5;->val$thisEnum:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public isDynamic()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$5;->val$thisEnum:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamic()Z

    move-result v0

    return v0
.end method
