###### Class com.fyber.inneractive.sdk.flow.z.a (com.fyber.inneractive.sdk.flow.z$a)
.class public Lcom/fyber/inneractive/sdk/flow/z$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/flow/z;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/flow/z;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/flow/z;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/z$a;->a:Lcom/fyber/inneractive/sdk/flow/z;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/z$a;->a:Lcom/fyber/inneractive/sdk/flow/z;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/z;->w:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_9
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/z$a;->a:Lcom/fyber/inneractive/sdk/flow/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/flow/z;->e(Z)V

    return-void
.end method

.method public onTick(J)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/z$a;->a:Lcom/fyber/inneractive/sdk/flow/z;

    long-to-int p2, p1

    div-int/lit16 p2, p2, 0x3e8

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    if-eqz p1, :cond_c

    invoke-interface {p1, p2}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->updateCloseCountdown(I)V

    :cond_c
    return-void
.end method
