###### Class com.json.l7 (com.ironsource.l7)
.class public final synthetic Lcom/ironsource/l7;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/o9;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/o9;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/l7;->a:Lcom/ironsource/o9;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/l7;->a:Lcom/ironsource/o9;

    invoke-static {v0}, Lcom/ironsource/o9;->h0(Lcom/ironsource/o9;)V

    return-void
.end method
