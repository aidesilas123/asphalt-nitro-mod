###### Class com.tapjoy.internal.m9 (com.tapjoy.internal.m9)
.class public final Lcom/tapjoy/internal/m9;
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
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->t()I

    move-result v1

    invoke-static {v1}, Lcom/tapjoy/internal/k;->b(I)I

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_7c

    if-ne v1, v2, :cond_68

    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/k0;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/k0;->I(I)V

    :goto_19
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_19

    :cond_32
    const-string v3, "top"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_19

    :cond_41
    const-string v3, "right"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_19

    :cond_50
    const-string v3, "bottom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_19

    :cond_5f
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_19

    :cond_63
    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/k0;->I(I)V

    goto :goto_a8

    :cond_68
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->t()I

    move-result p1

    invoke-static {p1}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unexpected token: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/k0;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/k0;->I(I)V

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_9b
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_9b

    :cond_a5
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/k0;->I(I)V

    :goto_a8
    return-object v0
.end method
