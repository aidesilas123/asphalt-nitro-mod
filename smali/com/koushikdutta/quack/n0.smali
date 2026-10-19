###### Class com.koushikdutta.quack.n0 (com.koushikdutta.quack.n0)
.class public final synthetic Lcom/koushikdutta/quack/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/koushikdutta/quack/QuackReadonlyObject;ILjava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/koushikdutta/quack/QuackReadonlyObject;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static b(Lcom/koushikdutta/quack/QuackReadonlyObject;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "can not set property on a JavaObject"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Lcom/koushikdutta/quack/QuackReadonlyObject;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    invoke-interface {p0, p1, p2}, Lcom/koushikdutta/quack/QuackReadonlyObject;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
