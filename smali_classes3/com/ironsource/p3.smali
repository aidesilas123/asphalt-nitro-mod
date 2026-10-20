###### Class com.json.p3 (com.ironsource.p3)
.class public final synthetic Lcom/ironsource/p3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/kc;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/kc;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/kc;

    iput-object p2, p0, Lcom/ironsource/p3;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/kc;

    iget-object v1, p0, Lcom/ironsource/p3;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/kc;->f(Lcom/ironsource/kc;Ljava/lang/String;)V

    return-void
.end method
