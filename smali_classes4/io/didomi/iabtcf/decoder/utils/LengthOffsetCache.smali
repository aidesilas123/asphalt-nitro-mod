###### Class io.didomi.iabtcf.decoder.utils.LengthOffsetCache (io.didomi.iabtcf.decoder.utils.LengthOffsetCache)
.class Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;
.super Ljava/lang/Object;
.source "LengthOffsetCache.java"


# instance fields
.field private final bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

.field private final lengthCache:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final offsetCache:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/iabtcf/decoder/utils/BitReader;)V
    .registers 4

    const-class v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;->lengthCache:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;->offsetCache:Ljava/util/EnumMap;

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    return-void
.end method

.method private memoize(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Ljava/util/EnumMap;Lio/didomi/iabtcf/decoder/utils/function/Function;)Ljava/lang/Integer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            "Ljava/util/EnumMap<",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            "Ljava/lang/Integer;",
            ">;",
            "Lio/didomi/iabtcf/decoder/utils/function/Function<",
            "Lio/didomi/iabtcf/decoder/utils/BitReader;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object p1, p0, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-interface {p3, p1}, Lio/didomi/iabtcf/decoder/utils/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_f
    invoke-virtual {p2, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_23

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-interface {p3, v0}, Lio/didomi/iabtcf/decoder/utils/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-object v0
.end method


# virtual methods
.method public getLength(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/function/Function;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            "Lio/didomi/iabtcf/decoder/utils/function/Function<",
            "Lio/didomi/iabtcf/decoder/utils/BitReader;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;->lengthCache:Ljava/util/EnumMap;

    invoke-direct {p0, p1, v0, p2}, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;->memoize(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Ljava/util/EnumMap;Lio/didomi/iabtcf/decoder/utils/function/Function;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getOffset(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/function/Function;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            "Lio/didomi/iabtcf/decoder/utils/function/Function<",
            "Lio/didomi/iabtcf/decoder/utils/BitReader;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;->offsetCache:Ljava/util/EnumMap;

    invoke-direct {p0, p1, v0, p2}, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;->memoize(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Ljava/util/EnumMap;Lio/didomi/iabtcf/decoder/utils/function/Function;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
