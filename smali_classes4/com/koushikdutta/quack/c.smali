###### Class com.koushikdutta.quack.c (com.koushikdutta.quack.c)
.class public final synthetic Lcom/koushikdutta/quack/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/quack/MemoizeFunc;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/quack/JavaMethodObject;

.field public final synthetic b:[Ljava/lang/reflect/Method;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/quack/JavaMethodObject;[Ljava/lang/reflect/Method;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/quack/c;->a:Lcom/koushikdutta/quack/JavaMethodObject;

    iput-object p2, p0, Lcom/koushikdutta/quack/c;->b:[Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/koushikdutta/quack/c;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final process()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/koushikdutta/quack/c;->a:Lcom/koushikdutta/quack/JavaMethodObject;

    iget-object v1, p0, Lcom/koushikdutta/quack/c;->b:[Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/koushikdutta/quack/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/quack/JavaMethodObject;->a([Ljava/lang/reflect/Method;Ljava/util/ArrayList;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
