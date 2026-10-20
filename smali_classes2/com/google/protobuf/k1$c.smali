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
