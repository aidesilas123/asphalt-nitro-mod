###### Class io.didomi.iabtcf.decoder.utils.IntIterable (io.didomi.iabtcf.decoder.utils.IntIterable)
.class public abstract Lio/didomi/iabtcf/decoder/utils/IntIterable;
.super Ljava/lang/Object;
.source "IntIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract contains(I)Z
.end method

.method public abstract intIterator()Lio/didomi/iabtcf/decoder/utils/IntIterator;
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/IntIterable;->intIterator()Lio/didomi/iabtcf/decoder/utils/IntIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/IntIterable$1;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/decoder/utils/IntIterable$1;-><init>(Lio/didomi/iabtcf/decoder/utils/IntIterable;)V

    return-object v0
.end method

.method public toSet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/IntIterable;->intIterator()Lio/didomi/iabtcf/decoder/utils/IntIterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_17
    return-object v0
.end method
