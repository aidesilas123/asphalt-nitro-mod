###### Class io.didomi.iabtcf.decoder.utils.BitSetIntIterable (io.didomi.iabtcf.decoder.utils.BitSetIntIterable)
.class public Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;
.super Lio/didomi/iabtcf/decoder/utils/IntIterable;
.source "BitSetIntIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;


# instance fields
.field private final bs:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-direct {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;-><init>(Ljava/util/BitSet;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->EMPTY:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    return-void
.end method

.method private constructor <init>(Ljava/util/BitSet;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/iabtcf/decoder/utils/IntIterable;-><init>()V

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->bs:Ljava/util/BitSet;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/BitSet;Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;-><init>(Ljava/util/BitSet;)V

    return-void
.end method

.method static synthetic access$200(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)Ljava/util/BitSet;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->bs:Ljava/util/BitSet;

    return-object p0
.end method

.method public static from(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;
    .registers 3

    instance-of v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    if-eqz v0, :cond_b

    check-cast p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->clone()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/IntIterable;->intIterator()Lio/didomi/iabtcf/decoder/utils/IntIterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Lio/didomi/iabtcf/decoder/utils/OfInt;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_14

    :cond_22
    new-instance p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;-><init>(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public static from(Ljava/util/BitSet;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/BitSet;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;-><init>(Ljava/util/BitSet;)V

    return-object v0
.end method

.method public static from(Ljava/util/Collection;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;"
        }
    .end annotation

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_9

    :cond_1d
    new-instance p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;-><init>(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public static varargs from([I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;
    .registers 4

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_11

    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    new-instance p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;-><init>(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public static newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;-><init>(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;)V

    return-object v0
.end method

.method public static newBuilder(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 3

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;-><init>(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;)V

    return-object v0
.end method

.method public static newBuilder(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 3

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->from(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;-><init>(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;)V

    return-object v0
.end method

.method public static newBuilder(Ljava/util/BitSet;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 3

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    invoke-direct {v1, p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;-><init>(Ljava/util/BitSet;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;-><init>(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;)V

    return-object v0
.end method


# virtual methods
.method public clone()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;
    .registers 3

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->bs:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;-><init>(Ljava/util/BitSet;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->clone()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    return-object v0
.end method

.method public contains(I)Z
    .registers 3

    if-gez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->bs:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    check-cast p1, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->bs:Ljava/util/BitSet;

    if-nez v2, :cond_20

    iget-object p1, p1, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->bs:Ljava/util/BitSet;

    if-nez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    iget-object p1, p1, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->bs:Ljava/util/BitSet;

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->bs:Ljava/util/BitSet;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/util/BitSet;->hashCode()I

    move-result v0

    :goto_a
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public intIterator()Lio/didomi/iabtcf/decoder/utils/IntIterator;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;-><init>(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)V

    return-object v0
.end method

.method public toBitSet()Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->bs:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->bs:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
