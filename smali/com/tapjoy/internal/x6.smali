###### Class com.tapjoy.internal.x6 (com.tapjoy.internal.x6)
.class public final Lcom/tapjoy/internal/x6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/x6;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/x6;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/tapjoy/internal/x6;->a:Lcom/tapjoy/TJAdUnit;

    iget-boolean v2, v0, Lcom/tapjoy/TJAdUnit;->n:Z

    if-nez v2, :cond_13

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnit;->n:Z

    :cond_13
    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    iget v0, v0, Lcom/tapjoy/TJAdUnit;->l:I

    invoke-virtual {v1, v0}, Lcom/tapjoy/k;->r(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/x6;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->G:Lcom/tapjoy/internal/i7;

    invoke-virtual {v0}, Lcom/tapjoy/internal/i7;->run()V

    goto :goto_34

    :cond_22
    iget-object v0, p0, Lcom/tapjoy/internal/x6;->a:Lcom/tapjoy/TJAdUnit;

    iget-boolean v2, v0, Lcom/tapjoy/TJAdUnit;->A:Z

    if-nez v2, :cond_32

    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/x6;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_34

    :cond_32
    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnit;->B:Z

    :goto_34
    return-void
.end method
