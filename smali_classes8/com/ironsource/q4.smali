###### Class com.json.q4 (com.ironsource.q4)
.class public final synthetic Lcom/ironsource/q4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/a7;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/a7;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/q4;->a:Lcom/ironsource/a7;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/q4;->a:Lcom/ironsource/a7;

    invoke-static {v0}, Lcom/ironsource/kc;->h(Lcom/ironsource/a7;)V

    return-void
.end method
