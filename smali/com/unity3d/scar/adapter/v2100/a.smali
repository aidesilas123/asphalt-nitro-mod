###### Class com.unity3d.scar.adapter.v2100.a (com.unity3d.scar.adapter.v2100.a)
.class public Lcom/unity3d/scar/adapter/v2100/a;
.super Lcom/unity3d/scar/adapter/common/i;
.source "ScarAdapter.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/d;


# instance fields
.field private e:Lcom/unity3d/scar/adapter/v2100/b/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/b;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/scar/adapter/common/b<",
            "Lcom/unity3d/scar/adapter/common/j;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/unity3d/scar/adapter/common/i;-><init>(Lcom/unity3d/scar/adapter/common/b;)V

    new-instance p1, Lcom/unity3d/scar/adapter/v2100/b/a;

    new-instance v0, Lcom/unity3d/scar/adapter/common/k/a;

    invoke-direct {v0, p2}, Lcom/unity3d/scar/adapter/common/k/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/unity3d/scar/adapter/v2100/b/a;-><init>(Lcom/unity3d/scar/adapter/common/k/a;)V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/a;->e:Lcom/unity3d/scar/adapter/v2100/b/a;

    new-instance p2, Lcom/unity3d/scar/adapter/v2100/d/b;

    invoke-direct {p2, p1}, Lcom/unity3d/scar/adapter/v2100/d/b;-><init>(Lcom/unity3d/scar/adapter/v2100/b/a;)V

    iput-object p2, p0, Lcom/unity3d/scar/adapter/common/i;->a:Lcom/unity3d/scar/adapter/common/l/c;

    return-void
.end method

.method static synthetic g(Lcom/unity3d/scar/adapter/v2100/a;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/common/i;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lcom/unity3d/scar/adapter/v2100/a;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/common/i;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/unity3d/scar/adapter/common/scarads/c;IILcom/unity3d/scar/adapter/common/e;)V
    .registers 18

    move-object v0, p0

    new-instance v10, Lcom/unity3d/scar/adapter/v2100/c/c;

    iget-object v4, v0, Lcom/unity3d/scar/adapter/v2100/a;->e:Lcom/unity3d/scar/adapter/v2100/b/a;

    iget-object v8, v0, Lcom/unity3d/scar/adapter/common/i;->d:Lcom/unity3d/scar/adapter/common/b;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/unity3d/scar/adapter/v2100/c/c;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/unity3d/scar/adapter/v2100/b/a;Lcom/unity3d/scar/adapter/common/scarads/c;IILcom/unity3d/scar/adapter/common/b;Lcom/unity3d/scar/adapter/common/e;)V

    new-instance v1, Lcom/unity3d/scar/adapter/v2100/a$c;

    invoke-direct {v1, p0, v10}, Lcom/unity3d/scar/adapter/v2100/a$c;-><init>(Lcom/unity3d/scar/adapter/v2100/a;Lcom/unity3d/scar/adapter/v2100/c/c;)V

    invoke-static {v1}, Lcom/unity3d/scar/adapter/common/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/g;)V
    .registers 11

    new-instance v6, Lcom/unity3d/scar/adapter/v2100/c/g;

    iget-object v2, p0, Lcom/unity3d/scar/adapter/v2100/a;->e:Lcom/unity3d/scar/adapter/v2100/b/a;

    iget-object v4, p0, Lcom/unity3d/scar/adapter/common/i;->d:Lcom/unity3d/scar/adapter/common/b;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/scar/adapter/v2100/c/g;-><init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/v2100/b/a;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/b;Lcom/unity3d/scar/adapter/common/g;)V

    new-instance p1, Lcom/unity3d/scar/adapter/v2100/a$b;

    invoke-direct {p1, p0, v6, p2}, Lcom/unity3d/scar/adapter/v2100/a$b;-><init>(Lcom/unity3d/scar/adapter/v2100/a;Lcom/unity3d/scar/adapter/v2100/c/g;Lcom/unity3d/scar/adapter/common/scarads/c;)V

    invoke-static {p1}, Lcom/unity3d/scar/adapter/common/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/f;)V
    .registers 11

    new-instance v6, Lcom/unity3d/scar/adapter/v2100/c/e;

    iget-object v2, p0, Lcom/unity3d/scar/adapter/v2100/a;->e:Lcom/unity3d/scar/adapter/v2100/b/a;

    iget-object v4, p0, Lcom/unity3d/scar/adapter/common/i;->d:Lcom/unity3d/scar/adapter/common/b;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/scar/adapter/v2100/c/e;-><init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/v2100/b/a;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/b;Lcom/unity3d/scar/adapter/common/f;)V

    new-instance p1, Lcom/unity3d/scar/adapter/v2100/a$a;

    invoke-direct {p1, p0, v6, p2}, Lcom/unity3d/scar/adapter/v2100/a$a;-><init>(Lcom/unity3d/scar/adapter/v2100/a;Lcom/unity3d/scar/adapter/v2100/c/e;Lcom/unity3d/scar/adapter/common/scarads/c;)V

    invoke-static {p1}, Lcom/unity3d/scar/adapter/common/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
