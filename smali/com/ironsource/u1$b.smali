###### Class com.ironsource.u1.b (com.ironsource.u1$b)
.class Lcom/ironsource/u1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/u1;->a(Lcom/ironsource/a4;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/a4;

.field final synthetic b:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field final synthetic c:Lcom/ironsource/u1;


# direct methods
.method constructor <init>(Lcom/ironsource/u1;Lcom/ironsource/a4;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iput-object p2, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    iput-object p3, p0, Lcom/ironsource/u1$b;->b:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    iget-object v1, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v1}, Lcom/ironsource/u1;->u(Lcom/ironsource/u1;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventSessionId"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/a4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v0}, Lcom/ironsource/u1;->T(Lcom/ironsource/u1;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v2, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v1, v2}, Lcom/ironsource/u1;->O(Lcom/ironsource/a4;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    const-string v2, "connectionType"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/a4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_28
    iget-object v1, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v2, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-static {v1, v0, v2}, Lcom/ironsource/u1;->n(Lcom/ironsource/u1;Ljava/lang/String;Lcom/ironsource/a4;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    iget-object v1, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v1, v0}, Lcom/ironsource/u1;->d(Lcom/ironsource/u1;Lcom/ironsource/a4;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/a4;->a(I)V

    :cond_3d
    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v1}, Lcom/ironsource/a4;->c()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/u1$b;->b:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v0, v1, v2}, Lcom/ironsource/u1;->c(Lcom/ironsource/u1;ILcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    sget-object v1, Lcom/ironsource/u1$e;->b:Lcom/ironsource/u1$e;

    invoke-virtual {v1}, Lcom/ironsource/u1$e;->a()I

    move-result v1

    if-eq v0, v1, :cond_5e

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "adUnit"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/a4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5e
    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    const-string v2, "reason"

    invoke-static {v0, v1, v2}, Lcom/ironsource/u1;->i(Lcom/ironsource/u1;Lcom/ironsource/a4;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    const-string v2, "ext1"

    invoke-static {v0, v1, v2}, Lcom/ironsource/u1;->i(Lcom/ironsource/u1;Lcom/ironsource/a4;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v0}, Lcom/ironsource/u1;->Y(Lcom/ironsource/u1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c8

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v0}, Lcom/ironsource/u1;->Y(Lcom/ironsource/u1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8a
    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v2}, Lcom/ironsource/a4;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "eventId"

    if-eq v2, v3, :cond_8a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "timestamp"

    if-eq v2, v3, :cond_8a

    iget-object v2, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/a4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8a

    :cond_c8
    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-static {v0, v1}, Lcom/ironsource/u1;->w(Lcom/ironsource/u1;Lcom/ironsource/a4;)Z

    move-result v0

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->P(Lcom/ironsource/a4;)Z

    move-result v0

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-static {v0, v1}, Lcom/ironsource/u1;->A(Lcom/ironsource/u1;Lcom/ironsource/a4;)Z

    move-result v0

    if-nez v0, :cond_f9

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->y(Lcom/ironsource/a4;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sessionDepth"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/a4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f9
    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->U(Lcom/ironsource/a4;)Z

    move-result v0

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->K(Lcom/ironsource/a4;)V

    goto :goto_138

    :cond_10b
    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v1}, Lcom/ironsource/a4;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->E(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_138

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->W(Lcom/ironsource/a4;)Z

    move-result v0

    if-eqz v0, :cond_138

    iget-object v0, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    iget-object v1, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-virtual {v0}, Lcom/ironsource/a4;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/u1;->E(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "placement"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/a4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_138
    :goto_138
    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v0}, Lcom/ironsource/u1;->T(Lcom/ironsource/u1;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getFirstSessionTimestamp(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_153

    iget-object v2, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "firstSessionTimestamp"

    invoke-virtual {v2, v1, v0}, Lcom/ironsource/a4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_153
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->EVENT:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v1}, Lcom/ironsource/a4;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v0}, Lcom/ironsource/u1;->z(Lcom/ironsource/u1;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v0}, Lcom/ironsource/u1;->B(Lcom/ironsource/u1;)I

    :cond_16e
    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v0}, Lcom/ironsource/u1;->H(Lcom/ironsource/u1;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/u1;->q(Lcom/ironsource/u1;[I)Z

    move-result v0

    if-eqz v0, :cond_18d

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v1}, Lcom/ironsource/a4;->c()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v2}, Lcom/ironsource/u1;->H(Lcom/ironsource/u1;)[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/u1;->m(Lcom/ironsource/u1;I[I)Z

    move-result v0

    goto :goto_195

    :cond_18d
    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$b;->a:Lcom/ironsource/a4;

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->D(Lcom/ironsource/a4;)Z

    move-result v0

    :goto_195
    iget-object v1, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v1}, Lcom/ironsource/u1;->L(Lcom/ironsource/u1;)Z

    move-result v1

    if-nez v1, :cond_1a5

    if-eqz v0, :cond_1a5

    iget-object v1, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ironsource/u1;->p(Lcom/ironsource/u1;Z)Z

    :cond_1a5
    iget-object v1, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v1}, Lcom/ironsource/u1;->M(Lcom/ironsource/u1;)Lcom/ironsource/a3;

    move-result-object v1

    if-eqz v1, :cond_1ce

    iget-object v1, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v1}, Lcom/ironsource/u1;->Q(Lcom/ironsource/u1;)Z

    move-result v1

    if-eqz v1, :cond_1bb

    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v0}, Lcom/ironsource/u1;->R(Lcom/ironsource/u1;)V

    goto :goto_1ce

    :cond_1bb
    iget-object v1, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v1}, Lcom/ironsource/u1;->z(Lcom/ironsource/u1;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/u1;->o(Lcom/ironsource/u1;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1c9

    if-eqz v0, :cond_1ce

    :cond_1c9
    iget-object v0, p0, Lcom/ironsource/u1$b;->c:Lcom/ironsource/u1;

    invoke-static {v0}, Lcom/ironsource/u1;->h(Lcom/ironsource/u1;)V

    :cond_1ce
    :goto_1ce
    return-void
.end method
