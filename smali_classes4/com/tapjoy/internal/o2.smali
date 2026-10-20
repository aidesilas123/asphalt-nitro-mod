###### Class com.tapjoy.internal.o2 (com.tapjoy.internal.o2)
.class public final Lcom/tapjoy/internal/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/f2;


# instance fields
.field public final b:Lcom/tapjoy/internal/l1;

.field public final c:Landroid/graphics/PointF;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/f2;

    invoke-direct {v0}, Lcom/tapjoy/internal/f2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/o2;->a:Lcom/tapjoy/internal/f2;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/b4;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tapjoy/internal/l1;->a:Lcom/tapjoy/internal/l1;

    iput-object v0, p0, Lcom/tapjoy/internal/o2;->b:Lcom/tapjoy/internal/l1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/o2;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->a()V

    :cond_11
    :goto_11
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buttons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->f()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->d:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/u0;->a:Lcom/tapjoy/internal/p0;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/b4;->c(Ljava/util/ArrayList;Lcom/tapjoy/internal/x3;)V

    goto :goto_11

    :cond_31
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_11

    :cond_35
    const-string v1, "window_aspect_ratio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->g()Z

    move-result v0

    if-eqz v0, :cond_8c

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->a()V

    :goto_4b
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->j()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_4b

    :cond_65
    const-string v2, "height"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->j()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_4b

    :cond_75
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_4b

    :cond_79
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->d()V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_11

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_11

    iput-object v0, p0, Lcom/tapjoy/internal/o2;->c:Landroid/graphics/PointF;

    goto :goto_11

    :cond_8c
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_11

    :cond_90
    const-string v1, "orientation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    sget-object v0, Lcom/tapjoy/internal/l1;->c:Lcom/tapjoy/internal/l1;

    iput-object v0, p0, Lcom/tapjoy/internal/o2;->b:Lcom/tapjoy/internal/l1;

    goto/16 :goto_11

    :cond_aa
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/tapjoy/internal/l1;->b:Lcom/tapjoy/internal/l1;

    iput-object v0, p0, Lcom/tapjoy/internal/o2;->b:Lcom/tapjoy/internal/l1;

    goto/16 :goto_11

    :cond_b8
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto/16 :goto_11

    :cond_bd
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->d()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 7

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/u0;

    iget-object v4, v1, Lcom/tapjoy/internal/u0;->l:Lcom/tapjoy/internal/n3;

    if-eqz v4, :cond_26

    iget-object v5, v4, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-nez v5, :cond_23

    iget-object v4, v4, Lcom/tapjoy/internal/n3;->e:[B

    if-eqz v4, :cond_21

    goto :goto_23

    :cond_21
    const/4 v4, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v4, 0x1

    :goto_24
    if-eqz v4, :cond_38

    :cond_26
    iget-object v1, v1, Lcom/tapjoy/internal/u0;->m:Lcom/tapjoy/internal/n3;

    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-nez v4, :cond_34

    iget-object v1, v1, Lcom/tapjoy/internal/n3;->e:[B

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :cond_34
    :goto_34
    if-nez v3, :cond_6

    goto :goto_38

    :cond_37
    const/4 v2, 0x1

    :cond_38
    :goto_38
    return v2
.end method
