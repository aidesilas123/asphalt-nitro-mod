###### Class com.ironsource.sdk.controller.h.a (com.ironsource.sdk.controller.h$a)
.class Lcom/ironsource/sdk/controller/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/h;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/h;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/h$a;->a:Lcom/ironsource/sdk/controller/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/h$a;->a:Lcom/ironsource/sdk/controller/h;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/h;->a(Lcom/ironsource/sdk/controller/h;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/ironsource/sdk/controller/h$a;->a:Lcom/ironsource/sdk/controller/h;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    return-void
.end method
