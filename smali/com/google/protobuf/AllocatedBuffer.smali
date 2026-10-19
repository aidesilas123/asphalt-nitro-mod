###### Class com.google.protobuf.AllocatedBuffer (com.google.protobuf.AllocatedBuffer)
.class abstract Lcom/google/protobuf/AllocatedBuffer;
.super Ljava/lang/Object;
.source "AllocatedBuffer.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/AllocatedBuffer;
    .registers 2

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/google/protobuf/AllocatedBuffer$a;

    invoke-direct {v0, p0}, Lcom/google/protobuf/AllocatedBuffer$a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static wrap([B)Lcom/google/protobuf/AllocatedBuffer;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/AllocatedBuffer;->wrapNoCheck([BII)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([BII)Lcom/google/protobuf/AllocatedBuffer;
    .registers 6

    if-ltz p1, :cond_e

    if-ltz p2, :cond_e

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_e

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/AllocatedBuffer;->wrapNoCheck([BII)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "bytes.length=%d, offset=%d, length=%d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static wrapNoCheck([BII)Lcom/google/protobuf/AllocatedBuffer;
    .registers 4

    new-instance v0, Lcom/google/protobuf/AllocatedBuffer$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/AllocatedBuffer$b;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract array()[B
.end method

.method public abstract arrayOffset()I
.end method

.method public abstract hasArray()Z
.end method

.method public abstract hasNioBuffer()Z
.end method

.method public abstract limit()I
.end method

.method public abstract nioBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract position()I
.end method

.method public abstract position(I)Lcom/google/protobuf/AllocatedBuffer;
.end method

.method public abstract remaining()I
.end method

###### Class com.google.protobuf.AllocatedBuffer.a (com.google.protobuf.AllocatedBuffer$a)
.class Lcom/google/protobuf/AllocatedBuffer$a;
.super Lcom/google/protobuf/AllocatedBuffer;
.source "AllocatedBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/AllocatedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/protobuf/AllocatedBuffer$a;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/AllocatedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public array()[B
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/AllocatedBuffer$a;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/AllocatedBuffer$a;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/AllocatedBuffer$a;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public hasNioBuffer()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public limit()I
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/AllocatedBuffer$a;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public nioBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/AllocatedBuffer$a;->val$buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public position()I
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/AllocatedBuffer$a;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)Lcom/google/protobuf/AllocatedBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/AllocatedBuffer$a;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public remaining()I
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/AllocatedBuffer$a;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

###### Class com.google.protobuf.AllocatedBuffer.b (com.google.protobuf.AllocatedBuffer$b)
.class Lcom/google/protobuf/AllocatedBuffer$b;
.super Lcom/google/protobuf/AllocatedBuffer;
.source "AllocatedBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/AllocatedBuffer;->wrapNoCheck([BII)Lcom/google/protobuf/AllocatedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private position:I

.field final synthetic val$bytes:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>([BII)V
    .registers 4

    iput-object p1, p0, Lcom/google/protobuf/AllocatedBuffer$b;->val$bytes:[B

    iput p2, p0, Lcom/google/protobuf/AllocatedBuffer$b;->val$offset:I

    iput p3, p0, Lcom/google/protobuf/AllocatedBuffer$b;->val$length:I

    invoke-direct {p0}, Lcom/google/protobuf/AllocatedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public array()[B
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/AllocatedBuffer$b;->val$bytes:[B

    return-object v0
.end method

.method public arrayOffset()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/AllocatedBuffer$b;->val$offset:I

    return v0
.end method

.method public hasArray()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasNioBuffer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public limit()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/AllocatedBuffer$b;->val$length:I

    return v0
.end method

.method public nioBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public position()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/AllocatedBuffer$b;->position:I

    return v0
.end method

.method public position(I)Lcom/google/protobuf/AllocatedBuffer;
    .registers 5

    if-ltz p1, :cond_9

    iget v0, p0, Lcom/google/protobuf/AllocatedBuffer$b;->val$length:I

    if-gt p1, v0, :cond_9

    iput p1, p0, Lcom/google/protobuf/AllocatedBuffer$b;->position:I

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remaining()I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/AllocatedBuffer$b;->val$length:I

    iget v1, p0, Lcom/google/protobuf/AllocatedBuffer$b;->position:I

    sub-int/2addr v0, v1

    return v0
.end method
