###### Class com.ironsource.sdk.controller.t.u.g (com.ironsource.sdk.controller.t$u$g)
.class Lcom/ironsource/sdk/controller/t$u$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$u;->setTouchListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/t$u;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t$u;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$u$g;->a:Lcom/ironsource/sdk/controller/t$u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$g;->a:Lcom/ironsource/sdk/controller/t$u;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    iget-object v1, v0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    new-instance v2, Lcom/ironsource/sdk/controller/t$y;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/ironsource/sdk/controller/t$y;-><init>(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/sdk/controller/t$i;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
