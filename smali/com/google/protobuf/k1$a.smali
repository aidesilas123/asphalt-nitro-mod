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
