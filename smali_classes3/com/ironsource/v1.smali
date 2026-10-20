###### Class com.json.v1 (com.ironsource.v1)
.class public Lcom/ironsource/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;-><init>()V

    iput-object v0, p0, Lcom/ironsource/v1;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    return-void
.end method


# virtual methods
.method protected a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    iget-object p1, p0, Lcom/ironsource/v1;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    :goto_5
    return-object p1
.end method
