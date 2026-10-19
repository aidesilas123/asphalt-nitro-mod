###### Class com.google.protobuf.k1.d (com.google.protobuf.k1$d)
.class Lcom/google/protobuf/k1$d;
.super Ljava/io/InputStream;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private currentPiece:Lcom/google/protobuf/ByteString$i;

.field private currentPieceIndex:I

.field private currentPieceOffsetInRope:I

.field private currentPieceSize:I

.field private mark:I

.field private pieceIterator:Lcom/google/protobuf/k1$c;

.field final synthetic this$0:Lcom/google/protobuf/k1;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/k1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/protobuf/k1$d;->this$0:Lcom/google/protobuf/k1;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-direct {p0}, Lcom/google/protobuf/k1$d;->initialize()V

    return-void
.end method

.method private advanceIfCurrentPieceFullyRead()V
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/k1$d;->currentPiece:Lcom/google/protobuf/ByteString$i;

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/google/protobuf/k1$d;->currentPieceIndex:I

    iget v1, p0, Lcom/google/protobuf/k1$d;->currentPieceSize:I

    if-ne v0, v1, :cond_2e

    iget v0, p0, Lcom/google/protobuf/k1$d;->currentPieceOffsetInRope:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/k1$d;->currentPieceOffsetInRope:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/k1$d;->currentPieceIndex:I

    iget-object v1, p0, Lcom/google/protobuf/k1$d;->pieceIterator:Lcom/google/protobuf/k1$c;

    invoke-virtual {v1}, Lcom/google/protobuf/k1$c;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v0, p0, Lcom/google/protobuf/k1$d;->pieceIterator:Lcom/google/protobuf/k1$c;

    invoke-virtual {v0}, Lcom/google/protobuf/k1$c;->next()Lcom/google/protobuf/ByteString$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/k1$d;->currentPiece:Lcom/google/protobuf/ByteString$i;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/k1$d;->currentPieceSize:I

    goto :goto_2e

    :cond_29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/k1$d;->currentPiece:Lcom/google/protobuf/ByteString$i;

    iput v0, p0, Lcom/google/protobuf/k1$d;->currentPieceSize:I

    :cond_2e
    :goto_2e
    return-void
.end method

.method private availableInternal()I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/k1$d;->currentPieceOffsetInRope:I

    iget v1, p0, Lcom/google/protobuf/k1$d;->currentPieceIndex:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/protobuf/k1$d;->this$0:Lcom/google/protobuf/k1;

    invoke-virtual {v1}, Lcom/google/protobuf/k1;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private initialize()V
    .registers 4

    new-instance v0, Lcom/google/protobuf/k1$c;

    iget-object v1, p0, Lcom/google/protobuf/k1$d;->this$0:Lcom/google/protobuf/k1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/k1$c;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/k1$a;)V

    iput-object v0, p0, Lcom/google/protobuf/k1$d;->pieceIterator:Lcom/google/protobuf/k1$c;

    invoke-virtual {v0}, Lcom/google/protobuf/k1$c;->next()Lcom/google/protobuf/ByteString$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/k1$d;->currentPiece:Lcom/google/protobuf/ByteString$i;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/k1$d;->currentPieceSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/k1$d;->currentPieceIndex:I

    iput v0, p0, Lcom/google/protobuf/k1$d;->currentPieceOffsetInRope:I

    return-void
.end method

.method private readSkipInternal([BII)I
    .registers 8

    move v0, p3

    :goto_1
    if-lez v0, :cond_25

    invoke-direct {p0}, Lcom/google/protobuf/k1$d;->advanceIfCurrentPieceFullyRead()V

    iget-object v1, p0, Lcom/google/protobuf/k1$d;->currentPiece:Lcom/google/protobuf/ByteString$i;

    if-nez v1, :cond_b

    goto :goto_25

    :cond_b
    iget v1, p0, Lcom/google/protobuf/k1$d;->currentPieceSize:I

    iget v2, p0, Lcom/google/protobuf/k1$d;->currentPieceIndex:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_1e

    iget-object v2, p0, Lcom/google/protobuf/k1$d;->currentPiece:Lcom/google/protobuf/ByteString$i;

    iget v3, p0, Lcom/google/protobuf/k1$d;->currentPieceIndex:I

    invoke-virtual {v2, p1, v3, p2, v1}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    add-int/2addr p2, v1

    :cond_1e
    iget v2, p0, Lcom/google/protobuf/k1$d;->currentPieceIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/k1$d;->currentPieceIndex:I

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_25
    :goto_25
    sub-int/2addr p3, v0

    return p3
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/k1$d;->availableInternal()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .registers 3

    iget p1, p0, Lcom/google/protobuf/k1$d;->currentPieceOffsetInRope:I

    iget v0, p0, Lcom/google/protobuf/k1$d;->currentPieceIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/k1$d;->mark:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/k1$d;->advanceIfCurrentPieceFullyRead()V

    iget-object v0, p0, Lcom/google/protobuf/k1$d;->currentPiece:Lcom/google/protobuf/ByteString$i;

    if-nez v0, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget v1, p0, Lcom/google/protobuf/k1$d;->currentPieceIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/k1$d;->currentPieceIndex:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1b

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/k1$d;->readSkipInternal([BII)I

    move-result p1

    if-nez p1, :cond_1a

    if-gtz p3, :cond_19

    invoke-direct {p0}, Lcom/google/protobuf/k1$d;->availableInternal()I

    move-result p2

    if-nez p2, :cond_1a

    :cond_19
    const/4 p1, -0x1

    :cond_1a
    return p1

    :cond_1b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/protobuf/k1$d;->initialize()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/k1$d;->mark:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/protobuf/k1$d;->readSkipInternal([BII)I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_17

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    move-wide p1, v0

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p2, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/protobuf/k1$d;->readSkipInternal([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_17
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
