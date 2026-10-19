###### Class com.json.adapters.pangle.g (com.ironsource.adapters.pangle.g)
.class public final synthetic Lcom/ironsource/adapters/pangle/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/adapters/pangle/PangleAdapter;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/pangle/PangleAdapter;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/pangle/g;->a:Lcom/ironsource/adapters/pangle/PangleAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/pangle/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/pangle/g;->a:Lcom/ironsource/adapters/pangle/PangleAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/pangle/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/pangle/PangleAdapter;->g(Lcom/ironsource/adapters/pangle/PangleAdapter;Ljava/lang/String;)V

    return-void
.end method
