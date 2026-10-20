###### Class com.tapjoy.internal.i7 (com.tapjoy.internal.i7)
.class public final Lcom/tapjoy/internal/i7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/i7;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/i7;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz v1, :cond_f

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/k;->p(I)V

    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/i7;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->G:Lcom/tapjoy/internal/i7;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
