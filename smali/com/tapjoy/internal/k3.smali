###### Class com.tapjoy.internal.k3 (com.tapjoy.internal.k3)
.class public final Lcom/tapjoy/internal/k3;
.super Lcom/tapjoy/internal/n8;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tapjoy/internal/v1;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/v1;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/tapjoy/internal/n8;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/k3;->a:Lcom/tapjoy/internal/v1;

    iput-object p2, p0, Lcom/tapjoy/internal/k3;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/k3;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/k0;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/k0;->I(I)V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/k0;->e()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {p1}, Lcom/tapjoy/internal/k0;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, "interstitial"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->v()Z

    move-result v1

    if-eqz v1, :cond_22

    move-object v1, v0

    goto :goto_8

    :cond_22
    new-instance v1, Lcom/tapjoy/internal/t3;

    invoke-direct {v1, p1}, Lcom/tapjoy/internal/t3;-><init>(Lcom/tapjoy/internal/b4;)V

    goto :goto_8

    :cond_28
    const-string v5, "contextual_button"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->v()Z

    move-result v2

    if-eqz v2, :cond_38

    move-object v2, v0

    goto :goto_8

    :cond_38
    new-instance v2, Lcom/tapjoy/internal/t5;

    invoke-direct {v2, p1}, Lcom/tapjoy/internal/t5;-><init>(Lcom/tapjoy/internal/b4;)V

    goto :goto_8

    :cond_3e
    const-string v5, "enabled_placements"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->l()Ljava/util/LinkedList;

    move-result-object v3

    goto :goto_8

    :cond_4b
    invoke-virtual {p1}, Lcom/tapjoy/internal/k0;->u()V

    goto :goto_8

    :cond_4f
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/k0;->I(I)V

    if-eqz v1, :cond_87

    iget-object p1, v1, Lcom/tapjoy/internal/t3;->c:Lcom/tapjoy/internal/n3;

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_65

    iget-object v5, v1, Lcom/tapjoy/internal/t3;->a:Lcom/tapjoy/internal/n3;

    if-eqz v5, :cond_65

    iget-object v5, v1, Lcom/tapjoy/internal/t3;->e:Lcom/tapjoy/internal/n3;

    if-eqz v5, :cond_65

    const/4 v5, 0x1

    goto :goto_66

    :cond_65
    const/4 v5, 0x0

    :goto_66
    if-nez v5, :cond_76

    if-eqz p1, :cond_73

    iget-object p1, v1, Lcom/tapjoy/internal/t3;->b:Lcom/tapjoy/internal/n3;

    if-eqz p1, :cond_73

    iget-object p1, v1, Lcom/tapjoy/internal/t3;->f:Lcom/tapjoy/internal/n3;

    if-eqz p1, :cond_73

    goto :goto_74

    :cond_73
    const/4 v0, 0x0

    :goto_74
    if-eqz v0, :cond_87

    :cond_76
    new-instance p1, Lcom/tapjoy/internal/z2;

    new-instance v0, Lcom/tapjoy/internal/i6;

    iget-object v2, p0, Lcom/tapjoy/internal/k3;->a:Lcom/tapjoy/internal/v1;

    iget-object v4, p0, Lcom/tapjoy/internal/k3;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/k3;->b:Landroid/content/Context;

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/tapjoy/internal/i6;-><init>(Lcom/tapjoy/internal/v1;Ljava/lang/String;Lcom/tapjoy/internal/t3;Landroid/content/Context;)V

    invoke-direct {p1, v0, v3}, Lcom/tapjoy/internal/z2;-><init>(Lcom/tapjoy/internal/x0;Ljava/util/LinkedList;)V

    goto :goto_a4

    :cond_87
    if-eqz v2, :cond_9a

    new-instance p1, Lcom/tapjoy/internal/z2;

    new-instance v0, Lcom/tapjoy/internal/p8;

    iget-object v1, p0, Lcom/tapjoy/internal/k3;->a:Lcom/tapjoy/internal/v1;

    iget-object v4, p0, Lcom/tapjoy/internal/k3;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/k3;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/tapjoy/internal/p8;-><init>(Lcom/tapjoy/internal/v1;Ljava/lang/String;Lcom/tapjoy/internal/t5;Landroid/content/Context;)V

    invoke-direct {p1, v0, v3}, Lcom/tapjoy/internal/z2;-><init>(Lcom/tapjoy/internal/x0;Ljava/util/LinkedList;)V

    goto :goto_a4

    :cond_9a
    new-instance p1, Lcom/tapjoy/internal/z2;

    new-instance v0, Lcom/tapjoy/internal/p7;

    invoke-direct {v0}, Lcom/tapjoy/internal/p7;-><init>()V

    invoke-direct {p1, v0, v3}, Lcom/tapjoy/internal/z2;-><init>(Lcom/tapjoy/internal/x0;Ljava/util/LinkedList;)V

    :goto_a4
    return-object p1
.end method
