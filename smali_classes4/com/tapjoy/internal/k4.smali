###### Class com.tapjoy.internal.k4 (com.tapjoy.internal.k4)
.class public final Lcom/tapjoy/internal/k4;
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
    .registers 8

    move-object v0, p1

    check-cast v0, Lcom/tapjoy/internal/k0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/k0;->I(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v1, v0

    move-object v2, v1

    const/4 v3, 0x1

    :goto_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_23
    const-string v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_30
    const-string v5, "quantity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result v3

    goto :goto_c

    :cond_3d
    const-string v5, "token"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_4a
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_c

    :cond_4e
    check-cast p1, Lcom/tapjoy/internal/k0;

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/tapjoy/internal/k0;->I(I)V

    new-instance p1, Lcom/tapjoy/internal/x4;

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/tapjoy/internal/x4;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method
