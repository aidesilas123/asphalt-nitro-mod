###### Class com.ironsource.sdk.controller.t.g (com.ironsource.sdk.controller.t$g)
.class Lcom/ironsource/sdk/controller/t$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ironsource/sdk/controller/t;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$g;->b:Lcom/ironsource/sdk/controller/t;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$g;->b:Lcom/ironsource/sdk/controller/t;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$g;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/t;->k0(Lcom/ironsource/sdk/controller/t;Landroid/content/Context;)V

    return-void
.end method
