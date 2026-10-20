###### Class io.didomi.iabtcf.decoder.utils.IntIterable.AnonymousClass1 (io.didomi.iabtcf.decoder.utils.IntIterable$1)
.class Lio/didomi/iabtcf/decoder/utils/IntIterable$1;
.super Ljava/lang/Object;
.source "IntIterable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/iabtcf/decoder/utils/IntIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final internal:Lio/didomi/iabtcf/decoder/utils/IntIterator;

.field final synthetic this$0:Lio/didomi/iabtcf/decoder/utils/IntIterable;


# direct methods
.method constructor <init>(Lio/didomi/iabtcf/decoder/utils/IntIterable;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/IntIterable$1;->this$0:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/utils/IntIterable;->intIterator()Lio/didomi/iabtcf/decoder/utils/IntIterator;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/IntIterable$1;->internal:Lio/didomi/iabtcf/decoder/utils/IntIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/IntIterable$1;->internal:Lio/didomi/iabtcf/decoder/utils/IntIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/IntIterable$1;->internal:Lio/didomi/iabtcf/decoder/utils/IntIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/IntIterable$1;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
