###### Class com.koushikdutta.quack.QuackMethodObject.AnonymousClass2 (com.koushikdutta.quack.QuackMethodObject$2)
.class Lcom/koushikdutta/quack/QuackMethodObject$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/quack/QuackMethodObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/quack/QuackMethodObject$-CC;->a(Lcom/koushikdutta/quack/QuackMethodObject;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/quack/QuackMethodObject;

.field final synthetic val$self:Lcom/koushikdutta/quack/QuackMethodObject;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/quack/QuackMethodObject;Lcom/koushikdutta/quack/QuackMethodObject;)V
    .registers 3

    iput-object p1, p0, Lcom/koushikdutta/quack/QuackMethodObject$2;->this$0:Lcom/koushikdutta/quack/QuackMethodObject;

    iput-object p2, p0, Lcom/koushikdutta/quack/QuackMethodObject$2;->val$self:Lcom/koushikdutta/quack/QuackMethodObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs callMethod(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_14

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    :goto_15
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    new-array p1, v0, [Ljava/lang/Object;

    goto :goto_3e

    :cond_1e
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/quack/JavaScriptObject;

    const-string v1, "length"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/quack/JavaScriptObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    :goto_32
    if-ge v0, v1, :cond_3d

    invoke-virtual {p1, v0}, Lcom/koushikdutta/quack/JavaScriptObject;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_3d
    move-object p1, v2

    :goto_3e
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackMethodObject$2;->val$self:Lcom/koushikdutta/quack/QuackMethodObject;

    invoke-interface {v0, p2, p1}, Lcom/koushikdutta/quack/QuackObject;->callMethod(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic construct([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/koushikdutta/quack/m0;->b(Lcom/koushikdutta/quack/QuackObject;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/koushikdutta/quack/QuackMethodObject$-CC;->a(Lcom/koushikdutta/quack/QuackMethodObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic has(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/koushikdutta/quack/m0;->d(Lcom/koushikdutta/quack/QuackObject;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/koushikdutta/quack/m0;->e(Lcom/koushikdutta/quack/QuackObject;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
