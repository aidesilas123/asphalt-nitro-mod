###### Class io.didomi.iabtcf.decoder.utils.FieldDefs.MemoizingFunction (io.didomi.iabtcf.decoder.utils.FieldDefs$MemoizingFunction)
.class abstract Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;
.super Ljava/lang/Object;
.source "FieldDefs.java"

# interfaces
.implements Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;
.implements Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;
.implements Lio/didomi/iabtcf/decoder/utils/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/FieldDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MemoizingFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;",
        "Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;",
        "Lio/didomi/iabtcf/decoder/utils/function/Function<",
        "Lio/didomi/iabtcf/decoder/utils/BitReader;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile dynamicInitialized:Z

.field private volatile isDynamic:Z

.field private volatile value:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->dynamicInitialized:Z

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->isDynamic:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/didomi/iabtcf/decoder/utils/FieldDefs$1;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;-><init>()V

    return-void
.end method

.method private isDynamicPvt()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->dynamicInitialized:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->isDynamic()Z

    move-result v0

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->isDynamic:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->dynamicInitialized:Z

    :cond_d
    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->isDynamic:Z

    return v0
.end method


# virtual methods
.method public apply(Lio/didomi/iabtcf/decoder/utils/BitReader;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->isDynamicPvt()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->doCompute(Lio/didomi/iabtcf/decoder/utils/BitReader;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->value:Ljava/lang/Integer;

    if-nez v0, :cond_15

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->doCompute(Lio/didomi/iabtcf/decoder/utils/BitReader;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->value:Ljava/lang/Integer;

    :cond_15
    iget-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->value:Ljava/lang/Integer;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;->apply(Lio/didomi/iabtcf/decoder/utils/BitReader;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public abstract doCompute(Lio/didomi/iabtcf/decoder/utils/BitReader;)Ljava/lang/Integer;
.end method

.method public abstract isDynamic()Z
.end method
