###### Class io.didomi.iabtcf.encoder.OfLongIterable (io.didomi.iabtcf.encoder.OfLongIterable)
.class Lio/didomi/iabtcf/encoder/OfLongIterable;
.super Ljava/lang/Object;
.source "OfLongIterable.java"


# instance fields
.field private array:[J

.field private size:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->array:[J

    const/4 v0, 0x0

    iput v0, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->size:I

    return-void
.end method

.method static synthetic access$000(Lio/didomi/iabtcf/encoder/OfLongIterable;)I
    .registers 1

    iget p0, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->size:I

    return p0
.end method

.method static synthetic access$100(Lio/didomi/iabtcf/encoder/OfLongIterable;)[J
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->array:[J

    return-object p0
.end method


# virtual methods
.method public add(J)V
    .registers 6

    iget v0, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->size:I

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->array:[J

    array-length v2, v1

    if-ne v0, v2, :cond_f

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->array:[J

    :cond_f
    iget-object v0, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->array:[J

    iget v1, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->size:I

    aput-wide p1, v0, v1

    return-void
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
    check-cast p1, Lio/didomi/iabtcf/encoder/OfLongIterable;

    iget-object v2, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->array:[J

    iget-object v3, p1, Lio/didomi/iabtcf/encoder/OfLongIterable;->array:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    :cond_20
    iget v2, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->size:I

    iget p1, p1, Lio/didomi/iabtcf/encoder/OfLongIterable;->size:I

    if-eq v2, p1, :cond_27

    return v1

    :cond_27
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->array:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->size:I

    add-int/2addr v0, v1

    return v0
.end method

.method public longIterator()Lio/didomi/iabtcf/utils/PrimitiveIterator$OfLong;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/encoder/OfLongIterable$1;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/encoder/OfLongIterable$1;-><init>(Lio/didomi/iabtcf/encoder/OfLongIterable;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lio/didomi/iabtcf/encoder/OfLongIterable;->size:I

    return v0
.end method

###### Class io.didomi.iabtcf.encoder.OfLongIterable.AnonymousClass1 (io.didomi.iabtcf.encoder.OfLongIterable$1)
.class Lio/didomi/iabtcf/encoder/OfLongIterable$1;
.super Ljava/lang/Object;
.source "OfLongIterable.java"

# interfaces
.implements Lio/didomi/iabtcf/utils/PrimitiveIterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/iabtcf/encoder/OfLongIterable;->longIterator()Lio/didomi/iabtcf/utils/PrimitiveIterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lio/didomi/iabtcf/encoder/OfLongIterable;


# direct methods
.method constructor <init>(Lio/didomi/iabtcf/encoder/OfLongIterable;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->this$0:Lio/didomi/iabtcf/encoder/OfLongIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->i:I

    return-void
.end method


# virtual methods
.method public forEachRemaining(Lio/didomi/iabtcf/utils/function/LongConsumer;)V
    .registers 4

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {p0}, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/didomi/iabtcf/utils/function/LongConsumer;->accept(J)V

    goto :goto_3

    :cond_11
    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lio/didomi/iabtcf/utils/function/LongConsumer;

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->forEachRemaining(Lio/didomi/iabtcf/utils/function/LongConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->i:I

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->this$0:Lio/didomi/iabtcf/encoder/OfLongIterable;

    invoke-static {v1}, Lio/didomi/iabtcf/encoder/OfLongIterable;->access$000(Lio/didomi/iabtcf/encoder/OfLongIterable;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public next()Ljava/lang/Long;
    .registers 3

    invoke-virtual {p0}, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public nextLong()J
    .registers 4

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->this$0:Lio/didomi/iabtcf/encoder/OfLongIterable;

    invoke-static {v0}, Lio/didomi/iabtcf/encoder/OfLongIterable;->access$100(Lio/didomi/iabtcf/encoder/OfLongIterable;)[J

    move-result-object v0

    iget v1, p0, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/didomi/iabtcf/encoder/OfLongIterable$1;->i:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
