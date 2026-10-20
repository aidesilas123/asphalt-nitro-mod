###### Class com.koushikdutta.quack.QuackMethodObject.CC (com.koushikdutta.quack.QuackMethodObject$-CC)
.class public final synthetic Lcom/koushikdutta/quack/QuackMethodObject$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/koushikdutta/quack/QuackMethodObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string v0, "call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p1, Lcom/koushikdutta/quack/QuackMethodObject$1;

    invoke-direct {p1, p0, p0}, Lcom/koushikdutta/quack/QuackMethodObject$1;-><init>(Lcom/koushikdutta/quack/QuackMethodObject;Lcom/koushikdutta/quack/QuackMethodObject;)V

    return-object p1

    :cond_e
    const-string v0, "apply"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p1, Lcom/koushikdutta/quack/QuackMethodObject$2;

    invoke-direct {p1, p0, p0}, Lcom/koushikdutta/quack/QuackMethodObject$2;-><init>(Lcom/koushikdutta/quack/QuackMethodObject;Lcom/koushikdutta/quack/QuackMethodObject;)V

    return-object p1

    :cond_1c
    const-string v0, "toString"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    new-instance p1, Lcom/koushikdutta/quack/QuackMethodObject$3;

    invoke-direct {p1, p0}, Lcom/koushikdutta/quack/QuackMethodObject$3;-><init>(Lcom/koushikdutta/quack/QuackMethodObject;)V

    return-object p1

    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method
