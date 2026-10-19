###### Class com.fyber.inneractive.sdk.protobuf.i.a (com.fyber.inneractive.sdk.protobuf.i$a)
.class public Lcom/fyber/inneractive/sdk/protobuf/i$a;
.super Lcom/fyber/inneractive/sdk/protobuf/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/protobuf/i;->f()Lcom/fyber/inneractive/sdk/protobuf/i$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic c:Lcom/fyber/inneractive/sdk/protobuf/i;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->c:Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->a:I

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->b:I

    return-void
.end method


# virtual methods
.method public a()B
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->a:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->b:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->a:I

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->c:Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->d(I)B

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->a:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->b:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
