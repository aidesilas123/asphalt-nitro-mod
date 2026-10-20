###### Class com.json.adapters.fyber.FyberAdapter.AnonymousClass1.C03311 (com.ironsource.adapters.fyber.FyberAdapter$1$1)
.class Lcom/ironsource/adapters/fyber/FyberAdapter$1$1;
.super Ljava/lang/Object;
.source "FyberAdapter.java"

# interfaces
.implements Lcom/fyber/inneractive/sdk/external/OnFyberMarketplaceInitializedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/fyber/FyberAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/adapters/fyber/FyberAdapter$1;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/fyber/FyberAdapter$1;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$1$1;->this$1:Lcom/ironsource/adapters/fyber/FyberAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFyberMarketplaceInitialized(Lcom/fyber/inneractive/sdk/external/OnFyberMarketplaceInitializedListener$FyberInitStatus;)V
    .registers 3

    sget-object v0, Lcom/fyber/inneractive/sdk/external/OnFyberMarketplaceInitializedListener$FyberInitStatus;->SUCCESSFULLY:Lcom/fyber/inneractive/sdk/external/OnFyberMarketplaceInitializedListener$FyberInitStatus;

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$1$1;->this$1:Lcom/ironsource/adapters/fyber/FyberAdapter$1;

    iget-object p1, p1, Lcom/ironsource/adapters/fyber/FyberAdapter$1;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/fyber/FyberAdapter;->access$600(Lcom/ironsource/adapters/fyber/FyberAdapter;)V

    goto :goto_13

    :cond_c
    iget-object p1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$1$1;->this$1:Lcom/ironsource/adapters/fyber/FyberAdapter$1;

    iget-object p1, p1, Lcom/ironsource/adapters/fyber/FyberAdapter$1;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/fyber/FyberAdapter;->access$700(Lcom/ironsource/adapters/fyber/FyberAdapter;)V

    :goto_13
    return-void
.end method
