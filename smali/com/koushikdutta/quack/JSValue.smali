###### Class com.koushikdutta.quack.JSValue (com.koushikdutta.quack.JSValue)
.class public Lcom/koushikdutta/quack/JSValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/quack/QuackJavaObject;


# instance fields
.field quack:Lcom/koushikdutta/quack/QuackContext;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/quack/QuackContext;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/quack/JSValue;->quack:Lcom/koushikdutta/quack/QuackContext;

    iput-object p2, p0, Lcom/koushikdutta/quack/JSValue;->value:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$asIterable$0(Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Ljava/lang/Class;)Ljava/util/Iterator;
    .registers 5

    new-instance v0, Lcom/koushikdutta/quack/JSValue$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/koushikdutta/quack/JSValue$1;-><init>(Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Ljava/lang/Class;)V

    return-object v0
.end method

.method private quackify()Lcom/koushikdutta/quack/QuackObject;
    .registers 4

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue;->value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/koushikdutta/quack/QuackObject;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/koushikdutta/quack/QuackObject;

    return-object v0

    :cond_9
    new-instance v1, Lcom/koushikdutta/quack/JavaObject;

    iget-object v2, p0, Lcom/koushikdutta/quack/JSValue;->quack:Lcom/koushikdutta/quack/QuackContext;

    invoke-direct {v1, v2, v0}, Lcom/koushikdutta/quack/JavaObject;-><init>(Lcom/koushikdutta/quack/QuackContext;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public synthetic a(Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Ljava/lang/Class;)Ljava/util/Iterator;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/quack/JSValue;->lambda$asIterable$0(Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public varargs apply(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/koushikdutta/quack/JSValue;
    .registers 6

    new-instance v0, Lcom/koushikdutta/quack/JSValue;

    iget-object v1, p0, Lcom/koushikdutta/quack/JSValue;->quack:Lcom/koushikdutta/quack/QuackContext;

    invoke-direct {p0}, Lcom/koushikdutta/quack/JSValue;->quackify()Lcom/koushikdutta/quack/QuackObject;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/koushikdutta/quack/QuackObject;->callMethod(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/quack/JSValue;-><init>(Lcom/koushikdutta/quack/QuackContext;Ljava/lang/Object;)V

    return-object v0
.end method

.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue;->quack:Lcom/koushikdutta/quack/QuackContext;

    iget-object v1, p0, Lcom/koushikdutta/quack/JSValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/quack/QuackContext;->coerceJavaScriptToJava(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asIterable(Ljava/lang/Class;)Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue;->quack:Lcom/koushikdutta/quack/QuackContext;

    const-string v1, "Symbol"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/quack/QuackContext;->evaluateForJavaScriptObject(Ljava/lang/String;)Lcom/koushikdutta/quack/JavaScriptObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/quack/JavaScriptObject;->asJSValue()Lcom/koushikdutta/quack/JSValue;

    move-result-object v0

    const-string v1, "iterator"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/quack/JSValue;->get(Ljava/lang/Object;)Lcom/koushikdutta/quack/JSValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/quack/JSValue;->get(Ljava/lang/Object;)Lcom/koushikdutta/quack/JSValue;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/koushikdutta/quack/JSValue;->apply(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/koushikdutta/quack/JSValue;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/quack/JSValue;->get(Ljava/lang/Object;)Lcom/koushikdutta/quack/JSValue;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/quack/b;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/koushikdutta/quack/b;-><init>(Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Ljava/lang/Class;)V

    return-object v2
.end method

.method public varargs construct([Ljava/lang/Object;)Lcom/koushikdutta/quack/JSValue;
    .registers 5

    new-instance v0, Lcom/koushikdutta/quack/JSValue;

    iget-object v1, p0, Lcom/koushikdutta/quack/JSValue;->quack:Lcom/koushikdutta/quack/QuackContext;

    invoke-direct {p0}, Lcom/koushikdutta/quack/JSValue;->quackify()Lcom/koushikdutta/quack/QuackObject;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/koushikdutta/quack/QuackObject;->construct([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/quack/JSValue;-><init>(Lcom/koushikdutta/quack/QuackContext;Ljava/lang/Object;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/koushikdutta/quack/JSValue;
    .registers 5

    new-instance v0, Lcom/koushikdutta/quack/JSValue;

    iget-object v1, p0, Lcom/koushikdutta/quack/JSValue;->quack:Lcom/koushikdutta/quack/QuackContext;

    invoke-direct {p0}, Lcom/koushikdutta/quack/JSValue;->quackify()Lcom/koushikdutta/quack/QuackObject;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/koushikdutta/quack/QuackObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/quack/JSValue;-><init>(Lcom/koushikdutta/quack/QuackContext;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public has(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0}, Lcom/koushikdutta/quack/JSValue;->quackify()Lcom/koushikdutta/quack/QuackObject;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/quack/QuackObject;->has(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isByteBuffer()Z
    .registers 2

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    return v0
.end method

.method public isJavaScriptObject()Z
    .registers 2

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/koushikdutta/quack/JavaScriptObject;

    return v0
.end method

.method public isNullOrUndefined()Z
    .registers 2

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNumber()Z
    .registers 2

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public isString()Z
    .registers 2

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0}, Lcom/koushikdutta/quack/JSValue;->quackify()Lcom/koushikdutta/quack/QuackObject;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/quack/QuackObject;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-string v0, "null"

    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
