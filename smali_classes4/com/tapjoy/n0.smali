###### Class com.tapjoy.n0 (com.tapjoy.n0)
.class public final Lcom/tapjoy/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tapjoy/k;


# direct methods
.method public constructor <init>(Lcom/tapjoy/k;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/tapjoy/n0;->b:Lcom/tapjoy/k;

    iput-object p2, p0, Lcom/tapjoy/n0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/tapjoy/n0;->b:Lcom/tapjoy/k;

    iget-object v1, v0, Lcom/tapjoy/k;->d:Lcom/tapjoy/y;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/tapjoy/n0;->a:Ljava/lang/String;

    if-eqz v1, :cond_15

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Lcom/tapjoy/k;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Lcom/tapjoy/n0;->b:Lcom/tapjoy/k;

    iget-object v1, v0, Lcom/tapjoy/k;->k:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_29

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/tapjoy/k;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tapjoy/n0;->b:Lcom/tapjoy/k;

    iput-object v4, v0, Lcom/tapjoy/k;->k:Ljava/lang/String;

    :cond_29
    iget-object v0, p0, Lcom/tapjoy/n0;->b:Lcom/tapjoy/k;

    iget-object v0, v0, Lcom/tapjoy/k;->d:Lcom/tapjoy/y;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tapjoy/n0;->b:Lcom/tapjoy/k;

    iget-object v1, v1, Lcom/tapjoy/k;->d:Lcom/tapjoy/y;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tapjoy/n0;->b:Lcom/tapjoy/k;

    iput-object v4, v0, Lcom/tapjoy/k;->d:Lcom/tapjoy/y;

    goto :goto_4c

    :cond_3f
    iget-object v1, p0, Lcom/tapjoy/n0;->a:Ljava/lang/String;

    if-eqz v1, :cond_4c

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/tapjoy/k;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    :goto_4c
    return-void
.end method
