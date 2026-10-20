###### Class com.json.z3 (com.ironsource.z3)
.class public final synthetic Lcom/ironsource/z3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/kc;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/kc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/z3;->a:Lcom/ironsource/kc;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/z3;->a:Lcom/ironsource/kc;

    invoke-static {v0}, Lcom/ironsource/kc;->g(Lcom/ironsource/kc;)V

    return-void
.end method
