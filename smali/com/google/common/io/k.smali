###### Class com.google.common.io.k (com.google.common.io.k)
.class public final Lcom/google/common/io/k;
.super Ljava/lang/Object;
.source "LineReader.java"


# instance fields
.field private final a:Ljava/lang/Readable;

.field private final b:Ljava/io/Reader;

.field private final c:Ljava/nio/CharBuffer;

.field private final d:[C

.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/common/io/i;


# direct methods
.method public constructor <init>(Ljava/lang/Readable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/io/CharStreams;->c()Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/k;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/k;->d:[C

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/k;->e:Ljava/util/Queue;

    new-instance v0, Lcom/google/common/io/k$a;

    invoke-direct {v0, p0}, Lcom/google/common/io/k$a;-><init>(Lcom/google/common/io/k;)V

    iput-object v0, p0, Lcom/google/common/io/k;->f:Lcom/google/common/io/i;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    iput-object v0, p0, Lcom/google/common/io/k;->a:Ljava/lang/Readable;

    instance-of v0, p1, Ljava/io/Reader;

    if-eqz v0, :cond_2c

    check-cast p1, Ljava/io/Reader;

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    iput-object p1, p0, Lcom/google/common/io/k;->b:Ljava/io/Reader;

    return-void
.end method

.method static synthetic a(Lcom/google/common/io/k;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Lcom/google/common/io/k;->e:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/common/io/k;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/common/io/k;->c:Ljava/nio/CharBuffer;

    invoke-static {v0}, Lcom/google/common/io/h;->a(Ljava/nio/Buffer;)V

    iget-object v0, p0, Lcom/google/common/io/k;->b:Ljava/io/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v2, p0, Lcom/google/common/io/k;->d:[C

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    goto :goto_22

    :cond_1a
    iget-object v0, p0, Lcom/google/common/io/k;->a:Ljava/lang/Readable;

    iget-object v2, p0, Lcom/google/common/io/k;->c:Ljava/nio/CharBuffer;

    invoke-interface {v0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    :goto_22
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2b

    iget-object v0, p0, Lcom/google/common/io/k;->f:Lcom/google/common/io/i;

    invoke-virtual {v0}, Lcom/google/common/io/i;->b()V

    goto :goto_33

    :cond_2b
    iget-object v2, p0, Lcom/google/common/io/k;->f:Lcom/google/common/io/i;

    iget-object v3, p0, Lcom/google/common/io/k;->d:[C

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/common/io/i;->a([CII)V

    goto :goto_0

    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/google/common/io/k;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.common.io.k.a (com.google.common.io.k$a)
.class Lcom/google/common/io/k$a;
.super Lcom/google/common/io/i;
.source "LineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/io/k;


# direct methods
.method constructor <init>(Lcom/google/common/io/k;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/io/k$a;->c:Lcom/google/common/io/k;

    invoke-direct {p0}, Lcom/google/common/io/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p2, p0, Lcom/google/common/io/k$a;->c:Lcom/google/common/io/k;

    invoke-static {p2}, Lcom/google/common/io/k;->a(Lcom/google/common/io/k;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
