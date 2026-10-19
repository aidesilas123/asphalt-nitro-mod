###### Class com.tapjoy.internal.d9 (com.tapjoy.internal.d9)
.class public final Lcom/tapjoy/internal/d9;
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
    .registers 7

    move-object v0, p1

    check-cast v0, Lcom/tapjoy/internal/k0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/k0;->I(I)V

    const-string v0, ""

    move-object v1, v0

    move-object v2, v1

    :goto_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v3

    const-string v4, "campaign_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->v()Z

    move-result v1

    if-eqz v1, :cond_25

    move-object v1, v0

    goto :goto_b

    :cond_25
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_2a
    const-string v4, "product_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->v()Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object v2, v0

    goto :goto_b

    :cond_3a
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_3f
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_b

    :cond_43
    check-cast p1, Lcom/tapjoy/internal/k0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/k0;->I(I)V

    new-instance p1, Lcom/tapjoy/internal/o9;

    invoke-direct {p1, v1, v2}, Lcom/tapjoy/internal/o9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
