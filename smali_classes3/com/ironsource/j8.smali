###### Class com.json.j8 (com.ironsource.j8)
.class public final synthetic Lcom/ironsource/j8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/xb;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/xb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/j8;->a:Lcom/ironsource/xb;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j8;->a:Lcom/ironsource/xb;

    invoke-static {v0}, Lcom/ironsource/xb;->h(Lcom/ironsource/xb;)V

    return-void
.end method
