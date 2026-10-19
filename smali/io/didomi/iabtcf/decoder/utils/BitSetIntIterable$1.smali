###### Class io.didomi.iabtcf.decoder.utils.BitSetIntIterable.AnonymousClass1 (io.didomi.iabtcf.decoder.utils.BitSetIntIterable$1)
.class Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;
.super Ljava/lang/Object;
.source "BitSetIntIterable.java"

# interfaces
.implements Lio/didomi/iabtcf/decoder/utils/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->intIterator()Lio/didomi/iabtcf/decoder/utils/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentIndex:I

.field final synthetic this$0:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;


# direct methods
.method constructor <init>(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->this$0:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->start()I

    move-result p1

    iput p1, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->currentIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->currentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public next()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public nextInt()I
    .registers 4

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->currentIndex:I

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->this$0:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    invoke-static {v1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->access$200(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)Ljava/util/BitSet;

    move-result-object v1

    iget v2, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    iput v1, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->currentIndex:I

    return v0

    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public start()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->this$0:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->access$200(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, -0x1

    return v0

    :cond_e
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$1;->this$0:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->access$200(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    return v0
.end method
