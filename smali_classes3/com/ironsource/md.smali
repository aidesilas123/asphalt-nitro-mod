###### Class com.json.md (com.ironsource.md)
.class public Lcom/ironsource/md;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/md$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/ironsource/uc;

.field private d:Lcom/ironsource/q2;

.field private e:Lcom/ironsource/k3;

.field private f:I

.field private g:Lcom/ironsource/s3;

.field private h:I

.field private i:I

.field private final j:Ljava/lang/String;

.field private k:Lcom/ironsource/md$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/q2;Lcom/ironsource/uc;Lcom/ironsource/k3;ILcom/ironsource/s3;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/ironsource/md;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/md;->h()Lcom/ironsource/md$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/md;->k:Lcom/ironsource/md$a;

    sget-object v1, Lcom/ironsource/md$a;->d:Lcom/ironsource/md$a;

    if-eq v0, v1, :cond_24

    iput-object p1, p0, Lcom/ironsource/md;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/ironsource/md;->d:Lcom/ironsource/q2;

    iput-object p3, p0, Lcom/ironsource/md;->c:Lcom/ironsource/uc;

    iput-object p4, p0, Lcom/ironsource/md;->e:Lcom/ironsource/k3;

    iput p5, p0, Lcom/ironsource/md;->f:I

    iput-object p6, p0, Lcom/ironsource/md;->g:Lcom/ironsource/s3;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ironsource/md;->h:I

    :cond_24
    iput-object p7, p0, Lcom/ironsource/md;->a:Ljava/lang/String;

    return-void
.end method

.method private h()Lcom/ironsource/md$a;
    .registers 4

    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInitRecoverTrials()I

    move-result v0

    iput v0, p0, Lcom/ironsource/md;->i:I

    iget-object v0, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInitialState mMaxAllowedTrials: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ironsource/md;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/ironsource/md;->i:I

    if-gtz v0, :cond_30

    iget-object v0, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    const-string v1, "recovery is not allowed by config"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/md$a;->d:Lcom/ironsource/md$a;

    return-object v0

    :cond_30
    sget-object v0, Lcom/ironsource/md$a;->a:Lcom/ironsource/md$a;

    return-object v0
.end method

.method private k()V
    .registers 3

    iget v0, p0, Lcom/ironsource/md;->h:I

    iget v1, p0, Lcom/ironsource/md;->i:I

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    const-string v1, "handleRecoveringEndedFailed | Reached max trials"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/md$a;->d:Lcom/ironsource/md$a;

    iput-object v0, p0, Lcom/ironsource/md;->k:Lcom/ironsource/md$a;

    invoke-virtual {p0}, Lcom/ironsource/md;->a()V

    goto :goto_19

    :cond_15
    sget-object v0, Lcom/ironsource/md$a;->a:Lcom/ironsource/md$a;

    iput-object v0, p0, Lcom/ironsource/md;->k:Lcom/ironsource/md$a;

    :goto_19
    return-void
.end method

.method private l()V
    .registers 2

    invoke-virtual {p0}, Lcom/ironsource/md;->a()V

    sget-object v0, Lcom/ironsource/md$a;->b:Lcom/ironsource/md$a;

    iput-object v0, p0, Lcom/ironsource/md;->k:Lcom/ironsource/md$a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/md;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/ironsource/md;->d:Lcom/ironsource/q2;

    iput-object v0, p0, Lcom/ironsource/md;->c:Lcom/ironsource/uc;

    iput-object v0, p0, Lcom/ironsource/md;->e:Lcom/ironsource/k3;

    iput-object v0, p0, Lcom/ironsource/md;->g:Lcom/ironsource/s3;

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/md;->k:Lcom/ironsource/md$a;

    sget-object v1, Lcom/ironsource/md$a;->c:Lcom/ironsource/md$a;

    if-eq v0, v1, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/ironsource/md;->l()V

    goto :goto_10

    :cond_d
    invoke-direct {p0}, Lcom/ironsource/md;->k()V

    :goto_10
    return-void
.end method

.method public a(Lcom/ironsource/h6$c;Lcom/ironsource/h6$b;)Z
    .registers 6

    iget-object v0, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    const-string v1, "shouldRecoverWebController: "

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/md;->k:Lcom/ironsource/md$a;

    sget-object v1, Lcom/ironsource/md$a;->d:Lcom/ironsource/md$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    iget-object p1, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: false | recover is not allowed"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_16
    sget-object v1, Lcom/ironsource/h6$c;->b:Lcom/ironsource/h6$c;

    if-eq p1, v1, :cond_31

    iget-object p2, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldRecoverWebController: false | current controller type is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_31
    sget-object p1, Lcom/ironsource/h6$b;->b:Lcom/ironsource/h6$b;

    if-eq p2, p1, :cond_74

    sget-object p1, Lcom/ironsource/h6$b;->a:Lcom/ironsource/h6$b;

    if-ne p2, p1, :cond_3a

    goto :goto_74

    :cond_3a
    sget-object p1, Lcom/ironsource/md$a;->b:Lcom/ironsource/md$a;

    if-ne v0, p1, :cond_46

    iget-object p1, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: false | already recovered"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_46
    sget-object p1, Lcom/ironsource/md$a;->c:Lcom/ironsource/md$a;

    if-ne v0, p1, :cond_52

    iget-object p1, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: false | currently in recovering"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_52
    iget-object p1, p0, Lcom/ironsource/md;->b:Landroid/content/Context;

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/ironsource/md;->d:Lcom/ironsource/q2;

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/ironsource/md;->c:Lcom/ironsource/uc;

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/ironsource/md;->e:Lcom/ironsource/k3;

    if-nez p1, :cond_63

    goto :goto_6c

    :cond_63
    iget-object p1, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: true | allow recovering "

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: false | missing mandatory param"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_74
    :goto_74
    iget-object p1, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: false | a Controller is currently loading"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/md;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/md;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/ironsource/q2;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/md;->d:Lcom/ironsource/q2;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/ironsource/md;->f:I

    return v0
.end method

.method public f()Lcom/ironsource/k3;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/md;->e:Lcom/ironsource/k3;

    return-object v0
.end method

.method public g()Lcom/ironsource/s3;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/md;->g:Lcom/ironsource/s3;

    return-object v0
.end method

.method public i()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "isRecovered"

    invoke-virtual {p0}, Lcom/ironsource/md;->n()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "trialNumber"

    iget v2, p0, Lcom/ironsource/md;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "maxAllowedTrials"

    iget v2, p0, Lcom/ironsource/md;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_21
    return-object v0
.end method

.method public j()Lcom/ironsource/uc;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/md;->c:Lcom/ironsource/uc;

    return-object v0
.end method

.method public m()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/md;->k:Lcom/ironsource/md$a;

    sget-object v1, Lcom/ironsource/md$a;->c:Lcom/ironsource/md$a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public n()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/md;->k:Lcom/ironsource/md$a;

    sget-object v1, Lcom/ironsource/md$a;->b:Lcom/ironsource/md$a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public o()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/md;->k:Lcom/ironsource/md$a;

    sget-object v1, Lcom/ironsource/md$a;->c:Lcom/ironsource/md$a;

    if-eq v0, v1, :cond_26

    iget v0, p0, Lcom/ironsource/md;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/md;->h:I

    iget-object v0, p0, Lcom/ironsource/md;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recoveringStarted - trial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ironsource/md;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/md;->k:Lcom/ironsource/md$a;

    :cond_26
    return-void
.end method
