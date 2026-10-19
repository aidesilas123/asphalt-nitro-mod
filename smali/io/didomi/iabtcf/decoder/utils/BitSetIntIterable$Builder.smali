###### Class io.didomi.iabtcf.decoder.utils.BitSetIntIterable.Builder (io.didomi.iabtcf.decoder.utils.BitSetIntIterable$Builder)
.class public Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
.super Ljava/lang/Object;
.source "BitSetIntIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final bs:Ljava/util/BitSet;


# direct methods
.method private constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;-><init>(Ljava/util/BitSet;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)V
    .registers 2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->clone()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->access$200(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)Ljava/util/BitSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;-><init>(Ljava/util/BitSet;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;-><init>(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/BitSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->bs:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->bs:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public add(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->bs:Ljava/util/BitSet;

    iget-object p1, p1, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->bs:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public add(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->bs:Ljava/util/BitSet;

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->access$200(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 4

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/utils/IntIterable;->intIterator()Lio/didomi/iabtcf/decoder/utils/IntIterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->bs:Ljava/util/BitSet;

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/utils/OfInt;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    :cond_14
    return-object p0
.end method

.method public build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;
    .registers 4

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->bs:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;-><init>(Ljava/util/BitSet;Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;)V

    return-object v0
.end method

.method public clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->bs:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    return-object p0
.end method

.method public max()I
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->bs:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->bs:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
