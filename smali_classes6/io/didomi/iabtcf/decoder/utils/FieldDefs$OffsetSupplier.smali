###### Class io.didomi.iabtcf.decoder.utils.FieldDefs.OffsetSupplier (io.didomi.iabtcf.decoder.utils.FieldDefs$OffsetSupplier)
.class interface abstract Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;
.super Ljava/lang/Object;
.source "FieldDefs.java"

# interfaces
.implements Lio/didomi/iabtcf/decoder/utils/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/FieldDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OffsetSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/didomi/iabtcf/decoder/utils/function/Function<",
        "Lio/didomi/iabtcf/decoder/utils/BitReader;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final NOT_SUPPORTED:Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier$1;

    invoke-direct {v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier$1;-><init>()V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;->NOT_SUPPORTED:Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    return-void
.end method


# virtual methods
.method public abstract isDynamic()Z
.end method
