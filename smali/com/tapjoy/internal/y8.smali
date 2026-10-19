###### Class com.tapjoy.internal.y8 (com.tapjoy.internal.y8)
.class public final Lcom/tapjoy/internal/y8;
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


# virtual methods
.method public final a(Lcom/tapjoy/internal/b4;)Ljava/lang/Object;
    .registers 13

    move-object v0, p1

    check-cast v0, Lcom/tapjoy/internal/k0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/k0;->I(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    move-object v4, v0

    move-object v5, v4

    move-object v8, v5

    move-object v9, v8

    move-object v10, v9

    move-object v7, v2

    const/4 v6, 0x0

    :goto_12
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "region"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v0, Lcom/tapjoy/internal/g;->b:Lcom/tapjoy/internal/m9;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/m9;->a(Lcom/tapjoy/internal/b4;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_12

    :cond_2e
    const-string v1, "value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    :cond_3b
    const-string v1, "dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->i()Z

    move-result v6

    goto :goto_12

    :cond_48
    const-string v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    :cond_55
    const-string v1, "redirect_url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->q()Ljava/lang/String;

    move-result-object v8

    goto :goto_12

    :cond_62
    const-string v1, "ad_content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->q()Ljava/lang/String;

    move-result-object v9

    goto :goto_12

    :cond_6f
    invoke-static {v0}, Lcom/tapjoy/internal/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-static {v0, p1}, Lcom/tapjoy/internal/b;->a(Ljava/lang/String;Lcom/tapjoy/internal/b4;)Lcom/tapjoy/internal/b;

    move-result-object v10

    goto :goto_12

    :cond_7a
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_12

    :cond_7e
    check-cast p1, Lcom/tapjoy/internal/k0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/k0;->I(I)V

    new-instance p1, Lcom/tapjoy/internal/j9;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/tapjoy/internal/j9;-><init>(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/b;)V

    return-object p1
.end method
