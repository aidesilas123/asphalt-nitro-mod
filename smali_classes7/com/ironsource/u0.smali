###### Class com.json.u0 (com.ironsource.u0)
.class public final synthetic Lcom/ironsource/u0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ironsource/sdk/controller/k$a;


# instance fields
.field public final synthetic a:Lcom/ironsource/i9;

.field public final synthetic b:Lcom/ironsource/u6;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/i9;Lcom/ironsource/u6;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/u0;->a:Lcom/ironsource/i9;

    iput-object p2, p0, Lcom/ironsource/u0;->b:Lcom/ironsource/u6;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/sdk/controller/f$a;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/u0;->a:Lcom/ironsource/i9;

    iget-object v1, p0, Lcom/ironsource/u0;->b:Lcom/ironsource/u6;

    invoke-static {v0, v1, p1}, Lcom/ironsource/i9;->q(Lcom/ironsource/i9;Lcom/ironsource/u6;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method
