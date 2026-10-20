###### Class com.json.mediationsdk.testSuite.b (com.ironsource.mediationsdk.testSuite.b)
.class public final synthetic Lcom/ironsource/mediationsdk/testSuite/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/testSuite/b;->a:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/testSuite/b;->a:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;->g(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;)V

    return-void
.end method
