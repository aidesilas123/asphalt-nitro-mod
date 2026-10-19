###### Class com.koushikdutta.quack.JSValue.AnonymousClass1 (com.koushikdutta.quack.JSValue$1)
.class Lcom/koushikdutta/quack/JSValue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/quack/JSValue;->lambda$asIterable$0(Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Ljava/lang/Class;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field current:Lcom/koushikdutta/quack/JSValue;

.field final synthetic this$0:Lcom/koushikdutta/quack/JSValue;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$iterator:Lcom/koushikdutta/quack/JSValue;

.field final synthetic val$iteratorNext:Lcom/koushikdutta/quack/JSValue;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Ljava/lang/Class;)V
    .registers 5

    iput-object p1, p0, Lcom/koushikdutta/quack/JSValue$1;->this$0:Lcom/koushikdutta/quack/JSValue;

    iput-object p2, p0, Lcom/koushikdutta/quack/JSValue$1;->val$iteratorNext:Lcom/koushikdutta/quack/JSValue;

    iput-object p3, p0, Lcom/koushikdutta/quack/JSValue$1;->val$iterator:Lcom/koushikdutta/quack/JSValue;

    iput-object p4, p0, Lcom/koushikdutta/quack/JSValue$1;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private maybeNext()V
    .registers 4

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue$1;->current:Lcom/koushikdutta/quack/JSValue;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue$1;->val$iteratorNext:Lcom/koushikdutta/quack/JSValue;

    iget-object v1, p0, Lcom/koushikdutta/quack/JSValue$1;->val$iterator:Lcom/koushikdutta/quack/JSValue;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/quack/JSValue;->apply(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/koushikdutta/quack/JSValue;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/quack/JSValue$1;->current:Lcom/koushikdutta/quack/JSValue;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    invoke-direct {p0}, Lcom/koushikdutta/quack/JSValue$1;->maybeNext()V

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue$1;->current:Lcom/koushikdutta/quack/JSValue;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/quack/JSValue;->get(Ljava/lang/Object;)Lcom/koushikdutta/quack/JSValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/quack/JSValue;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/koushikdutta/quack/JSValue$1;->maybeNext()V

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue$1;->current:Lcom/koushikdutta/quack/JSValue;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/quack/JSValue;->get(Ljava/lang/Object;)Lcom/koushikdutta/quack/JSValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/quack/JSValue;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/koushikdutta/quack/JSValue$1;->current:Lcom/koushikdutta/quack/JSValue;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/quack/JSValue;->get(Ljava/lang/Object;)Lcom/koushikdutta/quack/JSValue;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/quack/JSValue$1;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/quack/JSValue;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/koushikdutta/quack/JSValue$1;->current:Lcom/koushikdutta/quack/JSValue;

    return-object v0

    :cond_29
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "end of iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
