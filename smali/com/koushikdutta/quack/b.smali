###### Class com.koushikdutta.quack.b (com.koushikdutta.quack.b)
.class public final synthetic Lcom/koushikdutta/quack/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/quack/JSValue;

.field public final synthetic b:Lcom/koushikdutta/quack/JSValue;

.field public final synthetic c:Lcom/koushikdutta/quack/JSValue;

.field public final synthetic d:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Ljava/lang/Class;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/quack/b;->a:Lcom/koushikdutta/quack/JSValue;

    iput-object p2, p0, Lcom/koushikdutta/quack/b;->b:Lcom/koushikdutta/quack/JSValue;

    iput-object p3, p0, Lcom/koushikdutta/quack/b;->c:Lcom/koushikdutta/quack/JSValue;

    iput-object p4, p0, Lcom/koushikdutta/quack/b;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 5

    iget-object v0, p0, Lcom/koushikdutta/quack/b;->a:Lcom/koushikdutta/quack/JSValue;

    iget-object v1, p0, Lcom/koushikdutta/quack/b;->b:Lcom/koushikdutta/quack/JSValue;

    iget-object v2, p0, Lcom/koushikdutta/quack/b;->c:Lcom/koushikdutta/quack/JSValue;

    iget-object v3, p0, Lcom/koushikdutta/quack/b;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/quack/JSValue;->a(Lcom/koushikdutta/quack/JSValue;Lcom/koushikdutta/quack/JSValue;Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
