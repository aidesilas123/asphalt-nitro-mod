###### Class com.koushikdutta.quack.j (com.koushikdutta.quack.j)
.class public final synthetic Lcom/koushikdutta/quack/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/quack/JavaScriptObject;

.field public final synthetic b:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/quack/JavaScriptObject;Ljava/lang/reflect/InvocationHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/quack/j;->a:Lcom/koushikdutta/quack/JavaScriptObject;

    iput-object p2, p0, Lcom/koushikdutta/quack/j;->b:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/koushikdutta/quack/j;->a:Lcom/koushikdutta/quack/JavaScriptObject;

    iget-object v1, p0, Lcom/koushikdutta/quack/j;->b:Ljava/lang/reflect/InvocationHandler;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/koushikdutta/quack/JavaScriptObject;->b(Ljava/lang/reflect/InvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
