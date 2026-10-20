###### Class com.ironsource.sdk.controller.t.b (com.ironsource.sdk.controller.t$b)
.class Lcom/ironsource/sdk/controller/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/q6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/t;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$b;->a:Lcom/ironsource/sdk/controller/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$b;->a:Lcom/ironsource/sdk/controller/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/t;->a(I)V

    return-void
.end method
