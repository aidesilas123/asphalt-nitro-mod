###### Class com.tapjoy.internal.u0 (com.tapjoy.internal.u0)
.class public final Lcom/tapjoy/internal/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/p0;


# instance fields
.field public final b:Lcom/tapjoy/internal/d5;

.field public final c:Lcom/tapjoy/internal/d5;

.field public final d:Lcom/tapjoy/internal/d5;

.field public final e:Lcom/tapjoy/internal/d5;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final k:Z

.field public final l:Lcom/tapjoy/internal/n3;

.field public final m:Lcom/tapjoy/internal/n3;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/p0;

    invoke-direct {v0}, Lcom/tapjoy/internal/p0;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/u0;->a:Lcom/tapjoy/internal/p0;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/b4;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/tapjoy/internal/u0;->f:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/tapjoy/internal/u0;->g:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tapjoy/internal/u0;->k:Z

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->a()V

    :goto_11
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v2

    if-eqz v2, :cond_151

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/d5;->a(Ljava/lang/String;)Lcom/tapjoy/internal/d5;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/u0;->b:Lcom/tapjoy/internal/d5;

    goto :goto_11

    :cond_2e
    const-string v3, "y"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/d5;->a(Ljava/lang/String;)Lcom/tapjoy/internal/d5;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/u0;->c:Lcom/tapjoy/internal/d5;

    goto :goto_11

    :cond_41
    const-string v3, "width"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/d5;->a(Ljava/lang/String;)Lcom/tapjoy/internal/d5;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/u0;->d:Lcom/tapjoy/internal/d5;

    goto :goto_11

    :cond_54
    const-string v3, "height"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/d5;->a(Ljava/lang/String;)Lcom/tapjoy/internal/d5;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/u0;->e:Lcom/tapjoy/internal/d5;

    goto :goto_11

    :cond_67
    const-string v3, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/u0;->h:Ljava/lang/String;

    goto :goto_11

    :cond_76
    const-string v3, "redirect_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/u0;->i:Ljava/lang/String;

    goto :goto_11

    :cond_85
    const-string v3, "ad_content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/u0;->j:Ljava/lang/String;

    goto/16 :goto_11

    :cond_95
    const-string v3, "dismiss"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->i()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tapjoy/internal/u0;->k:Z

    goto/16 :goto_11

    :cond_a5
    const-string v3, "value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    goto/16 :goto_11

    :cond_b2
    const-string v3, "image"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    sget-object v2, Lcom/tapjoy/internal/n3;->b:Lcom/tapjoy/internal/e3;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/b4;->b(Lcom/tapjoy/internal/x3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/n3;

    iput-object v2, p0, Lcom/tapjoy/internal/u0;->l:Lcom/tapjoy/internal/n3;

    goto/16 :goto_11

    :cond_c6
    const-string v3, "image_clicked"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_da

    sget-object v2, Lcom/tapjoy/internal/n3;->b:Lcom/tapjoy/internal/e3;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/b4;->b(Lcom/tapjoy/internal/x3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/n3;

    iput-object v2, p0, Lcom/tapjoy/internal/u0;->m:Lcom/tapjoy/internal/n3;

    goto/16 :goto_11

    :cond_da
    const-string v3, "align"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    iput v0, p0, Lcom/tapjoy/internal/u0;->f:I

    goto/16 :goto_11

    :cond_f2
    const-string v3, "right"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_100

    const/16 v2, 0xb

    iput v2, p0, Lcom/tapjoy/internal/u0;->f:I

    goto/16 :goto_11

    :cond_100
    const-string v3, "center"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    const/16 v2, 0xe

    iput v2, p0, Lcom/tapjoy/internal/u0;->f:I

    goto/16 :goto_11

    :cond_10e
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto/16 :goto_11

    :cond_113
    const-string v3, "valign"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14c

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "top"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    iput v1, p0, Lcom/tapjoy/internal/u0;->g:I

    goto/16 :goto_11

    :cond_12b
    const-string v3, "middle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_139

    const/16 v2, 0xf

    iput v2, p0, Lcom/tapjoy/internal/u0;->g:I

    goto/16 :goto_11

    :cond_139
    const-string v3, "bottom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_147

    const/16 v2, 0xc

    iput v2, p0, Lcom/tapjoy/internal/u0;->g:I

    goto/16 :goto_11

    :cond_147
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto/16 :goto_11

    :cond_14c
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto/16 :goto_11

    :cond_151
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->d()V

    return-void
.end method
