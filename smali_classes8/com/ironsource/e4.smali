###### Class com.json.e4 (com.ironsource.e4)
.class public final synthetic Lcom/ironsource/e4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/kc$b;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/kc$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/e4;->a:Lcom/ironsource/kc$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/e4;->a:Lcom/ironsource/kc$b;

    invoke-static {v0}, Lcom/ironsource/kc$b;->b(Lcom/ironsource/kc$b;)V

    return-void
.end method
