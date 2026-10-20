###### Class com.json.r1 (com.ironsource.r1)
.class public abstract Lcom/ironsource/r1;
.super Lcom/ironsource/o1;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Smash:",
        "Lcom/ironsource/s1<",
        "*>;>",
        "Lcom/ironsource/o1<",
        "TSmash;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;",
        ">;",
        "Lcom/ironsource/c0;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ironsource/l;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/o1;-><init>(Lcom/ironsource/l;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/s1;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/s1<",
            "*>;",
            "Lcom/ironsource/mediationsdk/model/Placement;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    invoke-virtual {p1}, Lcom/ironsource/t1;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/ironsource/x;->b(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method
