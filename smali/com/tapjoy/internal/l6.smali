###### Class com.tapjoy.internal.l6 (com.tapjoy.internal.l6)
.class public final Lcom/tapjoy/internal/l6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/l6;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/l6;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->q:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/l6;->a:Lcom/tapjoy/TJAdUnit;

    iget v2, v1, Lcom/tapjoy/TJAdUnit;->r:I

    if-eq v2, v0, :cond_16

    iput v0, v1, Lcom/tapjoy/TJAdUnit;->r:I

    iget-object v0, v1, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    invoke-virtual {v0}, Lcom/tapjoy/k;->s()V

    :cond_16
    return-void
.end method
