###### Class com.json.ia (com.ironsource.ia)
.class public final synthetic Lcom/ironsource/ia;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/xb;

.field public final synthetic b:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/xb;Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ia;->a:Lcom/ironsource/xb;

    iput-object p2, p0, Lcom/ironsource/ia;->b:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/ia;->a:Lcom/ironsource/xb;

    iget-object v1, p0, Lcom/ironsource/ia;->b:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    invoke-static {v0, v1}, Lcom/ironsource/xb;->i(Lcom/ironsource/xb;Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;)V

    return-void
.end method
