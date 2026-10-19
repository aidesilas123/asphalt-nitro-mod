###### Class com.google.protobuf.k1 (com.google.protobuf.k1)
.class final Lcom/google/protobuf/k1;
.super Lcom/google/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/k1$d;,
        Lcom/google/protobuf/k1$c;,
        Lcom/google/protobuf/k1$b;
    }
.end annotation


# static fields
.field static final minLengthByDepth:[I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final left:Lcom/google/protobuf/ByteString;

.field private final leftLength:I

.field private final right:Lcom/google/protobuf/ByteString;

.field private final totalLength:I

.field private final treeDepth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/protobuf/k1;->minLengthByDepth:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    iput-object p2, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/k1;->leftLength:I

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/k1;->totalLength:I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/k1;->treeDepth:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/k1$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/k1;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/protobuf/k1;)Lcom/google/protobuf/ByteString;
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/protobuf/k1;)Lcom/google/protobuf/ByteString;
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method static concatenate(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 7

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_e

    return-object p1

    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_20

    invoke-static {p0, p1}, Lcom/google/protobuf/k1;->concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_20
    instance-of v2, p0, Lcom/google/protobuf/k1;

    if-eqz v2, :cond_69

    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/k1;

    iget-object v3, v2, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_42

    iget-object p0, v2, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    invoke-static {p0, p1}, Lcom/google/protobuf/k1;->concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    new-instance p1, Lcom/google/protobuf/k1;

    iget-object v0, v2, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lcom/google/protobuf/k1;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-object p1

    :cond_42
    iget-object v1, v2, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    iget-object v3, v2, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_69

    invoke-virtual {v2}, Lcom/google/protobuf/k1;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_69

    new-instance p0, Lcom/google/protobuf/k1;

    iget-object v0, v2, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/k1;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    new-instance p1, Lcom/google/protobuf/k1;

    iget-object v0, v2, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lcom/google/protobuf/k1;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-object p1

    :cond_69
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/protobuf/k1;->minLength(I)I

    move-result v1

    if-lt v0, v1, :cond_83

    new-instance v0, Lcom/google/protobuf/k1;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/k1;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-object v0

    :cond_83
    new-instance v0, Lcom/google/protobuf/k1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/k1$b;-><init>(Lcom/google/protobuf/k1$a;)V

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/k1$b;->access$100(Lcom/google/protobuf/k1$b;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private static concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 6

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private equalsFragments(Lcom/google/protobuf/ByteString;)Z
    .registers 13

    new-instance v0, Lcom/google/protobuf/k1$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/k1$c;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/k1$a;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString$i;

    new-instance v3, Lcom/google/protobuf/k1$c;

    invoke-direct {v3, p1, v1}, Lcom/google/protobuf/k1$c;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/k1$a;)V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString$i;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1b
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez v4, :cond_30

    invoke-virtual {v2, p1, v5, v9}, Lcom/google/protobuf/ByteString$i;->equalsRange(Lcom/google/protobuf/ByteString;II)Z

    move-result v10

    goto :goto_34

    :cond_30
    invoke-virtual {p1, v2, v4, v9}, Lcom/google/protobuf/ByteString$i;->equalsRange(Lcom/google/protobuf/ByteString;II)Z

    move-result v10

    :goto_34
    if-nez v10, :cond_37

    return v1

    :cond_37
    add-int/2addr v6, v9

    iget v10, p0, Lcom/google/protobuf/k1;->totalLength:I

    if-lt v6, v10, :cond_46

    if-ne v6, v10, :cond_40

    const/4 p1, 0x1

    return p1

    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_46
    if-ne v9, v7, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString$i;

    const/4 v4, 0x0

    goto :goto_51

    :cond_50
    add-int/2addr v4, v9

    :goto_51
    if-ne v9, v8, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString$i;

    const/4 v5, 0x0

    goto :goto_1b

    :cond_5b
    add-int/2addr v5, v9

    goto :goto_1b
.end method

.method static minLength(I)I
    .registers 3

    sget-object v0, Lcom/google/protobuf/k1;->minLengthByDepth:[I

    array-length v1, v0

    if-lt p0, v1, :cond_9

    const p0, 0x7fffffff

    return p0

    :cond_9
    aget p0, v0, p0

    return p0
.end method

.method static newInstanceForTest(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/k1;
    .registers 3

    new-instance v0, Lcom/google/protobuf/k1;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/k1;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "RopeByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyByteBufferList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/protobuf/k1$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protobuf/k1$c;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/k1$a;)V

    :goto_b
    invoke-virtual {v1}, Lcom/google/protobuf/k1$c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Lcom/google/protobuf/k1$c;->next()Lcom/google/protobuf/ByteString$i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method public byteAt(I)B
    .registers 3

    iget v0, p0, Lcom/google/protobuf/k1;->totalLength:I

    invoke-static {p1, v0}, Lcom/google/protobuf/ByteString;->checkIndex(II)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k1;->internalByteAt(I)B

    move-result p1

    return p1
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected copyToInternal([BIII)V
    .registers 7

    add-int v0, p2, p4

    iget v1, p0, Lcom/google/protobuf/k1;->leftLength:I

    if-gt v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_23

    :cond_c
    if-lt p2, v1, :cond_15

    iget-object v0, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_23

    :cond_15
    sub-int/2addr v1, p2

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    iget-object p2, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    :goto_23
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/k1;->totalLength:I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/google/protobuf/k1;->totalLength:I

    if-nez v1, :cond_1a

    return v0

    :cond_1a
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->peekCachedHashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->peekCachedHashCode()I

    move-result v1

    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    if-eq v0, v1, :cond_29

    return v2

    :cond_29
    invoke-direct {p0, p1}, Lcom/google/protobuf/k1;->equalsFragments(Lcom/google/protobuf/ByteString;)Z

    move-result p1

    return p1
.end method

.method protected getTreeDepth()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/k1;->treeDepth:I

    return v0
.end method

.method internalByteAt(I)B
    .registers 4

    iget v0, p0, Lcom/google/protobuf/k1;->leftLength:I

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->internalByteAt(I)B

    move-result p1

    return p1

    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/google/protobuf/ByteString;->internalByteAt(I)B

    move-result p1

    return p1
.end method

.method protected isBalanced()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/k1;->totalLength:I

    iget v1, p0, Lcom/google/protobuf/k1;->treeDepth:I

    invoke-static {v1}, Lcom/google/protobuf/k1;->minLength(I)I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isValidUtf8()Z
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/k1;->leftLength:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v2, 0x1

    :cond_16
    return v2
.end method

.method public iterator()Lcom/google/protobuf/ByteString$g;
    .registers 2

    new-instance v0, Lcom/google/protobuf/k1$a;

    invoke-direct {v0, p0}, Lcom/google/protobuf/k1$a;-><init>(Lcom/google/protobuf/k1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/k1;->iterator()Lcom/google/protobuf/ByteString$g;

    move-result-object v0

    return-object v0
.end method

.method public newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/k1;->asReadOnlyByteBufferList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/lang/Iterable;Z)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lcom/google/protobuf/k1$d;

    invoke-direct {v0, p0}, Lcom/google/protobuf/k1$d;-><init>(Lcom/google/protobuf/k1;)V

    return-object v0
.end method

.method protected partialHash(III)I
    .registers 6

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/protobuf/k1;->leftLength:I

    if-gt v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    iget-object v0, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1

    :cond_17
    sub-int/2addr v1, p2

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1
.end method

.method protected partialIsValidUtf8(III)I
    .registers 6

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/protobuf/k1;->leftLength:I

    if-gt v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    iget-object v0, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1

    :cond_17
    sub-int/2addr v1, p2

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/k1;->totalLength:I

    return v0
.end method

.method public substring(II)Lcom/google/protobuf/ByteString;
    .registers 6

    iget v0, p0, Lcom/google/protobuf/k1;->totalLength:I

    invoke-static {p1, p2, v0}, Lcom/google/protobuf/ByteString;->checkRange(III)I

    move-result v0

    if-nez v0, :cond_b

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object p1

    :cond_b
    iget v1, p0, Lcom/google/protobuf/k1;->totalLength:I

    if-ne v0, v1, :cond_10

    return-object p0

    :cond_10
    iget v0, p0, Lcom/google/protobuf/k1;->leftLength:I

    if-gt p2, v0, :cond_1b

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :cond_1b
    if-lt p1, v0, :cond_26

    iget-object v1, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :cond_26
    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->substring(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/k1;->leftLength:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p2

    new-instance v0, Lcom/google/protobuf/k1;

    invoke-direct {v0, p1, p2}, Lcom/google/protobuf/k1;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method

.method protected toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method writeTo(Lcom/google/protobuf/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/k;)V

    iget-object v0, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/k;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method writeToInternal(Ljava/io/OutputStream;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/protobuf/k1;->leftLength:I

    if-gt v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_22

    :cond_c
    if-lt p2, v1, :cond_15

    iget-object v0, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_22

    :cond_15
    sub-int/2addr v1, p2

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    iget-object p2, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    :goto_22
    return-void
.end method

.method writeToReverse(Lcom/google/protobuf/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/k1;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeToReverse(Lcom/google/protobuf/k;)V

    iget-object v0, p0, Lcom/google/protobuf/k1;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeToReverse(Lcom/google/protobuf/k;)V

    return-void
.end method

###### Class com.google.protobuf.k1.a (com.google.protobuf.k1$a)
.class Lcom/google/protobuf/k1$a;
.super Lcom/google/protobuf/ByteString$c;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/k1;->iterator()Lcom/google/protobuf/ByteString$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field current:Lcom/google/protobuf/ByteString$g;

.field final pieces:Lcom/google/protobuf/k1$c;

.field final synthetic this$0:Lcom/google/protobuf/k1;


# direct methods
.method constructor <init>(Lcom/google/protobuf/k1;)V
    .registers 4

    iput-object p1, p0, Lcom/google/protobuf/k1$a;->this$0:Lcom/google/protobuf/k1;

    invoke-direct {p0}, Lcom/google/protobuf/ByteString$c;-><init>()V

    new-instance v0, Lcom/google/protobuf/k1$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/k1$c;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/k1$a;)V

    iput-object v0, p0, Lcom/google/protobuf/k1$a;->pieces:Lcom/google/protobuf/k1$c;

    invoke-direct {p0}, Lcom/google/protobuf/k1$a;->nextPiece()Lcom/google/protobuf/ByteString$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/k1$a;->current:Lcom/google/protobuf/ByteString$g;

    return-void
.end method

.method private nextPiece()Lcom/google/protobuf/ByteString$g;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/k1$a;->pieces:Lcom/google/protobuf/k1$c;

    invoke-virtual {v0}, Lcom/google/protobuf/k1$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/protobuf/k1$a;->pieces:Lcom/google/protobuf/k1$c;

    invoke-virtual {v0}, Lcom/google/protobuf/k1$c;->next()Lcom/google/protobuf/ByteString$i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->iterator()Lcom/google/protobuf/ByteString$g;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/k1$a;->current:Lcom/google/protobuf/ByteString$g;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public nextByte()B
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/k1$a;->current:Lcom/google/protobuf/ByteString$g;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/google/protobuf/ByteString$g;->nextByte()B

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/k1$a;->current:Lcom/google/protobuf/ByteString$g;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-direct {p0}, Lcom/google/protobuf/k1$a;->nextPiece()Lcom/google/protobuf/ByteString$g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/k1$a;->current:Lcom/google/protobuf/ByteString$g;

    :cond_16
    return v0

    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

###### Class com.google.protobuf.k1.b (com.google.protobuf.k1$b)
.class Lcom/google/protobuf/k1$b;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final prefixesStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/k1$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/k1$b;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/protobuf/k1$b;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/k1$b;->balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/protobuf/k1$b;->doBalance(Lcom/google/protobuf/ByteString;)V

    invoke-direct {p0, p2}, Lcom/google/protobuf/k1$b;->doBalance(Lcom/google/protobuf/ByteString;)V

    iget-object p1, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    :goto_e
    iget-object p2, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_26

    iget-object p2, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/ByteString;

    new-instance v0, Lcom/google/protobuf/k1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/google/protobuf/k1;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/k1$a;)V

    move-object p1, v0

    goto :goto_e

    :cond_26
    return-object p1
.end method

.method private doBalance(Lcom/google/protobuf/ByteString;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/google/protobuf/k1$b;->insert(Lcom/google/protobuf/ByteString;)V

    goto :goto_1e

    :cond_a
    instance-of v0, p1, Lcom/google/protobuf/k1;

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/google/protobuf/k1;

    invoke-static {p1}, Lcom/google/protobuf/k1;->access$400(Lcom/google/protobuf/k1;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/k1$b;->doBalance(Lcom/google/protobuf/ByteString;)V

    invoke-static {p1}, Lcom/google/protobuf/k1;->access$500(Lcom/google/protobuf/k1;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/k1$b;->doBalance(Lcom/google/protobuf/ByteString;)V

    :goto_1e
    return-void

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDepthBinForLength(I)I
    .registers 3

    sget-object v0, Lcom/google/protobuf/k1;->minLengthByDepth:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_d

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_d
    return p1
.end method

.method private insert(Lcom/google/protobuf/ByteString;)V
    .registers 7

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/k1$b;->getDepthBinForLength(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/google/protobuf/k1;->minLength(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_96

    iget-object v2, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_26

    goto/16 :goto_96

    :cond_26
    invoke-static {v0}, Lcom/google/protobuf/k1;->minLength(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    :goto_32
    iget-object v2, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_58

    iget-object v2, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-ge v2, v0, :cond_58

    iget-object v2, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    new-instance v4, Lcom/google/protobuf/k1;

    invoke-direct {v4, v2, v1, v3}, Lcom/google/protobuf/k1;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/k1$a;)V

    move-object v1, v4

    goto :goto_32

    :cond_58
    new-instance v0, Lcom/google/protobuf/k1;

    invoke-direct {v0, v1, p1, v3}, Lcom/google/protobuf/k1;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/k1$a;)V

    :goto_5d
    iget-object p1, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_90

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/k1$b;->getDepthBinForLength(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/protobuf/k1;->minLength(I)I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-ge v1, p1, :cond_90

    iget-object p1, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    new-instance v1, Lcom/google/protobuf/k1;

    invoke-direct {v1, p1, v0, v3}, Lcom/google/protobuf/k1;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/k1$a;)V

    move-object v0, v1

    goto :goto_5d

    :cond_90
    iget-object p1, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_9b

    :cond_96
    :goto_96
    iget-object v0, p0, Lcom/google/protobuf/k1$b;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :goto_9b
    return-void
.end method

###### Class com.google.protobuf.k1.c (com.google.protobuf.k1$c)
.class final Lcom/google/protobuf/k1$c;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/protobuf/ByteString$i;",
        ">;"
    }
.end annotation


# instance fields
.field private final breadCrumbs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/protobuf/k1;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lcom/google/protobuf/ByteString$i;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/ByteString;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/protobuf/k1;

    if-eqz v0, :cond_22

    check-cast p1, Lcom/google/protobuf/k1;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/google/protobuf/k1;->getTreeDepth()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/k1$c;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/protobuf/k1;->access$400(Lcom/google/protobuf/k1;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/k1$c;->getLeafByLeft(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString$i;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/k1$c;->next:Lcom/google/protobuf/ByteString$i;

    goto :goto_29

    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/k1$c;->breadCrumbs:Ljava/util/ArrayDeque;

    check-cast p1, Lcom/google/protobuf/ByteString$i;

    iput-object p1, p0, Lcom/google/protobuf/k1$c;->next:Lcom/google/protobuf/ByteString$i;

    :goto_29
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/k1$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/k1$c;-><init>(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private getLeafByLeft(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString$i;
    .registers 3

    :goto_0
    instance-of v0, p1, Lcom/google/protobuf/k1;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/protobuf/k1;

    iget-object v0, p0, Lcom/google/protobuf/k1$c;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/protobuf/k1;->access$400(Lcom/google/protobuf/k1;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    goto :goto_0

    :cond_10
    check-cast p1, Lcom/google/protobuf/ByteString$i;

    return-object p1
.end method

.method private getNextNonEmptyLeaf()Lcom/google/protobuf/ByteString$i;
    .registers 3

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/k1$c;->breadCrumbs:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_22

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/k1$c;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/k1;

    invoke-static {v0}, Lcom/google/protobuf/k1;->access$500(Lcom/google/protobuf/k1;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/k1$c;->getLeafByLeft(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString$i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_22
    :goto_22
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/k1$c;->next:Lcom/google/protobuf/ByteString$i;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Lcom/google/protobuf/ByteString$i;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/k1$c;->next:Lcom/google/protobuf/ByteString$i;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/protobuf/k1$c;->getNextNonEmptyLeaf()Lcom/google/protobuf/ByteString$i;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/k1$c;->next:Lcom/google/protobuf/ByteString$i;

    return-object v0

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/k1$c;->next()Lcom/google/protobuf/ByteString$i;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

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
