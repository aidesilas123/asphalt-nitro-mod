###### Class com.fyber.inneractive.sdk.util.d (com.fyber.inneractive.sdk.util.d)
.class public Lcom/fyber/inneractive/sdk/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/fyber/inneractive/sdk/util/d;


# instance fields
.field public a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/util/d;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/util/d;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/util/d;->b:Lcom/fyber/inneractive/sdk/util/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/util/d;->a:Ljava/util/Queue;

    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/util/d;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/util/d;->a:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .registers 2

    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/ByteBuffer;)[B
    .registers 3

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_d
    const/16 p1, 0x2000

    new-array p1, p1, [B

    return-object p1
.end method

.method public b()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/d;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_10

    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_10
    return-object v0
.end method
