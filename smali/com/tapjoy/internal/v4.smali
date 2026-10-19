###### Class com.tapjoy.internal.v4 (com.tapjoy.internal.v4)
.class public final Lcom/tapjoy/internal/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/x3;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/tapjoy/internal/b4;)Landroid/graphics/Point;
    .registers 8

    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/k0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/k0;->I(I)V

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_58

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v2

    const-string v4, "offset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/k0;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/k0;->I(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_23
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->k()I

    move-result v2

    goto :goto_23

    :cond_3a
    const-string v6, "y"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->k()I

    move-result v4

    goto :goto_23

    :cond_47
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_23

    :cond_4b
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/k0;->I(I)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_8

    :cond_54
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_8

    :cond_58
    check-cast p0, Lcom/tapjoy/internal/k0;

    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/k0;->I(I)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/b4;)Ljava/lang/Object;
    .registers 7

    move-object v0, p1

    check-cast v0, Lcom/tapjoy/internal/k0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/k0;->I(I)V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_a
    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v0, Lcom/tapjoy/internal/n3;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/tapjoy/internal/n3;-><init>(Ljava/net/URL;)V

    goto :goto_a

    :cond_31
    const-string v4, "landscape"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-static {p1}, Lcom/tapjoy/internal/v4;->b(Lcom/tapjoy/internal/b4;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_a

    :cond_3e
    const-string v4, "portrait"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-static {p1}, Lcom/tapjoy/internal/v4;->b(Lcom/tapjoy/internal/b4;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_a

    :cond_4b
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_a

    :cond_4f
    check-cast p1, Lcom/tapjoy/internal/k0;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/k0;->I(I)V

    new-instance p1, Lcom/tapjoy/internal/g8;

    invoke-direct {p1, v0, v1, v2}, Lcom/tapjoy/internal/g8;-><init>(Lcom/tapjoy/internal/n3;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object p1
.end method
