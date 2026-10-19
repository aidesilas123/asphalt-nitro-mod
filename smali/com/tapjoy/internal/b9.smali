###### Class com.tapjoy.internal.b9 (com.tapjoy.internal.b9)
.class public final Lcom/tapjoy/internal/b9;
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
    .registers 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/k0;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/k0;->I(I)V

    :goto_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_c

    :cond_25
    const-string v2, "y"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_c

    :cond_34
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_c

    :cond_38
    check-cast p1, Lcom/tapjoy/internal/k0;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/k0;->I(I)V

    return-object v0
.end method
