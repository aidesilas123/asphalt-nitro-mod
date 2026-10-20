###### Class com.koushikdutta.quack.c0 (com.koushikdutta.quack.c0)
.class public final synthetic Lcom/koushikdutta/quack/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/quack/QuackContext$Thrower;


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/quack/c0;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final doThrow()V
    .registers 2

    iget-object v0, p0, Lcom/koushikdutta/quack/c0;->a:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/koushikdutta/quack/QuackContext;->lambda$newError$26(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    throw v0
.end method
