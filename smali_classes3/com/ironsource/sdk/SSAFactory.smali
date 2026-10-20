###### Class com.json.sdk.SSAFactory (com.ironsource.sdk.SSAFactory)
.class public Lcom/ironsource/sdk/SSAFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPublisherInstance(Landroid/app/Activity;)Lcom/ironsource/ib;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/ironsource/u7;->b(Landroid/content/Context;)Lcom/ironsource/u7;

    move-result-object p0

    return-object p0
.end method

.method public static getPublisherTestInstance(Landroid/app/Activity;I)Lcom/ironsource/ib;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/ironsource/u7;->a(Landroid/content/Context;I)Lcom/ironsource/u7;

    move-result-object p0

    return-object p0
.end method
